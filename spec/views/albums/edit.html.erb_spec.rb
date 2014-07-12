require 'rails_helper'

RSpec.describe "albums/edit", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :description => "MyText"
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "textarea#album_description[name=?]", "album[description]"
    end
  end
end
