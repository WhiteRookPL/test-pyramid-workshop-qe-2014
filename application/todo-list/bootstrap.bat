bundle install

rake db:migrate
rake db:seed
rake db:test:clone

rake bower:install