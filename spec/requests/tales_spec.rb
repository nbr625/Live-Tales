require 'rails_helper'

RSpec.describe "Tales", type: :request do
  describe "GET /tales" do
    it "works! (now write some real specs)" do
      get tales_path
      expect(response).to have_http_status(200)
    end
  end
end
