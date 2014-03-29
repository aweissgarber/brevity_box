require 'spec_helper'

describe "boxes/show" do
  before(:each) do
    @box = assign(:box, stub_model(Box,
      :link => "Link",
      :caption => "Caption",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    rendered.should match(/Caption/)
    rendered.should match(/1/)
  end
end
