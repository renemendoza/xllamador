require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  before(:each) do
    @valid_attributes = {
      :username => "value for username",
      :email => "value for email",
      :crypted_password => "value for crypted_password",
      :password_salt => "value for password_salt",
      :persistance_token => "value for persistance_token"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
