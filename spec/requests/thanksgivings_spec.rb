require 'rails_helper'

RSpec.describe "Thanksgivings", :type => :request do
  describe "GET /thanksgivings" do
    it "works! (now write some real specs)" do
      get thanksgivings_path
      expect(response.status).to be(200)
    end
  end
end
