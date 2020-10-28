require '/Users/krzysztofkasprzak/Projects/bdayapp/bdayapp.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing infrastructure' do
  scenario 'can run app and check the page content' do
    visit('/test')
    expect(page).to  have_content('Testing infrastructure working')
  end
end
