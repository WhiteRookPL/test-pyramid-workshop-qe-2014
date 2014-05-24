# TDD

## Czym jest TDD?
Test driven development to nieskomplikowana praktyka, pozwalająca na demonstrowanie braków funkcjonalności lub istnienia błędów *przed* rozpoczęciem pisania kodu mającego ten stan rzeczy poprawić.
Efektem pracy w takim trybie jest m.in. zestaw automatycznych testów, zabezpieczających Twój kod przed wprowadzaniem regresji.

> Regresją nazywa się rodzaj błędu, powodujący zaprzestanie działania części lub całości systemu po jakimś zdarzeniu tj. zacommitowanie kodu do CI, wprowadzenie patcha, upgrade systemu, zmiana czasu.

Process TDD można na wysokim poziomie sprowadzić do następujących czynności:

- Napisz test udowadniający istnienie błędu lub demonstrujący nowy feature.
- Uruchom test, zaobserwuj jego porażkę.
- Napisz minimalną ilość jak najprostszego kodu umożliwiającego przejście nowego testu.
    - Podczas uzyskiwania wiedzy na temat problemu w ramach pisania kodu możesz zmieniać test.
- Uruchom test ponownie by zaobserwować jego sukces.
- Uruchom cały zestaw testów aby sprawdzić czy nie wprowadzono regresji.
- Refaktoryzuj napisany kod.

Proces ten zobrazować można prostym diagramem:
![Proces TDD](assets/redgreenrefactor.png)

## Zalety TDD:

- Zapewnia utrzymanie niezmienników w kodzie - wszystko musi zawsze działać!
- Utrzymuje kod prostym i o dobrej strukturze.
    - Kod łatwo testowalny wspiera luźne powiązanie komponentów.
    - Testy jednostkowe zapobiegają degradacji struktury kodu, każde odejście od dobrych praktyk sprawia trudność w testowaniu.
- Testy jednostkowe dokumentują kod, stanowiąc przykłady jego użycia.
- Drobna granulacja testów pozwala na szybkie wprowadzanie zmian w logice.
    - Szybki feedback na temat efektów wywołanych przez zmiany.
    - Zmniejszenie obaw związanych z przeoczonymi efektami ubocznymi w odległych częściach aplikacji.
    - Można dokonywać refaktoryzacji i eksperymentować bez ryzyka.

## Wada TDD:

- Wymaga dużej samodyscypliny, której można się nauczyć jedynie stosując TDD. :)

## Częste problemy:

> Nie wiem od czego zacząć.

Zacznij od najprostszych, najbardziej podstawowych elementów.
Tworzenie testów dla bazowych 'klocków', z których składa się aplikacja spowoduje, że przyjdą Ci do głowy pomysły wskazujące na to jak mogłyby działać bardziej skomplikowane konstrukcje.

> Nie wiem jakich danych użyć do testów.

Stwórz kilka przypadków - przykładowo, implementując algorytm pierwiastkowania zastosuj jakieś liczby naturalne.
Następnie pomyśl o warunkach brzegowych - sytuacjach 'wariackich'. Co się stanie jeśli podasz `MaxInt` albo `MinInt`?
Jak zachować ma się algorytm dla liczb ujemnych (nowy pomysł - ma obsługiwać liczby zespolone)?
Co się stanie jeżeli podasz mu liczbę zmiennoprzecinkową?

> Moje testy robią się nieczytelne.

Najprawdopodobniej sprawdzasz zbyt wiele w ramach jednego testu. Rozdziel go na kilka pomniejszych, z których każdy stanowi osobną logiczną całość.
Istnieją radykalne paradygmaty mówiące, iż jeden test powinien zawierać jedną asercję.

> Mam pisać testy jednostkowe na wszystko?

I tak i nie. Testy jednostkowe powinny skupiać się na domenie problemu, który rozwiązujesz. W tym zakresie optymalne byłoby 100% pokrycia kodu. Należy unikać jednak testowania jednostkowo:

- getterów/setterów lub pól klas,
- GUI,
- warstwy persystencji,
- zasobów sieciowych.

Należy jednak pamiętać o tym, iż powyższe elementy powinny być pokryte testami innego rodzaju (integracyjne, e2e, testy GUI).Nie powinny one również zawierać logiki biznesowej. Umieszcznie logiki w tych komponentach jest złą praktyką i owocuje kiepską testowalnością kodu oraz obniżoną wykrywalnością błędów.

> Co z bibliotekami lub komponentami zewnętrznymi?

Sprawdź, czy nie mają własnych zestawów testów jednostkowych. Jeżeli nie, testuj gdy nie masz pewności jak dana biblioteka/komponent działa. Praktykę tę nazywa się testowaniem eksploratywnym.
Oczywiście Twoja część kodu komunikująca się z komponentami zewnętrznymi musi być dokładnie pokryta testami aby mieć pewność, że ewentualne błędy nie są spowodowane przez Ciebie.