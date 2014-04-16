# Presentation

- rola QA w agile
  - QA to nie tylko tester
  - każdy z członków zesp dba o jakość (pisanie testów, poprawianie buildów?)
- slajd o UCD
   - wprowadzenie
     - dlaczego akurat ten kontekst wybrano
     - są inne podejścia takie jak np. API-centric, Data-centric ale je olewamy
- co to są persony

- zbieranie wymagań
  - język domenowy

- podział testowania systemu
  - testy z zewnątrz
  - testy od wewnątrz

- BDD
  - story BDD -> AS a User I WANT TO
  - spec BDD  -> GIVEN/WHEN/THEN
  - 2 sposoby zapisu tego samego

- TDD
  - coto, pocoto
- Podsumowanie
  - Jakie korzyści płyną z automatyzacji
  - Kiedy jakie testy stosować

- GUI
  - pejcz obdżekt
  - selektory
    - css: omówić szczegółowo
    - xpath: wspomnieć

- Spec by example
  - fitnesse
  - definition
  - brief description - executable specification
  - presented after the rest of topics so that we can expect the attendants to have some knowledge

- Podsumowanie
  - Jakie role pełnią testy
    - safety harness (regresje i zabezpieczenie przy refactoringu)
    - eksploracja bibliotek
    - konkretyzacja domeny
    - testy czarnoskrzynkowe (e2e, integr) vs białoskrzynkowe (BDD, TDD)
      - czarnoskrz wiedzą co system robi
      - białoskrz wiedzą jak system to robi

- Twist
  - zobaczmy jakie mogą zaistnieć problemy podczas utrzymania siatki testów

- moderowana dyskusja na temat wymagań
 - dyskusja ma prowadzić do krystalizacji powyższej listy
 - obydwie strony mają dążyć do tego celu
 - zwracanie uwagi na język domenowy
 - *TODO* przygotować słowniczek języka domenowego

### User story
@Narrya, potrzebne są user story do każdego wymagania (nie wiemy jak ma być granulacja)

- 1 user story wypełnione w 100%, na "rozbieg"
- 1 user story jako template (wypełnij luki)
- 1 user story do wymyślenia od zera
- 1-2 dla nas na kickoff, z resztą sobei poradzimy

### BDD
- analogiczine jak powyżej
  - wypełnij luki === znajdź i popraw błędy w template

### TDD
- zrobione w większości
- do przesiania / dopisania
  - musimy mieć pokryte wszystkie BDDki wybrane do zadań (nie może zaistnieć sytuacja, że jesteśmy 'na lodzie' na szkoleniu)

### GUI
*TODO*

### Misc
- tagi na repo dla BDD
  - 1 tag per zadanie
    - jak zadanie ci nie idzie, przełączasz się na inne i masz odp albo resetujesz sobie workspace
  - *TODO* baty do poruszania się po tagach
  - *TODO* wombat do uruchamiania testów (abstrakcja CLI)

### Twist

- [x] Można mieć dostęp do zamkniętych list.
- [x] Zamknięta lista może zostać ponownie otwarta.
  - Idea cyklicznych list z zakupami, tzw. lista ponownie otwarta.