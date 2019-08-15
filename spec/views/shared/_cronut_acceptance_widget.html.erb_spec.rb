require 'rails_helper'

describe 'shared/_cronut_acceptance_widget.html.erb' do
  DEFAULT_CRONUTS_URL = /<a id="cronuts_url" href="https:\/\/upload.wikimedia.org\/wikipedia\/commons\/8\/8b\/April_2016_Cronut%C2%AE_2_Burnt_Vanilla_Caramel_-_photo_by_Dominique_Ansel_Bakery.jpg" target="_blank">cronuts<\/a>/
  DEFAULT_DONUTS_URL = /<a id="donuts_url" href="https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/a\/a5\/Glazed-Donut.jpg\/250px-Glazed-Donut.jpg" target="_blank">donuts<\/a>/

  it 'renders header' do
    render partial: 'shared/cronut_acceptance_widget'
    expect(rendered).to match /<h2>Cronut acceptance widget<\/h2>/
  end

  it 'renders default urls if cronuts_url and donuts_url not passed' do
    render partial: 'shared/cronut_acceptance_widget'
    expect(rendered).to match DEFAULT_CRONUTS_URL
    expect(rendered).to match DEFAULT_DONUTS_URL
  end

  it 'renders cronuts_url if passed instead of a default' do
    cronuts_url = /<a id="cronuts_url" href="https:\/\/google.com" target="_blank">cronuts<\/a>/
    render partial: 'shared/cronut_acceptance_widget', locals: { cronuts_url: 'https://google.com' }
    expect(rendered).to_not match DEFAULT_CRONUTS_URL
    expect(rendered).to match DEFAULT_DONUTS_URL
    expect(rendered).to match cronuts_url
  end

  it 'renders default cronuts_url if cronuts_url passed but it is nil' do
    render partial: 'shared/cronut_acceptance_widget', locals: { cronuts_url: nil }
    expect(rendered).to match DEFAULT_CRONUTS_URL
  end

  it 'renders donuts_url if passed instead of a default' do
    donuts_url = /<a id="donuts_url" href="https:\/\/yahoo.com" target="_blank">donuts<\/a>/
    render partial: 'shared/cronut_acceptance_widget', locals: { donuts_url: 'https://yahoo.com' }
    expect(rendered).to match DEFAULT_CRONUTS_URL
    expect(rendered).to_not match DEFAULT_DONUTS_URL
    expect(rendered).to match donuts_url
  end

  it 'renders default donuts_url if donuts_url passed but it is nil' do
    render partial: 'shared/cronut_acceptance_widget', locals: { donuts_url: nil }
    expect(rendered).to match DEFAULT_DONUTS_URL
  end
end