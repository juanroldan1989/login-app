require "rails_helper"

RSpec.describe WelcomeController do
  describe "GET #index" do

    describe "User authenticated successfully" do
      before do
        sign_in
      end

      it "responds successfully with an HTTP 200 status code" do
        get :index
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end

    describe "User un-authenticated" do
      before do
        sign_in nil
      end

      it "redirects to sign_in page" do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end
end
