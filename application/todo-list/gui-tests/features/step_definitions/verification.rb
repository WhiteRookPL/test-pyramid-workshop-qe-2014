Given(/^I saw "([^"]+)"$/) do |text|
  @page.look_for(text)
end

Then(/^I should see "([^"]+)"$/) do |text|
  @page.look_for(text)
end

Then(/^I should not see "([^"]+)"$/) do |text|
  @page.not_look_for(text)
end