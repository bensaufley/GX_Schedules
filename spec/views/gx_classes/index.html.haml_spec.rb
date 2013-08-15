require 'spec_helper'

describe "gx_classes/index" do
  before(:each) do
    assign(:gx_classes, [
      stub_model(GxClass),
      stub_model(GxClass)
    ])
  end

  it "renders a list of gx_classes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
