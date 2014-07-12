require 'rails_helper'

RSpec.describe "fms/index", :type => :view do
  before(:each) do
    assign(:fms, [
      Fm.create!(
        :name => "Name",
        :description => "MyText",
        :format => "Format",
        :storage => "Storage"
      ),
      Fm.create!(
        :name => "Name",
        :description => "MyText",
        :format => "Format",
        :storage => "Storage"
      )
    ])
  end

  it "renders a list of fms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    assert_select "tr>td", :text => "Storage".to_s, :count => 2
  end
end
