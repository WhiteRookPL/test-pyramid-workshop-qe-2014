def random_password()
  (0...8).map { (65 + rand(26)).chr }.join
end

def random_task_name()
  (0...24).map { (65 + rand(26)).chr }.join
end

def createTaskIfNotExist(taskName)
  task = Task.where(:title => taskName).first

  if !task
    task = Task.create(:title => taskName)
  end

  return task
end