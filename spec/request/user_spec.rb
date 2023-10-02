require 'rails_helper'

RSpec.describe "users", type: :request do
    describe "Post /users" do
        it "returns http success" do
        post users_path

        expect(response.status).to eq(200)
        expect(response).to match_response_schema("user")
        end  
    end
    
    describe "Get /users" do
        it "returns http success" do
        get user_path(:user)

        expect(response.status).to eq(200)
        expect(response).to match_response_schema("user")
        end  
    end 

    describe "Get /users tweets paggination" do 
        it "return http success" do 
            get user_path(:tweet, :page, page: 2)

            expect(response.status).to eq(200)
            expect(response).to match_response_schema("user")
        end
    end

    describe "Get /users tweets and replies paggination" do 
        it "return http success" do 
            get user_path(:tweet, :page, page: 2)

            expect(response.status).to eq(200)
            expect(response).to match_response_schema("user")
        end
    end

    describe "Patch /users" do
        it "returns http success" do
        patch user_path(:user)

        expect(response.status).to eq(200)
        expect(response).to match_response_schema("user")
        end  
    end 

    describe "Put /users" do
        it "returns http success" do
        put user_path(:user)

        expect(response.status).to eq(200)
        expect(response).to match_response_schema("user")
        end  
    end

            
         
end 
