require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App")
    end
  end
  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About page" do
    it "should have h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    it "should have title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  #describe "GET /static_pages" do
  # it "works! (now write some real specs)" do
  #    visit static_pages_index_path
  #    response.status.should be(200)
  # end
  #end
end
