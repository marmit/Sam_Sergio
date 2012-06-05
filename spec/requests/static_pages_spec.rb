require 'spec_helper'

describe "StaticPages" do

  let(:base_title){ "Sam and Sergio Getting Married" }
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector 'h1', text: full_title('') }
    it { should have_selector 'title',
                        text: full_title('') }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before {visit help_path}

    it { should have_selector 'h1', text: 'Help' }
    it { should have_selector 'title',
                        text: full_title("Help") }
  end

  describe "Contact Us page" do
    before {visit contact_path}

    it { should have_selector 'h1', text: 'Contact Us' }
    it { should have_selector 'title',
                        text: full_title("Contact Us") }
  end

  describe "About Us page" do
    before {visit about_path}

    it { should have_selector 'h1', text: 'About Us'}
    it { should have_selector 'title',
                        text: full_title("About Us") }
  end
end
