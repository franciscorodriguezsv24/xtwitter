require "rails_helper"

RSpec.describe "routes for users", type: :routing do

    it "routes tweet to the user controller" do
        expect(get("/users/:id/tweets")).
          to route_to("users#tweets")
    end

    it "routes tweet and replies to the user controller" do 
        expect(get("/users/:id/tweets_and_replies"))
        to route_to("users#tweets_and_replies")
    end 
end 