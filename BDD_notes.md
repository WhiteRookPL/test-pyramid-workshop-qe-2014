BDD
===

Wstęp - o testowaniu słów kilka
---

....moarmoar....

Pracując w TDD, na najbardziej początkowym etapie rozwoju aplikacji czasem nie wiadomo od czego zacząć.
W teorii istnieje jakaś wielka wizja końcowego produktu (albo nawet i nie tyle!), środowiska są przygotowane, ekipa
napojona kawą i nastaje czas by napisać pierwszy prosty test.
Ale czego miałby on dotyczyć?
Znajdujemy się w sytuacji, gdzie jest za wcześnie by dysponoweć na tyle granularną wiedzą by móc bez zawahania rozpocząć
implementację od konkretnego komponentu.

Co więcej, w początkowych fazach projektu często, nawet mimo stosowania TDD, można natrafić na sytuacje, w których
okazuje się, że poszliśmy w stronę, która jakimś sposobem okazała się być niezgodna z założeniami strony klienckiej.
Szkoda, że nikt wcześniej nie był łaskaw o tym nas poinformować.

BDD jest szkieletem pozwalającym na scharakteryzowanie działania aplikacji w postaci *zachowań (behaviors)* uznanych za
poprawne, które program powinien przejawiać.

W BDD, każde zachowanie definiowane jest w języku zbliżonym do naturalnego. Każdy przypadek testowy definiowany jest
jako opowieść (celowe nawiązanie do user story), definiująca co system robić powinien. Jest to bardzo ważna zmiana w
stosunku do innych podejść z kliku względów.

Po pierwsze, istnieje możliwość specyfikacji zachowań w ramach rozmowy z klientem lub inną osobą pełniącą rolę właściciela
produktu.
Osoba nie musi być "techniczna", ze względu na duże zmniejszenie bariery językowej.

Po drugie, duże korzyści płyną również dla pracy z punktu widzenia developera.
Można z pomocą BDD zadawać sobie pytanie "co jest najważniejszą z kolei rzeczą, której ten system jeszcze nie robi?".
Zadając sobie tego typu pytania pozwala na
odkrycie wartości biznesowej funkcjonalności do zaimplementowania i nadania im na tej podstawie priorytetu. Udzielając
odpowiedzi na te pytania tak naprawdę formułuje się przypadki testowe w dialekcie BDD: "System powinien...".

W miejsce, gdzie w TDD w naszej sieć testów znajdowałby się `TodoCreationTest`, w BDD umieszcza się
`TodoCreationBehavior`.

Gdzie w TDD mielibyśmy do czynienia z:

```ruby
def test_todo_creation
    todo = Todo.new
    assert_equal todo.isDone, false
    todo.setContent("Zrób zakupy")
    assert_equal todo.getContent, "Zrób zakupy"
    todo.toggleDone
    assert_equal todo.isDone, true
end
```

W BDD mamy:

```ruby
# Opis zachowań (niech strona kliencka zdefiniuje czego wymaga od aplikacji)
Właściwość: tworzenie
    W celu stworzenia listy zadań
    Jako użytkownik
    Chcę tworzyć nowe zadania

    Szablon scenariusza: Puste zadanie
        Zakładając chęć dodania nowego zadania
        Jeżeli dodam nową zadanie do listy
        Wtedy nowe zadanie nie powinno być oznaczone jako 'zrobione'
        Oraz nowe zadanie nie powinno posiadać treści

    Szablon scenariusza: zadanie z treścią
        Zakładając chęć dodania nowego zadania
        Oraz wpisanie 'Zrób zakupy' jako treści zadania
        Jeżeli dodam nową zadanie do listy
        Wtedy nowe zadanie nie powinno być oznaczone jako 'zrobione'
        Oraz nowe zadanie powinno posiadać treść 'Zrób zakupy'

    Szablon scenariusza: Ukończenie zadanigit a
        Zakładając istniejące zadanie
        Jeżeli oznaczę zadanie jako wykonane
        Wtedy zadanie powinno widnieć jako wykonane

# Definicja kroków (niech programista określi co aplikacja musi wykonać by zrealizować dane zachowanie)
Zakładając /chęć dodania nowego zadania/ do
    todo = Todo.new
end

Zakładając /wpisanie '(.*)' jako treści zadania/ do |s|
    todo.setContent(s.to_s)
end

Wtedy /nowe zadanie powinno posiadać treść '(.*)'/ do |s|
    s.to_s.should == todo.getContent
end

Jeżeli /oznaczę zadanie jako wykonane/ do
    todo.toggleDone
end

# itd...
```

