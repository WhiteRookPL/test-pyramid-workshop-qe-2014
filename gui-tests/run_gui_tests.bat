pushd ../application/todo-list
rake db:drop
rake db:migrate
rake db:seed
popd

cucumber features -t ~@skip