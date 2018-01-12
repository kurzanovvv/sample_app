require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages" do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }
    describe "Home page" do

      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
        expect(page).to have_title("#{base_title} | Home")
      end
    end
  
    describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
        expect(page).to have_title("#{base_title} | Help")
      end
    end

    describe "Contacts" do
 
      it "should have the content 'Contact'" do
        visit '/static_pages/contact'
        expect(page).to have_content('Contact')
        expect(page).to have_title("#{base_title} | Contact")
      end
    end


   describe "About page" do
 
      it "should have the content 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_content('About Us')
        expect(page).to have_title("#{base_title} | About Us")
      end
    end


#    it "works! (now write some real specs)" do
#      get static_pages_index_path
#     expect(response).to have_http_status(200)
#   end
  end
end
