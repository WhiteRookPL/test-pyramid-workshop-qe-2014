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

## Requirements

*Must:*
- Short, concise and with only bare minimum for spreading the knowledge.
- Should define each level of pyramid of tests.
- Should define concepts of gathering requirements, user stories.
- Should define responsibilities for each level of tests and integration between them.

*Should:*
- It should have interactive samples, diagrams.
- Less text, more interactivity.

*Nice-to-have:*
- Nice and "catchy" look.

## Opinions

@elkorn said:
> As to the presentation - my proposition is to use reveal.js.
We could try to incorporate the master-slave functionality (where the clients automatically follow the slides on the presenter's machine)- this should be discussed.

> As to interactivity- we have to define what is being understood by that. Will the user manipulate the diagrams somehow?