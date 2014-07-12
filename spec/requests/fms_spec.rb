require 'rails_helper'

RSpec.describe "Fms", :type => :request do
  describe "GET /fms" do
    it "works! (now write some real specs)" do
      get fms_path
      expect(response.status).to be(200)
    end
  end
end
