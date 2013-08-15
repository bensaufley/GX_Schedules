require "spec_helper"

describe GxClassSetsController do
  describe "routing" do

    it "routes to #index" do
      get("/gx_class_sets").should route_to("gx_class_sets#index")
    end

    it "routes to #new" do
      get("/gx_class_sets/new").should route_to("gx_class_sets#new")
    end

    it "routes to #show" do
      get("/gx_class_sets/1").should route_to("gx_class_sets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gx_class_sets/1/edit").should route_to("gx_class_sets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gx_class_sets").should route_to("gx_class_sets#create")
    end

    it "routes to #update" do
      put("/gx_class_sets/1").should route_to("gx_class_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gx_class_sets/1").should route_to("gx_class_sets#destroy", :id => "1")
    end

  end
end
