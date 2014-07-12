require 'rails_helper'

RSpec.describe "thanksgivings/edit", :type => :view do
  before(:each) do
    @thanksgiving = assign(:thanksgiving, Thanksgiving.create!(
      :name => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit thanksgiving form" do
    render

    assert_select "form[action=?][method=?]", thanksgiving_path(@thanksgiving), "post" do

      assert_select "input#thanksgiving_name[name=?]", "thanksgiving[name]"

      assert_select "textarea#thanksgiving_body[name=?]", "thanksgiving[body]"
    end
  end
end
