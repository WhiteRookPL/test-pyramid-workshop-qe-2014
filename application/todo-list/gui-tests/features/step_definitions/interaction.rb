Given(/^I opened "([^"]+)"$/) do |listName|
  @page = @page.followByName(listName)
end

Given(/^I typed "([^"]+)" into (.+?)$/) do |text, name|
  @page.type(text, name)
end

Given(/^I clicked (.+?)$/) do |name|
  @page.click(name)
end

Given(/^I cleared (.+?)$/) do |name|
	# Zadanie GUI_3:
  # TODO: Zaimplementuj mechanizm czyszczenia pola tekstowego.
end

When(/^I click (.+?)$/) do |name|
  @page.click(name)
end

When(/^I type "([^"]+)" into (.+?)$/) do |text, name|
  @page.type(text, name)
end

When(/^I mark checkbox near "([^"]+)"$/) do |name|
  @page.checkNear(name)
end