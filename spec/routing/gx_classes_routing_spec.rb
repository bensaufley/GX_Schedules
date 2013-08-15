require "spec_helper"

describe GxClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/gx_classes").should route_to("gx_classes#index")
    end

    it "routes to #new" do
      get("/gx_classes/new").should route_to("gx_classes#new")
    end

    it "routes to #show" do
      get("/gx_classes/1").should route_to("gx_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gx_classes/1/edit").should route_to("gx_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gx_classes").should route_to("gx_classes#create")
    end

    it "routes to #update" do
      put("/gx_classes/1").should route_to("gx_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gx_classes/1").should route_to("gx_classes#destroy", :id => "1")
    end

  end
end
