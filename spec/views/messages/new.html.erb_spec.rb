require 'rails_helper'

RSpec.describe "messages/new", :type => :view do
  before(:each) do
    assign(:message, Message.new(
      :title => "MyString",
      :body => "MyText",
      :user_id => 1,
      :guest_email => "MyString",
      :guest_nickname => "MyString"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_title[name=?]", "message[title]"

      assert_select "textarea#message_body[name=?]", "message[body]"

      assert_select "input#message_user_id[name=?]", "message[user_id]"

      assert_select "input#message_guest_email[name=?]", "message[guest_email]"

      assert_select "input#message_guest_nickname[name=?]", "message[guest_nickname]"
    end
  end
end
