require './app.rb'

describe "the landing page", type: :feature do
  it "returns a string" do
    visit '/'
    expect(page).to have_content 'Hello BATTLE!'
  end
end