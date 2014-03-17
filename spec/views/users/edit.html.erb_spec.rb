require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "MyString",
      :auth_token => "MyString",
      :password_digest => "MyString",
      :password_reset_token => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_auth_token[name=?]", "user[auth_token]"
      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
      assert_select "input#user_password_reset_token[name=?]", "user[password_reset_token]"
    end
  end
end
