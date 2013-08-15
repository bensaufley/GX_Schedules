require 'spec_helper'

describe "gx_class_sets/edit" do
  before(:each) do
    @gx_class_set = assign(:gx_class_set, stub_model(GxClassSet))
  end

  it "renders the edit gx_class_set form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gx_class_set_path(@gx_class_set), "post" do
    end
  end
end
