require 'rails_helper'

describe 'home page', type: :feature do
  it 'contains cronut acceptance widget' do
    visit '/'
    expect(page).to have_content 'By selecting this checkbox, you agree that cronuts are better than donuts '
  end

  it 'pass cronuts_url url params to cronut acceptance widget' do
    visit '/?cronuts_url=https://google.com'
    expect(page.find('a#cronuts_url')[:href]).to eq('https://google.com')
  end

  it 'pass cronuts_url url params to cronut acceptance widget' do
    visit '/?donuts_url=https://yahoo.com'
    expect(page.find('a#donuts_url')[:href]).to eq('https://yahoo.com')
  end
end