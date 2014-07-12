require 'rails_helper'

RSpec.describe "images/show", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "Name",
      :width => 1,
      :height => 2,
      :storage => "Storage",
      :imageable_id => 3,
      :imageable_type => "Imageable Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Storage/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Imageable Type/)
  end
end
