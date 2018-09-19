require './app'

feature 'Entering the player names' do
  scenario 'Enter and verify both players names' do
    visit('/')
    fill_in(:player_1, with: 'Jon')
    fill_in(:player_2, with: 'Daniel')
    click_button('Submit')
    expect(page).to have_content('Jon vs. Daniel')
  end
end