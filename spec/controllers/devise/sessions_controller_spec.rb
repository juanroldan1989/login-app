require "rails_helper"

RSpec.describe Devise::SessionsController do
  describe "GET #new" do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end

    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end

    it "should authenticated User successfully with password 'another_password'" do
      valid_user = double(save: true)

      allow(User).to receive(:update).and_return(valid_user)

      post :create, user: { email: "valid_user@gmail.com", password: "another_password" }

      expect(response).to have_http_status(200)
    end

    it "should redirect un-authenticated User with password 'password'" do
      invalid_user = double(save: false)

      allow(User).to receive(:update).and_return(invalid_user)

      post :create, user: { email: "invalid_user@gmail.com", password: "password" }

      expect(response).to render_template("new")
    end
  end

end
