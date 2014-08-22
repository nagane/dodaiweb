require "rails_helper"

RSpec.describe DodesusController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dodesus").to route_to("dodesus#index")
    end

    it "routes to #new" do
      expect(:get => "/dodesus/new").to route_to("dodesus#new")
    end

    it "routes to #show" do
      expect(:get => "/dodesus/1").to route_to("dodesus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dodesus/1/edit").to route_to("dodesus#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dodesus").to route_to("dodesus#create")
    end

    it "routes to #update" do
      expect(:put => "/dodesus/1").to route_to("dodesus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dodesus/1").to route_to("dodesus#destroy", :id => "1")
    end

  end
end
