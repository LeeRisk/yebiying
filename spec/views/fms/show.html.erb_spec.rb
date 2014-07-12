require 'rails_helper'

RSpec.describe "fms/show", :type => :view do
  before(:each) do
    @fm = assign(:fm, Fm.create!(
      :name => "Name",
      :description => "MyText",
      :format => "Format",
      :storage => "Storage"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Format/)
    expect(rendered).to match(/Storage/)
  end
end
