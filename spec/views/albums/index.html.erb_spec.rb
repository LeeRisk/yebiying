require 'rails_helper'

RSpec.describe "albums/index", :type => :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :description => "MyText"
      ),
      Album.create!(
        :description => "MyText"
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
