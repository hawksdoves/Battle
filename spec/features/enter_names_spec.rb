require 'spec_helper'
Rspec.feature "Battle", :type => :feature do
  scenario 'user can add two players' do
    visit('/')

    fill_in 'Name1', :with => "Bob"
    fill_in 'Name2', :with => 'Bobina'
    click_button "Submit"

    expect(page).to have_content('Battle: Bob VS Bobina')
  end
end
