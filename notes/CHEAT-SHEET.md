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

- `rake db:migrate`
- `rake db:test:clone`
- `rake bower:install`
- `rails generate rspec:install`
- `rake spec`
- `rails server`
- `bundle install`
- `RUN_GUI_TESTS.bat`
- `RUN_BDD.bat`
- `RUN_UT.bat`
- `START_SERVER.bat`
- `RESTORE.bat`
- `BDD_*.bat` lub `UT_*.bat` lub `GUI_*.bat`
- `PREPARE_APPLICATION.bat`
- `PREPARE_GUI_TESTS.bat`

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

- `RUN_GUI_TESTS.bat`
- `RUN_BDD.bat`
- `RUN_UT.bat`
- `START_SERVER.bat`
- `RESTORE.bat`
- `BDD_*.bat` lub `UT_*.bat` lub `GUI_*.bat`
- `PREPARE_APPLICATION.bat`
- `PREPARE_GUI_TESTS.bat`

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

TODO

### Task 2

TODO

### Task 3

TODO

### Task 4 *

TODO: Zadanie ma być do napisania od zera.

### Task 5 *

TODO: Zadanie ma być do napisania od zera.

## Unit Tests

### Task 1

TODO

### Task 2

TODO

### Task 3

TODO

## GUI Tests

### Task 1

TODO

### Task 2

TODO

### Task 3

TODO