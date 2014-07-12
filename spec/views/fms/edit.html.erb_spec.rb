require 'rails_helper'

RSpec.describe "fms/edit", :type => :view do
  before(:each) do
    @fm = assign(:fm, Fm.create!(
      :name => "MyString",
      :description => "MyText",
      :format => "MyString",
      :storage => "MyString"
    ))
  end

  it "renders the edit fm form" do
    render

    assert_select "form[action=?][method=?]", fm_path(@fm), "post" do

      assert_select "input#fm_name[name=?]", "fm[name]"

      assert_select "textarea#fm_description[name=?]", "fm[description]"

      assert_select "input#fm_format[name=?]", "fm[format]"

      assert_select "input#fm_storage[name=?]", "fm[storage]"
    end
  end
end
