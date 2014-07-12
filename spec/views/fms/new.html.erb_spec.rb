require 'rails_helper'

RSpec.describe "fms/new", :type => :view do
  before(:each) do
    assign(:fm, Fm.new(
      :name => "MyString",
      :description => "MyText",
      :format => "MyString",
      :storage => "MyString"
    ))
  end

  it "renders new fm form" do
    render

    assert_select "form[action=?][method=?]", fms_path, "post" do

      assert_select "input#fm_name[name=?]", "fm[name]"

      assert_select "textarea#fm_description[name=?]", "fm[description]"

      assert_select "input#fm_format[name=?]", "fm[format]"

      assert_select "input#fm_storage[name=?]", "fm[storage]"
    end
  end
end
