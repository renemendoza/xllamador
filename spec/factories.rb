Factory.define :voip_device do |v|
  v.sequence(:name) { |n| "Dev - #{n}" }
  v.technology "IAX"
  v.sequence(:secret) { |n| "#{n}1234" }
end

Factory.define :user do |c|
  c.sequence(:email) { |n| "ceo#{n}@happy-customer.com" }
  c.username "username"
  c.password "bbbb"
  c.password_confirmation "bbbeb"
end
