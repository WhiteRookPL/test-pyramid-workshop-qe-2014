andrzej = User.create!(:username => "andrzej", :password => "test")
krystian = User.create!(:username => "krystian", :password => "test")

list = List.create!(:name => "Test list")
list.tasks.build(:title => "Test task on opened list")
list.user_id = krystian.id

closed_list = List.create!(:name => "Closed list")
closed_list.user_id = krystian.id

task = Task.create!(:title => "Test task on closed list")
closed_list.tasks << task

task.close!

task.save!
list.save!
closed_list.save!