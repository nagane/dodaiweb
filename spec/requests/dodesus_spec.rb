require 'rails_helper'

RSpec.describe "Dodesus", :type => :request do
  describe "GET /dodesus" do
    it "works! (now write some real specs)" do
      get dodesus_path
      expect(response.status).to be(200)
    end
  end
end
