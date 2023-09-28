require "rails_helper"

RSpec.describe "routes for tweets", type: :routing do
 
    it "routes stats to the tweets controller" do
    expect(get("/tweets/:id/stats")).
      to route_to("tweets#stats")
    end

    it "route like to the tweets controller" do 
        expect(post("/tweets/:id/like")). 
        to route_to("tweets#liked")
    end 

    it "route dislike to the tweets controller" do 
        expect(delete("/tweets/:id/dislike")).
        to route_to("tweets#disliked")
    end

    it "route retweet to the tweets controller" do 
        expect(post("/tweets/:id/retweet")).
        to route_to("tweets#retweet")
    end

    it "route quote to tweets controller" do 
        expect(post("/tweets/:id/quote")).
        to route_to("tweets#create_quote_tweet")
    end 

    it "route reply to tweets controller" do 
        expect(post("/tweets/:id/reply")).
        to route_to("tweets#create_reply")
    end 

    it "route tweet to tweets controller" do 
        expect(post("/tweets")).
        to route_to("tweets#create")
    end

    it "route new_tweet to tweets controller" do 
        expect(get("/tweets/new")).
        to route_to("tweets#new")
    end

    it "route tweet to tweets controller" do 
        expect(patch("/tweets/:id")).
        to route_to("tweets#update")
    end

    it "route to tweets controller with put" do 
        expect(put("/tweets/:id")).
        to route_to("tweets#update")
    end


end


