require "rails_helper"

RSpec.describe LocalFilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/local_files").to route_to("local_files#index")
    end

    it "routes to #new" do
      expect(:get => "/local_files/new").to route_to("local_files#new")
    end

    it "routes to #show" do
      expect(:get => "/local_files/1").to route_to("local_files#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/local_files/1/edit").to route_to("local_files#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/local_files").to route_to("local_files#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/local_files/1").to route_to("local_files#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/local_files/1").to route_to("local_files#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/local_files/1").to route_to("local_files#destroy", :id => "1")
    end
  end
end
