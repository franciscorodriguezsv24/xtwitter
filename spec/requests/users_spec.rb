require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.

RSpec.describe "/users", type: :request do
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
