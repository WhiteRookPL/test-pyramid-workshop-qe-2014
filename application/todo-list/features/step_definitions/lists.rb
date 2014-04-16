# Zadanie BDD_3
#
# "Lista jest zamknięta kiedy wszystkie jej elementy są zrobione."
#
# Ostatnie zadanie z serii jest odrobinę trudniejsze, należy zaimplementować
# przygotowane kroki zgodnie z opisem zamieszczonym w przechwytywanej frazie.
#
# Pomoc znajdziesz w aplikacji w plikach:
#   - application/todo-list/app/models/list.rb
#   - application/todo-list/app/models/task.rb
#
# Nie przejmuj się jeśli Ci nie pójdzie! Zawsze możesz wrócić lub przejść do następnego zadania :)

Given(/^there is one list named "([^"]+)" with (\d+) random tasks?$/) do |listName, tasksNumber|
  list = List.create(:name => listName)

  (0...tasksNumber.to_i).each do
    list.tasks.build(:title => random_task_name())
  end

  list.save!
end

# TODO: Brakujący krok!

When(/^first visible task in list "([^"]+)" will be closed$/) do |listName|
  pending
end

Then(/^"([^"]+)" should not be available$/) do |listName|
  pending
end