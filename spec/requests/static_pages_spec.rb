require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

  	it "should have the content 'Brevity Box'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('Brevity Box')
    end
  end
end
