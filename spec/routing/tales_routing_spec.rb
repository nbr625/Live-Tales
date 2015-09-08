require "rails_helper"

RSpec.describe TalesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tales").to route_to("tales#index")
    end

    it "routes to #new" do
      expect(:get => "/tales/new").to route_to("tales#new")
    end

    it "routes to #show" do
      expect(:get => "/tales/1").to route_to("tales#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tales/1/edit").to route_to("tales#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tales").to route_to("tales#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tales/1").to route_to("tales#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tales/1").to route_to("tales#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tales/1").to route_to("tales#destroy", :id => "1")
    end

  end
end
