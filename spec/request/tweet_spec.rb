require 'rails_helper'

RSpec.describe "users", type: :request do
    describe "Post /users" do
        it "returns http success" do
        post users_path

        expect(response.status).to eq(200)
        expect(response).to match_response_schema("user")
        end  
    end
    
    describe "Post /users" do
        it "returns http success" do
        post users_path

        expect(response.status).to eq(200)
        expect(response).to match_response_schema("user")
        end  
    end 

    describe "Post /users" do
        it "returns http success" do
        post users_path

        expect(response.status).to eq(200)
        expect(response).to match_response_schema("user")
        end  
    end 

    
end 
