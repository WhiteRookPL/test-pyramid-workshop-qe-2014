# Zadanie BDD_2.
#
# "Lista zamknięta jest niedostępna dla użytkownika."
#
# Wybierz odpowiednie kroki dopisując je w pliku ze scenariuszem według przygotowanego szablonu.
# Przy okazji jest jeszcze jedna literówka do poprawienia ;).

Given(/^there is one list named "([^"]+)" with (\d+) random tasks?$/) do |listName, tasksNumber|
  list = List.create(:name => listName)

  (0...tasksNumber.to_i).each do
    list.tasks.build(:title => random_task_name())
  end

  list.save!
end

When(/^first visible task in list "([^"]+)" will be closed$/) do |listName|
  list = List.where(:name => listName).first

  list.tasks.first.close!
  list.tasks.first.save!
end

When(/^"([^"]+)" will be opened$/) do |listName|
  list = List.where(:name => listName).first

  list.make_available!
  list.save
end

Then(/^"([^"]+)" should not be available$/) do |listName|
  List.whre(:name => listName).first.available.should == false
end