require "rails_helper"

RSpec.describe DamesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dames").to route_to("dames#index")
    end

    it "routes to #new" do
      expect(:get => "/dames/new").to route_to("dames#new")
    end

    it "routes to #show" do
      expect(:get => "/dames/1").to route_to("dames#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dames/1/edit").to route_to("dames#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dames").to route_to("dames#create")
    end

    it "routes to #update" do
      expect(:put => "/dames/1").to route_to("dames#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dames/1").to route_to("dames#destroy", :id => "1")
    end

  end
end
