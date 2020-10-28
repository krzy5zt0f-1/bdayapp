require '/Users/krzysztofkasprzak/Projects/bdayapp/bdayapp.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing the results' do
  scenario 'can display happy birthday if someone has birthday' do
    visit('/')
    fill_in('name', with: 'John')
    fill_in "day", with: "#{DateTime.now.strftime("%Y-%m-%d")}"
    click_button('Go!')
    expect(page).to  have_content('Happy Birthday John')
  end
  scenario 'can inform user of how many days there is until their birthday' do
    visit('/')
    fill_in('name', with: 'John')
    fill_in "day", with: "#{(DateTime.now + 1).strftime("%Y-%m-%d")}"
    click_button('Go!')
    expect(page).to  have_content('Your birthday will be be in 1 day, John.')
  end
  scenario 'can inform user of how many days there is until their birthday' do
    visit('/')
    fill_in('name', with: 'John')
    fill_in "day", with: "#{(DateTime.now + 2).strftime("%Y-%m-%d")}"
    click_button('Go!')
    expect(page).to  have_content('Your birthday will be be in 2 days, John.')
  end
end
