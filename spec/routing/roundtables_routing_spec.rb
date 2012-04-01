require "spec_helper"

describe RoundtablesController do
  describe "routing" do

    it "routes to #index" do
      get("/roundtables").should route_to("roundtables#index")
    end

    it "routes to #new" do
      get("/roundtables/new").should route_to("roundtables#new")
    end

    it "routes to #show" do
      get("/roundtables/1").should route_to("roundtables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/roundtables/1/edit").should route_to("roundtables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/roundtables").should route_to("roundtables#create")
    end

    it "routes to #update" do
      put("/roundtables/1").should route_to("roundtables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/roundtables/1").should route_to("roundtables#destroy", :id => "1")
    end

  end
end
