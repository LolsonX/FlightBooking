require "rails_helper"

RSpec.describe AirConnectionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/air_connections").to route_to("air_connections#index")
    end

    it "routes to #new" do
      expect(get: "/air_connections/new").to route_to("air_connections#new")
    end

    it "routes to #show" do
      expect(get: "/air_connections/1").to route_to("air_connections#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/air_connections/1/edit").to route_to("air_connections#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/air_connections").to route_to("air_connections#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/air_connections/1").to route_to("air_connections#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/air_connections/1").to route_to("air_connections#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/air_connections/1").to route_to("air_connections#destroy", id: "1")
    end
  end
end
