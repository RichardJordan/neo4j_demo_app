require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "Email",
      :auth_token => "Auth Token",
      :password_digest => "Password Digest",
      :password_reset_token => "Password Reset Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Auth Token/)
    rendered.should match(/Password Digest/)
    rendered.should match(/Password Reset Token/)
  end
end
