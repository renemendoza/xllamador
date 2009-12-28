require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe VoipDevice do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :username => "value for username",
      :type => "value for type",
      :host => "value for host",
      :secret => "value for secret",
      :disallow => "value for disallow",
      :allow => "value for allow",
      :callerid => "value for callerid",
      :callerid_name => "value for callerid_name",
      :context => "value for context",
      :accountcode => "value for accountcode",
      :dtmfmode => "value for dtmfmode",
      :language => "value for language",
      :qualify => "value for qualify",
      :technology => "value for technology",
      :ipaddr => "value for ipaddr",
      :port => "value for port",
      :regseconds => 1
    }
  end

  it "should create a new instance given valid attributes" do
    VoipDevice.create!(@valid_attributes)
  end
end
