Given(/^"([^"]+)" should have "([^"]+)"$/) do |username, listName|
  List.where(:name => listName).first.user.username.should == username
end

# Zadanie BDD_1:
# TODO: Literówka do poprawienia.
Given(/^there are no users$/) do
  User.delete_al
end

Given(/^there is one user "([^"]+)" with password "([^"]+)"$/) do |username, password|
  User.create!(:username => username, :password => password)
end

Given(/^there is one authenticated user "([^"]+)" with password "([^"]+)"$/) do |username, password|
  user = User.create(:username => username, :password => password)
  user.save!

  if !user.will_authenticate?(password)
    fail("Invalid password for '#{username}'!")
  end
end

# Zadanie BDD_1:
# TODO: Kolejne literówki do poprawienia.
When(/^"([^"]+)" account is created with random password$/) do |username|
  User.create!(:user => username, :pasword => random_pasword())
end

When(/^"([^"]+)" log out$/) do |username|
  User.where(:username => username).first.logout!
end

Then(/^authenticate "(.*?)" with password "(.*?)"$/) do |username, password|
  user = User.where(:username => username).first

  if !user.will_authenticate?(password)
    fail("Invalid password for '#{username}'!")
  end
end

Then(/^"([^"]+)" should have non empty password$/) do |username|
  user = User.where(:username => username).first

  user.password.should_not == nil
  user.password.empty?.should == false
end

Then(/^"([^"]+)" should be authenticated with password "([^"]+)"$/) do |username, password|
  User.where(:username => username).first.will_authenticate?(password).should == true
end

Then(/^"([^"]+)" should not be authenticated with password "([^"]+)"$/) do |username, password|
  User.where(:username => username).first.will_authenticate?(password).should == false
end

Then(/^"([^"]+)" account should be available$/) do |username|
  User.where(:username => username).count.should == 1
end

Then(/^"([^"]+)" should have no lists$/) do |username|
  User.joins(:lists).where("users.username == ?", username).count.should == 0
end