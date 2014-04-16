# Zadanie BDD_1
#
# "Użytkownik może się zalogować na własne konto."
#
# Na rozgrzewkę zapoznaj się z testami i działaniem zaimplementowanych testów.
# Przy okazji popraw dwie literówki (jedna znajduje się tutaj, druga w odpowienim pliku ze scenariuszem).

Given(/^there is one user "([^"]+)" with password "([^"]+)"$/) do |username, password|
  User.create!(:username => username, :password => password)
end

Then(/^"([^"]+)" should be authenticated with pssword "([^"]+)"$/) do |username, password|
  User.where(:username => username).first.will_authenticate?(password).should == true
end