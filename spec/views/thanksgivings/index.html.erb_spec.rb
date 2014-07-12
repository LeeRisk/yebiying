require 'rails_helper'

RSpec.describe "thanksgivings/index", :type => :view do
  before(:each) do
    assign(:thanksgivings, [
      Thanksgiving.create!(
        :name => "Name",
        :body => "MyText"
      ),
      Thanksgiving.create!(
        :name => "Name",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of thanksgivings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
