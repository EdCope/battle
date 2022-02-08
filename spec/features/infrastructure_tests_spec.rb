require './app.rb'

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

describe "the landing page", type: :feature do
  it "returns a string" do
    visit '/'
    expect(page).to have_content 'Hello BATTLE!'
  end
end

describe "/names", type: :feature do

  it 'allows players to enter their names' do
    visit '/'
    #fill_in "name", with: "Ed"
    expect(page).to have_field("player1")
    expect(page).to have_field("player2")
    expect(page).to have_selector(:link_or_button, "fight")
  end

  xit 'allows a player to see their name once entered' do
    visit '/'
    fill_in "player1", with: "Ed"
    fill_in "player2", with: "Eddie"
    click_button "submit"
    #expect(page).to have_
  end

end



