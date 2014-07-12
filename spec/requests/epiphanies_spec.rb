require 'rails_helper'

RSpec.describe "Epiphanies", :type => :request do
  describe "GET /epiphanies" do
    it "works! (now write some real specs)" do
      get epiphanies_path
      expect(response.status).to be(200)
    end
  end
end
