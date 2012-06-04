require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the h1 'Sam and Sergio getting married'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sam and Sergio getting married')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Sam and Sergio getting married | Home")
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
                        :text => "Sam and Sergio getting married | Help")
    end
  end

  describe "Contact Us page" do
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "Sam and Sergio getting married | Contact Us")
    end
  end

  describe "About Us page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Sam and Sergio getting married | About Us")
    end
  end
end
