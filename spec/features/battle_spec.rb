require './app'

feature 'Entering the player names' do
  scenario 'Enter and verify both players names' do
    sign_in_and_play
    expect(page).to have_content('Jon vs. Ayo')
  end
end

feature 'Hit points' do
  scenario "View player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content('Player 2 Hit Count: 100')
  end
end

feature 'Attack' do
  scenario "Attacking player two" do
    sign_in_and_play
    click_button 'AttackP2'
    expect(page).to have_content ('Player 2 Hit Count: 90')
  end
end
