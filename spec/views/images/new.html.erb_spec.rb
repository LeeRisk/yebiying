require 'rails_helper'

RSpec.describe "images/new", :type => :view do
  before(:each) do
    assign(:image, Image.new(
      :name => "MyString",
      :width => 1,
      :height => 1,
      :storage => "MyString",
      :imageable_id => 1,
      :imageable_type => "MyString"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_width[name=?]", "image[width]"

      assert_select "input#image_height[name=?]", "image[height]"

      assert_select "input#image_storage[name=?]", "image[storage]"

      assert_select "input#image_imageable_id[name=?]", "image[imageable_id]"

      assert_select "input#image_imageable_type[name=?]", "image[imageable_type]"
    end
  end
end
