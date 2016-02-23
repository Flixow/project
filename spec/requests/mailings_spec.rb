require 'rails_helper'

RSpec.describe "Mailings", type: :request do
  describe "GET /mailings" do
    it "works! (now write some real specs)" do
      get mailings_path
      expect(response).to have_http_status(200)
    end
  end
end
