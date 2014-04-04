Then(/^"([^"]+)" item will be closed$/) do |taskName|
  task = createTaskIfNotExist(taskName)
  task.close!
  task.save!
end

Then(/^"([^"]+)" item will be opened$/) do |taskName|
  task = createTaskIfNotExist(taskName)
  task.save!
end

Then(/^"([^"]+)" item should be opened$/) do |taskName|
  Task.where(:title => taskName).first.closed.should == false
end

Then(/^"([^"]+)" item should be closed$/) do |taskName|
  Task.where(:title => taskName).first.closed.should == true
end

Then(/^(\d+) task in "([^"]+)" is available$/) do |tasksNumber, listName|
  List.where(:name => listName).first.tasks.count.should == tasksNumber.to_i
end

Then(/^"([^"]+)" item should have today's date$/) do |taskName|
  Task.where(:title => taskName).first.date.should == Date.today
end