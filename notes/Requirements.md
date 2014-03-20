# Pomysł

## Lista zadań do wykonania

Nasz klient, to bogaty, zmanierowany prezes firmy farmacetycznej, który chce robić efektywnie zakupy. Ma niestety problemy z pamięcią. Zawsze zapomina co ma kupić, lecytyna nie pomaga. Pomóc w zapamiętywaniu ma prosta aplikacja webowa. Dzięki niej nie będzie musiał z pustymi rękami wracać do domu, gdzie czeka na niego zmierzła żona.

### Wymagania

- Wielu użytkowników.
  - Każdy ma własne konto.
- CRUD dla zadań do wykonania.
  - Zadanie ma opis, datę i status binarny (zrobione/niezrobione).
- CRUD dla list z zadaniami.
  - Zadania komponują się w listy.
  - Użytkownik może mieć wiele list.
- Lista, która posiada wszystkie elementy zrobione znika z GUI.

### Twist

- Można zobaczyć zamknięte listy.
- Za pomocą jednego przycisku otwieramy wszystkie elementy na liście.
  - Idea cyklicznych list z zakupami, tzw. lista ponownie otwarta.