# Skrypt do rozmowy z Product Ownerem

## Wskazówki

1. Lista wymagań to świętość - nie dokładamy!
2. Szybko ucinamy dodatkowe pomysły!
3. Błądzić jest rzeczą ludzką, ale nie tutaj.
4. Naprowadzamy na funkcjonalność!
5. Uważamy na off-topic!
6. Nie wspominamy nic o zmianie wymagań, otwieraniu listy i pokazywaniu zamkniętych list!
7. Product Owner nie ma wiedzy technicznej.

## Skrypt

- Zaczynamy rozmowę pytając PO kim jest odbiorca (krótki opis).
- PO mówi krótko co chce.
- Kolejne pytania powinny padać od uczestników.
  - Delikatnie naprowadzamy uczestników na pierwszą funkcjonalność - w aplikacji muszą być listy.
- Pytamy o to co jest na listach - zadania.
- Pytamy o ich stan - jest potrzebny - PO mówi, że tylko zadania mają stan.
- Pytamy o datę czy jest potrzebna - jest potrzebna - nie wiemy czemu, ale ma być.
- PO nagle wspomina o ukrywaniu listy, ale nie mówi kiedy ukrywamy.
  - Kolejne pytania muszą dociec kiedy lista ma być ukryta przed użytkownikami.
- Wprowadzamy pojęcie zamkniętej listy i że to ją należy ukryć.
- PO chce doprecyzować znaczenie pojęć zamknięta lista, otwarta lista - nie wie co to jest, wprowadzić pewne pojęcia domenowe.
- PO wyraźnie zaznacza, że pusta lista musi się pokazywać, ew. może się podroczyć z uczestnikami i kilka razy zmienić zdanie.
- Rozmawiamy o użytkownikach ale tak jakby w ukryciu.
  - Delikatnie naprowadzamy że co gdy dwóch ludzi zechce korzystać z aplikacji razem.
  - Użytkownicy widzą tylko swoje listy, nie ma współdzielnia.
- Potem PO sam przyjmie słowo otwarte / zamknięte także w kontekście zadań.
- Ucinać propozycję mobilnej aplikacji.
- Ucinać propozycję integracji z systemami trzecimi.
- Krystian chce koniecznie aplikację dla niego, nie chce korzystać z gotowych serwisów.

# Słowniczek

- Lista - grupa zadań, uszeregowana według określonego porządku, zebrana razem ze względu na wspólny obszar/pochodzenie.
- Zadanie - określenie czynności lub rzeczy do wykonania / przygotowania.
- Użytkownik - osoba korzystająca z list zadań.
- Stan zadania - informacja o tym czy zadanie zostało wykonane czy jeszcze oczekuje na wykonanie.
- Zadanie zrobione / Zadanie zamknięte - zadanie wykonane.
- Zadanie nie zrobione / Zadanie otwarte - zadanie oczekujące do wykonania.
- Zamknięta lista - jest to grupa zadań, która posiada wszystkie elementy zamkniete.
- Otwarta lista - jest to grupa zadań, z których przynajmniej jeden jest otwarty.

# User Story - Rozwiązania

## ZADANIE 1 - Użytkownik może się zalogować na własne konto

Jako Krystian,
Chcę się zalogować do aplikacji,
Żeby zobaczyć swoje listy zadań

## ZADANIE 2 - Lista zamknięta jest niedostępna dla użytkownika

Jako Krystian,
Chcę aby moje zamkniete listy nie były widoczne,
Żeby nie wprowadzały mnie w błąd

## ZADANIE 3 - Lista jest zamknięta kiedy wszystkie jej elementy są zrobione

Jako Krystian,
Chcę zamknąć wszystkie elementy znajdujące się na liście,
Żeby lista została automatycznie zamknięta i nie wprowadzała mnie w błąd

## BŁĘDY

- Steps to reproduce -> to nie jest Test Case!
- US nie powinno mieć narzuconego rozwiązania (np. przyciśnięcie przycisku robi kawę).
- Zbyt dużo elementów w jednym US.
  - Jedna funkcjonalność, ewentualnie dołączone "Acceptance Criteria" do niej.
  - Złamanie Single Responsibility Principle (SRP).
- Same "Acceptance Criteria" to nie jest US!

