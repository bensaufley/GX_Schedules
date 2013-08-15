require 'spec_helper'

describe "gx_class_sets/new" do
  before(:each) do
    assign(:gx_class_set, stub_model(GxClassSet).as_new_record)
  end

  it "renders new gx_class_set form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gx_class_sets_path, "post" do
    end
  end
end
