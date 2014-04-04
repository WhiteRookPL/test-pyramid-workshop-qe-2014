Given(/^"([^"]+)" should have "([^"]+)"$/) do |username, list|
  pending
end

Given(/^there are no users$/) do
  User.delete_all
end

Given(/^there is one user "([^"]+)" with password "([^"]+)"$/) do |username, password|
  User.create!(:username => username, :password => password)
end

Given(/^there is one authenticated user "([^"]+)" with password "([^"]+)"$/) do |username, password|
  pending
end

When(/^"([^"]+)" account is created with random password$/) do |username|
  User.create!(:username => username, :password => random_password())
end

When(/^authenticate "([^"]+)" with password "([^"]+)"$/) do |username, password|
  User.where(:username => username).first.authenticate!(password)
end

When(/^"([^"]+)" log out$/) do |username|
  pending
end

Then(/^"([^"]+)" should have non empty password$/) do |username|
  user = User.where(:username => username).first

  user.password && !user.password.empty?
end

Then(/^"([^"]+)" should be authenticated$/) do |username|
  User.where(:username => username).first.is_authenticated?
end

Then(/^"([^"]+)" should not be authenticated$/) do |username|
  !User.where(:username => username).first.is_authenticated?
end

Then(/^"([^"]+)" account should be available$/) do |username|
  User.where(:username => username).count == 1
end

Then(/^"([^"]+)" should have no lists$/) do |username|
  pending
end