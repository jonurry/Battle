require './app'

feature 'Entering the player names' do
  scenario 'Enter and verify both players names' do
    sign_in_and_play
    expect(page).to have_content('Jon vs. Ayo')
  end
end

feature 'Hit points' do
  scenario "View player 2's hit points" do
    visit('/play')
    expect(page).to have_content('Player 2 Hit Count: 100')
  end
end
