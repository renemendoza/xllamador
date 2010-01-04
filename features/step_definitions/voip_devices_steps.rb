
When /^I delete the (\d+)(?:st|nd|rd|th) voip_devices$/ do |pos|
  visit voip_devices_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following voip_devices:$/ do |expected_voip_devices_table|
  expected_voip_devices_table.diff!(table_at('table').to_a)
end

Then /^I should have (\d+) voip devices$/ do |count|
  VoipDevice.count.to_i.should == count.to_i
end

Given /^I have no voip devices$/ do
  VoipDevice.delete_all
end

Given /^the following voip devices:$/ do |table|
  table.hashes.each do |v|
    Factory(:voip_device, {:name => v["name"], :technology => v["technology"], :secret => v["password"]})
  end
end



Given /^the following user records:$/ do |table|
  table.hashes.each do |v|
    Factory(:user, {:username => v["username"], :password => v["password"], :password_confirmation => v["password_confirmation"], :roles => v["roles"].split(",")})
  end
end

When /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |username, password|
  visit login_url
  fill_in "Username", :with => username
  fill_in "Password", :with => password
  click_button "Log In"
end 
