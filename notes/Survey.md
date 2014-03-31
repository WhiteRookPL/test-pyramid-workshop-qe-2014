# Ankieta

1. Opisz krótko swoje doświadczenie, wielkość projektów (ile osób, ile platform, jak długo) w jakich pracowałeś oraz metodyki z którymi miałeś/miałaś do czynienia (Scrum, Waterfall, XP, PRINCE).
2. Przygotuj "user story" czynność przygotowywania kawy.
3. Popraw 2 błędy (składniowy i logiczny) w poniższym przykładzie (język Ruby), który zliczy ilość jabłek:

Kod zadania:

```
koszyk = [ 'jabłko', 'banan', 'jabłko', 'pomarańcza', 'jabłko', 'banan' ]
ilosc_jablek = 1

koszyk.each do |element|
  if element == 'jabłko'
    ilosc_jablek += 1
  end
```

Kod poprawny:

```
koszyk = [ 'jabłko', 'banan', 'jabłko', 'pomarańcza', 'jabłko', 'banan' ]
ilosc_jablek = 0

koszyk.each do |element|
  if element == 'jabłko'
    ilosc_jablek += 1
  end
end
```