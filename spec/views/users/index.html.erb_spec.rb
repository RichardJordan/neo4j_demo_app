require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :email => "Email",
        :auth_token => "Auth Token",
        :password_digest => "Password Digest",
        :password_reset_token => "Password Reset Token"
      ),
      stub_model(User,
        :email => "Email",
        :auth_token => "Auth Token",
        :password_digest => "Password Digest",
        :password_reset_token => "Password Reset Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Auth Token".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Password Reset Token".to_s, :count => 2
  end
end
