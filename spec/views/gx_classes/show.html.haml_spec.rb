require 'spec_helper'

describe "gx_classes/show" do
  before(:each) do
    @gx_class = assign(:gx_class, stub_model(GxClass))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
