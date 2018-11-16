require "rails_helper"

RSpec.describe LocalDirectoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/local_directories").to route_to("local_directories#index")
    end

    it "routes to #new" do
      expect(:get => "/local_directories/new").to route_to("local_directories#new")
    end

    it "routes to #show" do
      expect(:get => "/local_directories/1").to route_to("local_directories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/local_directories/1/edit").to route_to("local_directories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/local_directories").to route_to("local_directories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/local_directories/1").to route_to("local_directories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/local_directories/1").to route_to("local_directories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/local_directories/1").to route_to("local_directories#destroy", :id => "1")
    end
  end
end
