require 'rails_helper'

RSpec.describe "Dames", :type => :request do
  describe "GET /dames" do
    it "works! (now write some real specs)" do
      get dames_path
      expect(response.status).to be(200)
    end
  end
end
