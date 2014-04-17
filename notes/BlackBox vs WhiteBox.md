# Testowanie białoskrzynkowe i czarnoskrzynkowe
Są to dwa różne, obecnie najpopularniejsze, podejścia do weryfikacji działania systemów lub aplikacji.

Różnice pomiędzy nimi polegają na ilości i rodzaju wiedzy o systemie wymaganej do jego przetestowania.

Wyniki badane są pod kątem zgodności z oczekiwaniami zdefiniowanymi w ramach poszczególnych testów.

## Testowanie czarnoskrzynkowe
Metodyka ta rozpatruje możliwe dane wejściowe dla aplikacji i weryfikuje otrzymane wyniki.

Można w uproszczeniu stwierdzić, iż testy czarnoskrzynkowe odpowiadają na pytanie "Co aplikacja robi?".

Nie rozpatruje się w tym przypadku technicznych aspektów realizacji poszczególnych funkcjonalności ani procesów czy transformacji danych jakie prowadzą do osiągnięcia wyznaczonego celu.

Większość testów czarnoskrzynkowych opiera się na interakcjach z GUI lub API w przypadku serwisów.

Przykładem testu czarnoskrzynkowego może być test end to end funkcjonalności aplikacji, która polega na przesłaniu wiadomości od jednego użytkownika do drugiego.

Test tego typu definiowany byłby pojęciami takimi jak:

- Loguję się jako użytkownik X.
- Naciskam przycisk "wyślij wiadomość".
- Wybieram z menu rozwijanego użytkownika Y.
- Wpisuję treść wiadomości.
- Naciskam przycisk "wyślij".
- Wylogowuję się.
- Loguję się jako użytkownik Y.
- Naciskam na przycisk "Nowe wiadomości".
- W liście wiadomości znajduje się nowa wiadomość od użytkownika X.
- Naciskam na najnowszą wiadomość.
- Wiadomość zawiera treść, którą wysłał użytkownik X.

Innym przykładem jest test integracyjny, sprawdzający komunikację pomiędzy dwoma współpracującymi systemami.

Załóżmy, że użytkownik życzy sobie otrzymać wszystkie zdjęcia kotów z repozytorium mediów przy pomocy osobnego systemu pełniącego rolę wyszukiwarki.
Pojęcia, których możnaby się było spodziewać w tego typu teście to np.:

(Przygotowanie)

- Umieszczam w repozytorium mediów 20 zdjęć kotów wraz z metadanymi.

(Właściwy test)

- Wpisuję w wyszukiwarce termin "kot".
- W liście wyników widnieje 20 zdjęć.

## Testowanie białoskrzynkowe
Metodyka ta zwraca uwagę na wszelkie szczegóły techniczne związane z procesem prowadzącym do osiągnięcia założonych wyników. 

W uproszczeniu można stwierdzić, iż testy białoskrzynkowe odpowiadają na pytanie "Jak aplikacja realizuje swoje funkcjonalności?".

Pisanie tego typu testów otwiera umożliwia znacznie bardziej wyrafinowaną weryfikację zachowań systemu, ponieważ znajdują się w strefie udostępniającej pełne spektrum technicznych szczegółów.

Przykładem testów białoskrzynkowych mogą być testy jednostkowe w dialekcie TDD lub BDD.

Załóżmy dwa obiekty typu: `acc1` i `acc2` typu `BankAccount`.

(_lepszy przykład?_)

Na tym poziomie operuje się pojęciami typu:
- Inicjalizuję obiekt `acc1 = BankAccount.withBalance(200)`.
- Inicjalizuję obiekt `acc2 = BankAccount.withBalance(10)`.
- Dokonuję wywołania `acc1.transfer(acc2, 50)`.
- Oczekuję, iż `acc2.balance() == 60`.
- Oczekuję, iż `acc1.balance() == 150`.

## Zastosowanie, zalety i wady
### Testy czarnoskrzynkowe
Testy czarnoskrzynkowe są łatwe w użyciu i czytelne. Można na ich podstawie w bardzo prosty sposób stwierdzić czy aplikacja spełnia swoje zadanie.

Dzięki prostocie pomysłu testowania 'od zewnątrz', QA są w stanie w relatywnie krótkim czasie stworzyć zautomatyzowaną sieć wysokopoziomowych testów (GUI, e2e) skutecznie strzegących przed regresjami.

W tym kontekście nasuwa się wniosek, iż dobrze napisane testy czarnoskrzynkowe przez swoją czytelność stanowić mogą ważny element raportów na temat postępów prac dla interesariuszy biznesowych.

Należy jednak pamiętać, iż zewnętrzne warstwy aplikacji są najcześciej poddawane zmianą, na które testy czarnoskrzynkowe są niezwykle wrażliwe.
Wiąże się to z ich kruchością i potrzebą utrzymywania i przede wszystkim dostosowywania do wszelkich zmian formatu danych wejściowych lub sposobu ich wprowadzania.

### Testy białoskrzynkowe
Niezaprzeczalnie najwększymi zaletami testów białoskrzynkowych jest ich głęboki wgląd w domenę aplikacji oraz gruntowność w pokryciu przypadków brzegowych. Dodatkowym plusem jest ich stabilność, która stanowi odzwierciedlenie stabilności kodu domenowego aplikacji.

Dokładność i informatywnosć testów białoskrzynkowych czyni je idealnym źródłem wiedzy dla developerów.
Jeżeli team developerski przejmuje od kogoś projekt, zyskuje dużą dawkę pewności i swobody w jego rozwoju jeżeli ma do dyspozycji solidną sieć testów białoskrzynkoych.
Oznacza to dla nich skrócony czas wdrażania się w technikalia oraz zapewnienie, że zostaną poinformowani gdy ich zmiany naruszą utrzymanie niezmienników kluczowych dla domeny systemu.

Testy 'od wewnątrz' oczywiście również wymagają utrzymywania - zmiany staja się potrzebne w przypadku modyfikacji zachowań związanych z logiką biznesową.
Dodatkową ich wadą jest bardzo ścisłe powiązanie z testowanym kodem, niezbędne do osiągnięcia pełnego potencjału wglądu w jego domenę. Wiąże się to z potrzebą postawienia całej aplikacji na odpowiedniej platformie, wraz ze wszystkimi niezbędnymi narzędziami po to by móc uruchomić przygotowany dla niej zestaw testów białoskrzynkowych.

### Zastosowanie: czego używać?
Odpowiedź na to pytanie nie jest binarna, lecz raczej definiowana suwakiem, gdzie z jednej strony stoi rozwój, wsparcie i ponowne wykorzystywanie komponentów aplikacji przez developerów, a z drugiej realizacja celów biznesowych, termin dostarczenia, docelowa grupa odbiorców i platforma (aplikacja webowa dla pracowników biura? Program na systemie wbudowanym do obsługi urządzeń wolnostojących? etc.).

Na potrzeby tej prezentacji warto powiedzieć, iż dla wiekszości scenariuszy odpowiednim rozwiązaniem będzie zastosowanie odpowiedniej kombinacji obydwu rodzajów testów.

(_Coś więcej by się tu przydało..._)