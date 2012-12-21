require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
    it "should have title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Contact Us")
    end
  end
  #describe "GET /static_pages" do
  # it "works! (now write some real specs)" do
  #    visit static_pages_index_path
  #    response.status.should be(200)
  # end
  #end
end
