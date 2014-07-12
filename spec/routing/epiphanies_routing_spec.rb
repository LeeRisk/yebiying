require "rails_helper"

RSpec.describe EpiphaniesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/epiphanies").to route_to("epiphanies#index")
    end

    it "routes to #new" do
      expect(:get => "/epiphanies/new").to route_to("epiphanies#new")
    end

    it "routes to #show" do
      expect(:get => "/epiphanies/1").to route_to("epiphanies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/epiphanies/1/edit").to route_to("epiphanies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/epiphanies").to route_to("epiphanies#create")
    end

    it "routes to #update" do
      expect(:put => "/epiphanies/1").to route_to("epiphanies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/epiphanies/1").to route_to("epiphanies#destroy", :id => "1")
    end

  end
end
