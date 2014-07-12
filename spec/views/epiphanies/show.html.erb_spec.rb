require 'rails_helper'

RSpec.describe "epiphanies/show", :type => :view do
  before(:each) do
    @epiphany = assign(:epiphany, Epiphany.create!(
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
