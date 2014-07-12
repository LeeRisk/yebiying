require 'rails_helper'

RSpec.describe "messages/index", :type => :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :title => "Title",
        :body => "MyText",
        :user_id => 1,
        :guest_email => "Guest Email",
        :guest_nickname => "Guest Nickname"
      ),
      Message.create!(
        :title => "Title",
        :body => "MyText",
        :user_id => 1,
        :guest_email => "Guest Email",
        :guest_nickname => "Guest Nickname"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Guest Email".to_s, :count => 2
    assert_select "tr>td", :text => "Guest Nickname".to_s, :count => 2
  end
end
