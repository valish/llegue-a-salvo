require "spec_helper"

describe ReportedDangersController do
  describe "routing" do

    it "routes to #index" do
      get("/reported_dangers").should route_to("reported_dangers#index")
    end

    it "routes to #new" do
      get("/reported_dangers/new").should route_to("reported_dangers#new")
    end

    it "routes to #show" do
      get("/reported_dangers/1").should route_to("reported_dangers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reported_dangers/1/edit").should route_to("reported_dangers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reported_dangers").should route_to("reported_dangers#create")
    end

    it "routes to #update" do
      put("/reported_dangers/1").should route_to("reported_dangers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reported_dangers/1").should route_to("reported_dangers#destroy", :id => "1")
    end

  end
end
