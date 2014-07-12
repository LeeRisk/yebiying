require "rails_helper"

RSpec.describe ThanksgivingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/thanksgivings").to route_to("thanksgivings#index")
    end

    it "routes to #new" do
      expect(:get => "/thanksgivings/new").to route_to("thanksgivings#new")
    end

    it "routes to #show" do
      expect(:get => "/thanksgivings/1").to route_to("thanksgivings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/thanksgivings/1/edit").to route_to("thanksgivings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/thanksgivings").to route_to("thanksgivings#create")
    end

    it "routes to #update" do
      expect(:put => "/thanksgivings/1").to route_to("thanksgivings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/thanksgivings/1").to route_to("thanksgivings#destroy", :id => "1")
    end

  end
end
