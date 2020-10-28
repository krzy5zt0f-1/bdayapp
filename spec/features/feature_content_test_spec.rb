require '/Users/krzysztofkasprzak/Projects/bdayapp/bdayapp.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing elements' do
  scenario 'can display correct contents' do
    visit('/')
    expect(page).to  have_content('Hello there!')
    expect(page).to  have_content("What's your name?")
    expect(page).to  have_content("When were your born?")
  end
end
