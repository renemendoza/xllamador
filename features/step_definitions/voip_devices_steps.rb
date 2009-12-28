Given /^the following voip_devices:$/ do |voip_devices|
  VoipDevices.create!(voip_devices.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) voip_devices$/ do |pos|
  visit voip_devices_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following voip_devices:$/ do |expected_voip_devices_table|
  expected_voip_devices_table.diff!(table_at('table').to_a)
end
