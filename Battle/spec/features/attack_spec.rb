feature 'Attack Player', :type => :feature do
  scenario 'deals blow' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_text("You have attacked Tina")
    # expect{@warrior_1.attack(@warrior_2)}.to change{@warrior_2.hp}.by -10
  end
end