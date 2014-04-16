def createPageObject(pageName)
  page = case pageName
    when 'landing page' then LandingPage.new(@session)
    else fail('Unknown page name!')
  end
  return page
end

Given(/^I am on (.+?) page$/) do |pageName|
  @page = createPageObject(pageName)
  @page.visit
end

When(/^I attach the file "(.*?)" to "(.*?)"$/) do |path, field|
  @page.upload_file(path, field)
end

When(/^I click the (.*?)$/) do |button|
  @page = @page.press(button)
end

When(/^I choose the (.*?)$/) do |button|
  @page.choose(button)
end

When(/^I fill in "(.*?)" for (.*?)$/) do |value, field|
  @page.fill(value, field)
end

When(/^I select ([^"]*) from ([^"]*)$/) do |item, element_name|
  @page.select_element(item, element_name)
end

Then(/^I should see text "([^"]*)"$/) do |text|
  @session.should have_content text
end

Then(/^I should not see text "([^"]*)"$/) do |text|
  @session.should have_no_content text
end

Then(/^(.*?) should be visible$/) do |element|
  if(!@page.is_visible(element))
    raise('Element is not visible:  ' + element)
  end
end

Then(/^(.*?) should not be visible$/) do |element|
  expect(@page.is_not_visible(element)).to be(true)
end
