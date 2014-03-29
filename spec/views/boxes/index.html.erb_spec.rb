require 'spec_helper'

describe "boxes/index" do
  before(:each) do
    assign(:boxes, [
      stub_model(Box,
        :link => "Link",
        :caption => "Caption",
        :user_id => 1
      ),
      stub_model(Box,
        :link => "Link",
        :caption => "Caption",
        :user_id => 1
      )
    ])
  end

  it "renders a list of boxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
