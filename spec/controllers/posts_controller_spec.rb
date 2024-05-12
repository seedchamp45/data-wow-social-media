# spec/controllers/posts_controller_spec.rb
require 'rails_helper'
require 'jwt'
require 'factory_bot_rails'

RSpec.describe PostsController, type: :request do
  describe "GET /posts" do
    context "when user is authenticated" do
      it "returns a success response" do
        user = create(:user) # Using FactoryBot to create a user
        token = JWT.encode({ sub: user.id }, Rails.application.credentials.devise[:jwt_secret_key], 'HS512')
        header = {}
        header['Authorization'] = "Bearer #{token}"
        get "/posts", headers: header
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "POST /posts" do
    context "when user is authenticated" do
      it "returns a success response" do
        user = create(:user) # Using FactoryBot to create a user
        token = JWT.encode({ sub: user.id }, Rails.application.credentials.devise[:jwt_secret_key], 'HS512')
        header = {}
        header['Authorization'] = "Bearer #{token}"
        post "/posts", headers: header
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "PUT /posts" do
    context "when user is authenticated" do
      it "returns a success response" do
        user = create(:user) # Using FactoryBot to create a user
        token = JWT.encode({ sub: user.id }, Rails.application.credentials.devise[:jwt_secret_key], 'HS512')
        header = {}
        header['Authorization'] = "Bearer #{token}"
        put "/posts/1", headers: header
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "Delete /posts" do
    context "when user is authenticated" do
      it "returns a success response" do
        user = create(:user) # Using FactoryBot to create a user
        token = JWT.encode({ sub: user.id }, Rails.application.credentials.devise[:jwt_secret_key], 'HS512')
        header = {}
        header['Authorization'] = "Bearer #{token}"
        delete "/posts/1", headers: header
        expect(response).to have_http_status(302)
      end
    end
  end

end