# Komendy

- `RUN_GUI_TESTS.bat`
- `RUN_BDD.bat`
- `RUN_UT.bat`
- `START_SERVER.bat`
- `RESTORE.bat`
- `BDD_*.bat` lub `UT_*.bat` lub `GUI_*.bat`
- `PREPARE_APPLICATION.bat`
- `PREPARE_GUI_TESTS.bat`
- `rake db:migrate`
- `rake db:test:clone`
- `rake bower:install`
- `rails generate rspec:install`
- `rake spec`
- `rails server`
- `bundle install`

# Assignments - Cheat Sheets

## Ruby i Logika Domenowa

- Nowa zmienna: `a = 'Nowa zmienna'`
- Dla każdego elementu w tablicy: `[ 1, 2, 3].each { |element| puts element }`
- Stworzenie nowego modelu: `nowy = List.create(WARTOŚCI_POCZĄTKOWE)`
  - Wartości początkowe: `:pole1 => wartość, :pole2 => wartość`
- Stworzenie nowego obiektu: `nowy_obiekt = ListRepository.new`
- Wyszukanie i zwrócenie jednego obiektu z bazy danych: `List.where(KRYTERIUM).first`
  - Kryterium wyszukiwania: `:pole => wartość`
- Wyszukanie wszystkich obiektów pasujących do kryteriów: `List.all.select { KRYTERIA }`
  - Kryterium wyszukiwania: `{ |list| list.user.username == 'NAZWA_UŻYTKOWNIKA' }`
- Zamknięcie listy: `lista.close!`
- Otwarcie listy: `lista.open!`
- Zamknięcie zadania: `zadanie.close!`
- Otwarcie zadania: `zadanie.open!`
- Dodanie zadania do listy: `lista.tasks.build(WARTOŚCI_POCZĄTKOWE)`
- Zapisanie modelu do bazy: `MODEL.save!`

## Komendy

- Zamknięcie aktualnie uruchomionej komendy `CTRL-C`.
- Uzupełnienie nazwy pliku lub katalogu `TAB`.
- `RUN_GUI_TESTS.bat`
- `RUN_BDD.bat`
- `RUN_UT.bat`
- `START_SERVER.bat`
- `RESTORE.bat`
- `BDD_*.bat` lub `UT_*.bat` lub `GUI_*.bat`
- `PREPARE_APPLICATION.bat`
- `PREPARE_GUI_TESTS.bat`

## Aplikacja

- Przygotowani użytkownicy w aplikacji:
  - Username: `krystian`, Hasło: `test`
  - Username: `andrzej`, Hasło: `test`

## Capybara

- `@session.find(selektor)` - Odszukaj i zwróć dokładnie jeden element pasujący do selektora.
- `@session.all(selektor)` - Odszukaj i zwróć wszystkie elementy pasujące do selektora.
- `ELEMENT.set(wartość_boolowska)` - Zaznacz/odznacz checkbox.
- `ELEMENT.click` - Kliknij w element.
- `ELEMENT.set(tekst)` - Wpisz tekst do elementu.
- `@session.has_text? tekst` - Asercja czy tekst jest widoczny na stronie.
- `@session.has_no_text? tekst` - Asercja czy tekst nie jest widoczny na stronie.

## Selektory

- CSS - `.KLASA`
- CSS - `#ID`
- CSS - `nazwa_taga[nazwa_atrybutu='wartość_atrybutu']`
- XPATH - `/root/element1/element2/element3[text(), contains('tekst')]`

## Cucumber

- `Given ...` - Inicjalizacja warunków początkowych testu.
- `When ...` - Kroki do wykonania w ramach testu.
- `Then ...` - Weryfikacja warunków wyjściowych z testu.
- `Scenario` - Tytuł scenariusza.
- `Feature` - Nazwa funkcjonalności którą testujemy.
- `user.password.should_not == nil` - Asercja dotycząca nierówności.
- `user.password.should == nil` - Asercja dotycząca równości.

## RSpec

- `expect(WARTOŚĆ).to eq(WARTOŚĆ)` - Asercja równości pomiędzy wartościami.
- `expect(WARTOŚĆ).not_to eq(WARTOŚĆ)` - Asercja nierówności pomiędzy wartościami.
- `before(:each)` - Kod wykonywany przed każdym z testów (*setup*).
- `after(:each)` - Kod wykonywany po każdym z testów (*teardown*).

