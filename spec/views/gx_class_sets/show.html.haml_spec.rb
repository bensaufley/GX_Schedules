require 'spec_helper'

describe "gx_class_sets/show" do
  before(:each) do
    @gx_class_set = assign(:gx_class_set, stub_model(GxClassSet))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
