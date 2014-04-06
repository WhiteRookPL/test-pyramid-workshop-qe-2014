def closeAllTasks(listName)
  list = List.where(:name => listName).first

  list.tasks.each do |task|
    task.close!
    task.save!
  end

  list.save!
end

def closeNotAllTasks(listName)
  list = List.where(:name => listName).first

  list.tasks.each_with_index do |task, index|
    if index != 4
      task.close!
      task.save!
    end
  end

  list.save!
end

def assertListAvailability(listName, value)
  expect(List.where(:name => listName).first.available).to eq(value)
end

def createList(listName)
  list = List.create(:name => listName)

  (0...8).each do |i|
    list.tasks.build(:title => "Task #{i}")
  end

  list.save!

  return list
end