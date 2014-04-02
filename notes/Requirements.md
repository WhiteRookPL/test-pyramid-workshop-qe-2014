# Pomysł

## Lista zadań do wykonania

Nasz klient, to bogaty, zmanierowany prezes firmy farmacetycznej, który chce robić efektywnie zakupy. Ma niestety problemy z pamięcią. Zawsze zapomina co ma kupić, lecytyna nie pomaga. Pomóc w zapamiętywaniu ma prosta aplikacja webowa. Dzięki niej nie będzie musiał z pustymi rękami wracać do domu, gdzie czeka na niego wściekła żona.

### Persona

TODO

### Wymagania

- Użytkownik ma nazwę i hasło.
  - Nazwa użytkownika jest nazwą konta.
  - Użytkownik może się zalogować na własne konto.
  - Listy należą do użytkownika.
  - Użytkownik może mieć wiele list.
- Listy można tworzyć.
  - List ma nazwę i datę.
  - Do listy należą elementy.
  - Lista może być pusta.
  - Do listy może należeć wiele elementów.
- Elementy można tworzyć.
  - Element ma nazwę, datę i stan (zrobione/nie zrobione).
- Lista jest zamknięta kiedy wszystkie jej elementy są zrobione.
- Lista zamknięta jest niedostępna dla użytkownika.

### Twist

- Można mieć dostęp do zamkniętych list.
- Zamknięta lista może zostać ponownie otwarta.
  - Idea cyklicznych list z zakupami, tzw. lista ponownie otwarta.