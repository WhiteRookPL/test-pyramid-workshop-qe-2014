# coding: utf-8
Given(/^there is one list named "([^"]+)" with (\d+) task for "([^"]+)"$/) do |listName, tasksNumber, username|
  user = User.where(:username => username).first
  list = List.create(:name => listName)

  (0...tasksNumber.to_i).each do
    list.tasks.build(:title => random_task_name())
  end

  list.user = user
  list.save!
end

Given(/^there is one list named "([^"]+)" with one item named "([^"]+)"$/) do |listName, itemName|
  list = List.create(:name => listName)
  list.tasks.build(:title => itemName)
  list.save!
end

Given(/^there are lists titled "([^"]+)", "([^"]+)"$/) do |firstList, secondList|
  List.create!(:name => firstList)
  List.create!(:name => secondList)
end

Given(/^there is one list named "([^"]+)" with (\d+) random tasks?$/) do |listName, tasksNumber|
  list = List.create(:name => listName)

  (0...tasksNumber.to_i).each do
    list.tasks.build(:title => random_task_name())
  end

  list.save!
end

Given(/^there is one empty list with name "([^"]+)"$/) do |listName|
  List.create!(:name => listName)
end

Given(/^"([^"]+)" should see "([^"]+)"$/) do |username, listName|
  User.where(:username => username).first.lists.where(:name => listName).count.should == 1
end

Given(/^there are no lists$/) do
  List.delete_all
end

When(/^first visible task in list "([^"]+)" will be closed$/) do |listName|
  list = List.where(:name => listName).first

  list.tasks.first.close!
  list.tasks.first.save!
end

When(/^"([^"]+)" will be opened$/) do |listName|
  list = List.where(:name => listName).first

  list.open!
  list.save!
end

When(/^"([^"]+)" will be created$/) do |listName|
  List.create!(:name => listName)
end

When(/^new task with name "([^"]+)" is added to the "([^"]+)"$/) do |taskName, listName|
  list = List.where(:name => listName).first

  task = Task.create(:title => taskName)
  task.list = list
  task.save!
end

Then(/^"([^"]+)" has no tasks inside$/) do |listName|
  List.where(:name => listName).first.tasks.count.should == 0
end

Then(/^"([^"]+)" should be available$/) do |listName|
  List.where(:name => listName).first.available.should == true
end

Then(/^"([^"]+)" should not be available$/) do |listName|
  List.where(:name => listName).first.available.should == false
end

Then(/^"([^"]+)" should has today's date$/) do |listName|
  List.where(:name => listName).first.date.should == Date.today
end

# Zadanie BDD_3:
# TODO: Napisz poprawne wyrażenie regularne.
Then(/^????????????$/) do |listName, tasksNumber|
  # Zadanie BDD_3:
  # TODO: Wybierz listę o określonej nazwie i zweryfikuj, że ilość zadań w niej jest zgodna z parametrem testu.
end

Then(/^"([^"]+)" should be in repository$/) do |listName|
  List.where(:name => listName).count == 1
end
