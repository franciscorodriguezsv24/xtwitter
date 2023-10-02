# require 'rails_helper'

# RSpec.describe "users", type: :request do
#     describe "Get /stats" do
#         it "returns http success" do
#         get stats_tweet_path(:tweet)

#         expect(response.status).to eq(200)
#         expect(response).to match_response1_schema("tweet")
#         end  
#     end

    
#     describe "Post /like" do
#         it "returns http success" do
#         post like_tweet_path(:like)

#         expect(response.status).to eq(200)
#         expect(response).to match_response_schema("tweet")
#         end  
#     end 

#     describe "delete /dislike" do
#         it "returns http success" do
#          delete dislike_tweet_path(:like)

#         expect(response.status).to eq(200)
#         expect(response).to match_response_schema("tweet")
#         end  
#     end 

#     describe "post /retweet" do 
#         it "returns http success" do 
#             post retweet_tweet_path(:tweet)

#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 

#     describe "post/ quote" do 
#         it "returns http success" do 
#             post quote_tweet_path(:tweet)

#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 
    
#     describe "post/ reply" do 
#         it "returns http success" do 
#             post reply_tweet_path(:reply)

#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 

#     describe "post /bookmark" do 
#         it "returns http success" do 
#             post bookmark_tweet_path(:bookmark)
            
#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 

#     describe "post /tweet" do 
#         it "returns http success" do 
#             post tweets_path 

#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 

#     describe "get /tweet" do
#         it "returns http success" do 
#             get new_tweet_path

#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 

#     describe "patch /tweet" do 
#         it "returns http success" do 
#             patch tweet_path(:tweet)

#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 

#     describe "put /tweet" do 
#         it "returns http success" do 
#             put tweet_path(:tweet)

#             expect(response.status).to eq(200)
#             expect(response).to match_response_schema("tweet")
#         end 
#     end 

# end 
