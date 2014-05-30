# ŚCIĄGA

## Ruby i Logika Domenowa

- Nowa zmienna: `a = 'Nowa zmienna'`
- Dla każdego elementu w tablicy: `[ 1, 2, 3 ].each { |element| puts element }`
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

## Workflow

- Uruchom skrypt dla aktualnego zadania w katalogu głównym, np.: `BDD_1.bat`
- Otwórz plik `STARTING-POINT.md`
- Wykonaj zadanie i zweryfikuj jego poprawność
- Wróć do poprzedniego stanu przed następnym zadaniem za pomocą `RESTORE.bat`

## Komendy

- Zamknięcie aktualnie uruchomionej komendy `CTRL-C`.
- Uzupełnienie nazwy pliku lub katalogu `TAB`.
- `RUN_GUI_TESTS.bat`
- `RUN_BDD.bat`
- `RUN_UT.bat`
- `START_SERVER.bat`
- `RESTORE.bat`
- `BDD_*.bat` lub `UT_*.bat` lub `GUI_*.bat`

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