require 'rails_helper'

RSpec.describe "epiphanies/new", :type => :view do
  before(:each) do
    assign(:epiphany, Epiphany.new(
      :body => "MyText"
    ))
  end

  it "renders new epiphany form" do
    render

    assert_select "form[action=?][method=?]", epiphanies_path, "post" do

      assert_select "textarea#epiphany_body[name=?]", "epiphany[body]"
    end
  end
end
