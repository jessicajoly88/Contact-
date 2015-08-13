require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('contacts organizer path', {:type => :feature}) do
  it('processes the user entry and adds it to the contacts list') do
    visit('/')
    fill_in('first_name', :with => 'Luigi')
    fill_in('last_name', :with => 'Bro')
    fill_in('job_title', :with => 'plumber')
    fill_in('company', :with => 'Super Marios Bros.')
    click_button('Add')
    expect(page).to have_content("Success!")
  end
end
