require 'spec_helper'

describe "gx_class_sets/index" do
  before(:each) do
    assign(:gx_class_sets, [
      stub_model(GxClassSet),
      stub_model(GxClassSet)
    ])
  end

  it "renders a list of gx_class_sets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
