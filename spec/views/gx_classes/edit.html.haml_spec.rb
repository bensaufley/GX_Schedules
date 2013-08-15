require 'spec_helper'

describe "gx_classes/edit" do
  before(:each) do
    @gx_class = assign(:gx_class, stub_model(GxClass))
  end

  it "renders the edit gx_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gx_class_path(@gx_class), "post" do
    end
  end
end
