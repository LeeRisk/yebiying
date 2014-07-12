require 'rails_helper'

RSpec.describe "epiphanies/index", :type => :view do
  before(:each) do
    assign(:epiphanies, [
      Epiphany.create!(
        :body => "MyText"
      ),
      Epiphany.create!(
        :body => "MyText"
      )
    ])
  end

  it "renders a list of epiphanies" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
