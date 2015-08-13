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

describe('contact path', {:type => :feature}) do
  it('processes user entry and adds it to the contact') do
    visit('/contact/:id')
    fill_in('street_address', :with => '123 Test St.')
    fill_in('city', :with => 'Portland')
    fill_in('state', :with => 'OR')
    fill_in('zip', :with => '97204')
    fill_in('mail_type', :with => 'Work')
    fill_in('area_code', :with => '(503)')
    fill_in('number', :with => '555-1452')
    fill_in('phone_type', :with => 'Work')
    fill_in('email', :with => 'testadd@gmail.com')
    fill_in('email_type', :with => 'Work'
    click_button('Add')
    expect(page).to have_content("Success!")
  end
end
