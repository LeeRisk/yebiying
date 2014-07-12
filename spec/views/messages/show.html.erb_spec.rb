require 'rails_helper'

RSpec.describe "messages/show", :type => :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :title => "Title",
      :body => "MyText",
      :user_id => 1,
      :guest_email => "Guest Email",
      :guest_nickname => "Guest Nickname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Guest Email/)
    expect(rendered).to match(/Guest Nickname/)
  end
end
