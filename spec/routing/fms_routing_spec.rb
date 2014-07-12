require "rails_helper"

RSpec.describe FmsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fms").to route_to("fms#index")
    end

    it "routes to #new" do
      expect(:get => "/fms/new").to route_to("fms#new")
    end

    it "routes to #show" do
      expect(:get => "/fms/1").to route_to("fms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fms/1/edit").to route_to("fms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fms").to route_to("fms#create")
    end

    it "routes to #update" do
      expect(:put => "/fms/1").to route_to("fms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fms/1").to route_to("fms#destroy", :id => "1")
    end

  end
end
