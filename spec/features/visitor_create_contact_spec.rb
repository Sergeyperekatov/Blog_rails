require "spec_helper"

feature "Contact Creation" do

  scenario "allows access to contacts page" do
    visit '/contacts'

    expect(page).to have_content   I18n.t ('contacts.contact_us')
  end

scenario "allows a guest to create contact"
    visit '/contacts'
    fill_in :contact_email, :with => 'user@example.ru'
    fill_in :contact_message, :with => 'something'
   
    click_button 'send message'

    expect(page).to have_content 'Thanks!'
  end
end