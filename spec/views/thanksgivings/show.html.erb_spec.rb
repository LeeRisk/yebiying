require 'rails_helper'

RSpec.describe "thanksgivings/show", :type => :view do
  before(:each) do
    @thanksgiving = assign(:thanksgiving, Thanksgiving.create!(
      :name => "Name",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