# Detailed time plan

00:00 - 00:05 -  5 - KK    - Informacja o pytaniach (w trakcie) i ankietach (w trakcie).
00:05 - 00:30 - 25 - KK    - Wprowadzenie i pierwszy blok teorii (do opisu persony - Krystiana Kocura).
00:30 - 01:00 - 30 - RAZEM - Opis persony, rozmowa z PO, zadanie z przygotowania User Stories.
01:00 - 01:05 -  5 - RAZEM - PRZERWA
01:05 - 01:35 - 30 - KC    - Język domenowy, Typy testów, Piramida Testów, Opis warstw.
01:35 - 01:50 - 15 - WG    - Dlaczego zaczynamy od środka? Testy akceptacyjne - teoria.
01:50 - 02:20 - 30 - RAZEM - Zadania z testów akceptacyjnych.
02:20 - 02:25 -  5 - RAZEM - Przerwa.
02:25 - 02:40 - 15 - WG    - Testy jednostkowe - teoria.
02:40 - 03:10 - 30 - RAZEM - Zadania z testów jednostkowych.
03:10 - 03:25 - 15 - WG    - Testy end to end - GUI - teoria.
03:25 - 03:55 - 30 - RAZEM - Zadania z testów automatycznych GUI.
03:55 - 04:00 -  5 - WG    - Podsumowanie.

# Assignments - Details

## Acceptance Tests

### Task 1

ZADANIE: Kilka błędów językowo-składniowych w pliku 'User_management.feature' oraz w pliku 'users.rb'.
ROZWIĄZANIE:

Kod źródłowy:
~~~
Given(/^there are no users$/) do
  User.delete_al*l*
end
~~~

Kod źródłowy:
~~~
When(/^"([^"]+)" account is created with random password$/) do |username|
  User.create!(:user*name* => username, :pas*s*word => random_pas*s*word())
end
~~~

Feature:
~~~
  Scenario: Create new user
    Given there are no user*s*
    When "Kr*y*stian" account is created with random password
    Then "Krystian" account should be available
    And "Krystian" should have non empty pas*s*word
~~~

### Task 2

ZADANIE: Uzupełnić scenariusz na podstawie istniejących już kroków.
ROZWIĄZANIE:
~~~
Scenario: Task should has a date
  Given *there is one list named "Non-empty list" with one item named "Item on the list"*
  When *"Non-empty list" will be opened*
  Then *"Item on the list" item should have today's date*
~~~

### Task 3

ZADANIE: Dopisać jeden cały hook w Cucumberze oraz napisanie całego testu praktycznie od zera.
ROZWIĄZANIE:

Kod źródłowy
~~~
Then(/^*"([^"]+)" has (\d+) tasks? inside*$/) do |listName, tasksNumber|
  *List.where(:name => listName).first.tasks.count.should == tasksNumber.to_i*
end
~~~

Scenariusz:
~~~
Scenario: List can have many tasks
  Given there is one list named "*My non-empty list*" with 3 random tasks
  When "*My non-empty list*" will be opened*
  Then *"My non-empty list" has 3 tasks inside*
~~~

### Task 4 *

ZADANIE: Napisać cały jeden test po stronie pliku feature, bez ani linijki kodu.
ROZWIĄZANIE:
~~~
*Scenario: List with all closed tasks is now visible again*
  *Given there is one list named "Closed list" with 1 closed random task*
  *When "Closed list" will be opened*
  *Then "Closed list" should not be available*
  *And "Closed list" should be in repository*
~~~

### Task 5 *

ZADANIE: Zaimplementować kompletny test w oparciu o jeden nowy krok i resztę starszych, który zweryfikuje możliwość ponownego otwarcia listy z zadaniami (zmiana wymagań).
ROZWIĄZANIE:

Kod źrodłowy:
~~~
When(/^"([^"]+)" will be reopened$/) do |listName|
  *list = List.where(:name => listName).first*

  *list.reopen!*
  *list.save!*
end
~~~

