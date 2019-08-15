require 'rails_helper'

describe 'shared/_cronut_acceptance_widget.html.erb' do
  it 'renders header' do
    render partial: "shared/cronut_acceptance_widget"
    expect(rendered).to match /<h2>Cronut acceptance widget<\/h2>/
  end
end