require 'rails_helper'

RSpec.describe "Api::Cities", type: :request do
  describe "GET /api_cities" do
    it "works! (now write some real specs)" do
      get api_cities_path
      expect(response).to have_http_status(200)
    end
  end
end