Scenariusz:
~~~
Scenario: List can be reopened with all tasks at once
  *Given there is one list named "Closed list" with 3 closed random tasks*
  *When "Closed list" will be reopened*
  *Then all tasks on "Closed list" should be opened*
  *And "Closed list" should be available*
  *And "Closed list" should be in repository*
~~~

## Unit Tests

### Task 1

ZADANIE: Naprawić literówki w pliku `task_spec.rb`.
ROZWIĄZANIE:
~~~
require 'spec_helper*'*

describe Task *do*
  it *{* should belong_to :list }
*end*
~~~

### Task 2

ZADANIE: Napisać nową asercję weryfikującą poprawne zalogowanie użytkownika w pliku `user_spec.rb`.
ROZWIĄZANIE:
~~~
it "should be authenticated when password match" do
  *expect(@user.will_authenticate?("password")).to eq(true)*
end
~~~

### Task 3

ZADANIE: Zapoznanie się z mechanizmem `before`/`after` przy testach jednostkowych. Należy uzupełnić poprawne wartości w asercjach i uzupełnić metodę `before` ustawiającą dane do testu. Repozytorium zwraca tylko listy otwarte.
ROZWIĄZANIE:
~~~
before(:each) do
  @repository = ListRepository.new

  opened = List.create(:name => "Opened List")
  closed = List.create(:name => "Closed List")
  *closed.close!*

  *@repository.add(opened)*
  *@repository.add(closed)*
end

it "not available lists should not be retrieved from repository" do
  expect(@repository.all.count).to eq(*1*)
  expect(@repository.all.first.name).to eq(*"Opened List"*)
end
~~~

## GUI Tests

### Task 1

ZADANIE: Kilka literówek do poprawki na rozgrzewkę w trzech plikach.
ROZWIĄZANIE:

Scenariusz:
~~~
Scenario: Log in to the application
  Given I am on log* *in page
  When I type "krystian" into username field
  And I type "te*z*t" into pas*s*word field
  And I click log* *in button
  Then I should see "Lists for krystian"
~~~

Kod źródłowy (LoginPage.rb):
~~~
def mapNameToSelecto*r*(name)
~~~

Kod źródłowy (pages.rb):
~~~
when 'log i*n*'
~~~

### Task 2

ZADANIE: Uzupełnienie scenariusza według gotowych i zaimplementowanych już kroków.
ROZWIĄZANIE:

Scenariusz:
~~~
Scenario: Closing list
  Given I am on lists page
  And I typed "My new list" into new list field
  And *I clicked add button*
  And I saw "My new list"
  And *I opened "My new list"*
  And I typed "My new task" into new task field
  And *I clicked add button*
  When *I mark checkbox near "My new task"*
  And I wait until pending requests will finish
  And *I go to lists page*
  Then *I should see "Lists for krystian"*
  And I should not see "My new list"
~~~

### Task 3

ZADANIE: Częściowa implementacja każdego fragmentu po trochu - opis scenariusza, implementacja kroków i poprawki literówek w jednym pliku (selektor XPATH jest z błędami).
ROZWIĄZANIE:

Scenariusz:
~~~
Scenario: Closing all tasks on the list
  Given I am on lists page
  And I typed "Someday it will be a closed list" into new list field
  And *I clicked add button*
  And I saw "Someday it will be a closed list"
  And I opened "Someday it will be a closed list"
  And I typed "My new task" into new task field
  And *I clicked add button*
  And *I cleared new task field*
  And I saw "My new task"
  And I typed "Another task" into new task field
  And *I clicked add button*
  And I cleared new task field
  And I saw "Another task"
  When I mark checkbox near "My new task"
  And I wait until pending requests will finish
  And *I mark checkbox near "Another task"*
  And I wait until pending requests will finish
  And I go to lists page
  Then *I should see "Lists for krystian"*
  And I should not see "Someday it will be a closed list"
~~~

Kod źródłowy (TaskListPage.rb):
~~~
def selectCheckBoxNearName(name)
  @session.find(
    :xpath,
    "/html/body/section/ul/li/div/span[contains(text(), '#{name}*'*)]/*.*./preceding-sibling::lab*e*l"
  )
end
~~~

Kod źródłowy (interactions.rb):
~~~
Given(/^I cleared (.+?)$/) do |name|
  *@page.type("", name)*
end
~~~