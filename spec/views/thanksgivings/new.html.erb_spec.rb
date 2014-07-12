require 'rails_helper'

RSpec.describe "thanksgivings/new", :type => :view do
  before(:each) do
    assign(:thanksgiving, Thanksgiving.new(
      :name => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new thanksgiving form" do
    render

    assert_select "form[action=?][method=?]", thanksgivings_path, "post" do

      assert_select "input#thanksgiving_name[name=?]", "thanksgiving[name]"

      assert_select "textarea#thanksgiving_body[name=?]", "thanksgiving[body]"
    end
  end
end
