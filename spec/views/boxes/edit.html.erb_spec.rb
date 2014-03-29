require 'spec_helper'

describe "boxes/edit" do
  before(:each) do
    @box = assign(:box, stub_model(Box,
      :link => "MyString",
      :caption => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", box_path(@box), "post" do
      assert_select "input#box_link[name=?]", "box[link]"
      assert_select "input#box_caption[name=?]", "box[caption]"
      assert_select "input#box_user_id[name=?]", "box[user_id]"
    end
  end
end
