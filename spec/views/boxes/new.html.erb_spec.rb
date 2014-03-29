require 'spec_helper'

describe "boxes/new" do
  before(:each) do
    assign(:box, stub_model(Box,
      :link => "MyString",
      :caption => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boxes_path, "post" do
      assert_select "input#box_link[name=?]", "box[link]"
      assert_select "input#box_caption[name=?]", "box[caption]"
      assert_select "input#box_user_id[name=?]", "box[user_id]"
    end
  end
end
