require 'rails_helper'

describe 'home page', type: :feature do
  it 'contains cronut acceptance widget' do
    visit '/'
    expect(page).to have_content 'By selecting this checkbox, you agree that cronuts are better than donuts '
  end
end