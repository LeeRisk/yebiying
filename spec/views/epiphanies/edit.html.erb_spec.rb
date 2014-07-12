require 'rails_helper'

RSpec.describe "epiphanies/edit", :type => :view do
  before(:each) do
    @epiphany = assign(:epiphany, Epiphany.create!(
      :body => "MyText"
    ))
  end

  it "renders the edit epiphany form" do
    render

    assert_select "form[action=?][method=?]", epiphany_path(@epiphany), "post" do

      assert_select "textarea#epiphany_body[name=?]", "epiphany[body]"
    end
  end
end
