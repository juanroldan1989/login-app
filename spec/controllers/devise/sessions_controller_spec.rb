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

    it "should authenticate user successfully with password 'another_password'" do
      user = create(:user, :valid)
      sign_in_with_password(user)

      post :create, user.attributes
      expect(response).to redirect_to(root_path)
    end

    it "should stop user from login with password 'password'" do
      user = create(:user, :invalid)
      sign_in_with_password(user)

      post :create, user.attributes
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
