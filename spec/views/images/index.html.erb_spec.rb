require 'rails_helper'

RSpec.describe "images/index", :type => :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :name => "Name",
        :width => 1,
        :height => 2,
        :storage => "Storage",
        :imageable_id => 3,
        :imageable_type => "Imageable Type"
      ),
      Image.create!(
        :name => "Name",
        :width => 1,
        :height => 2,
        :storage => "Storage",
        :imageable_id => 3,
        :imageable_type => "Imageable Type"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Storage".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Imageable Type".to_s, :count => 2
  end
end
