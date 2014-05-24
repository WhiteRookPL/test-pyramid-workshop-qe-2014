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

# Słowniczek

- Lista - grupa zadań, uszeregowana według określonego porządku, zebrana razem ze względu na wspólny obszar/pochodzenie.
- Zadanie - określenie czynności lub rzeczy do wykonania / przygotowania.
- Użytkownik - osoba korzystająca z list zadań.
- Stan zadania - informacja o tym czy zadanie zostało wykonane czy jeszcze oczekuje na wykonanie.
- Zadanie zrobione / Zadanie zamknięte - zadanie wykonane.
- Zadanie nie zrobione / Zadanie otwarte - zadanie oczekujące do wykonania.
- Zamknięta lista - jest to grupa zadań, która posiada wszystkie elementy zamkniete.
- Otwarta lista - jest to grupa zadań, z których przynajmniej jeden jest otwarty.

# User Story

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

# Komendy

1. `rake db:migrate`
2. `rake db:test:clone`
3. `rake bower:install`
4. `rails generate rspec:install`
5. `rake spec`
6. `rails server`
7. `run_gui_tests.bat`
8. `run_bdd.bat`
8. `run_ut.bat`
8. `start.bat`
9. `RESTORE.bat`
10 `BDD_*.bat` lub `UT_*.bat` lub `GUI_*.bat`
11. `bundle install`

# Code - Cheat Sheets

## Ruby

TODO

## Capybara

TODO

## RSpec

TODO

# Detailed time plan

TODO

# Assignments - Details

## Acceptance Tests

TODO

## Unit Tests

TODO

## GUI Tests

TODO