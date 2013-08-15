require 'spec_helper'

describe "gx_classes/new" do
  before(:each) do
    assign(:gx_class, stub_model(GxClass).as_new_record)
  end

  it "renders new gx_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gx_classes_path, "post" do
    end
  end
end
