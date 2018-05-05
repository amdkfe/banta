require 'rails_helper'

RSpec.describe User, type: :model do

  context 'create new user' do
    scenario "should be succesful1" do 
      visit '/register'
      within('form') do 
        fill_in 'user_username', with: 'mike'
        fill_in 'user_email', with: 'example@example.com'
        fill_in 'user_location', with: 'london'
        fill_in 'user_password', with: '123456'
      end
      click_button 'Sign up'
      expect page.has_text?('mike\'s profile')
    end
  end

  before(:all) do
      @user = User.create(username: 'mike', email: 'example@example.com', location: 'london', password: '123456' )
      
      # visit '/register'
      # within('form') do 
      #   fill_in 'user_username', with: user.username
      #   fill_in 'user_email', with: user.email
      #   fill_in 'user_location', with: user.location
      #   fill_in 'user_password', with: user.password
      # end
      # click_button 'Sign up'
end
 scenario "should be succesful2" do 

      visit '/edit'
      within('form') do 
        fill_in 'user_email', with: 'michel@m' 
        fill_in 'user_password', with: @user.email
        # fill_in 'user_current_password', with: '123456',visible: false
      end

      click_button "Update"
      # page.find("Update").click
      # find(:label, for: 'Update').click
      expect page.has_text?('michel\'s profile')
    end
  end

  # context 'destroy user' do
  # end

