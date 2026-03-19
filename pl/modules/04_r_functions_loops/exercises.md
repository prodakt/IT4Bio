# Część treningowa
## Funkcje

---
## pętle warunkowe

## podumowanie i propozycje ćwiczeń


---
<!-- ---------------------------------------------------------------------------------------------------------------- -->
---


# Zadania na zaliczenie modułu 4 — funkcje i pętle warunkowe

Na zakończenie modułu należy wykonać **dwa zadania programistyczne**, których celem jest przećwiczenie:

- definiowania własnych funkcji,
- przekazywania argumentów do funkcji,
- zwracania wyników,
- stosowania instrukcji warunkowych,
- używania pętli do przetwarzania danych biologicznych.

Student powinien zapisać wszystkie rozwiązania w swoim skrypcie semestralnym, z wyraźnym podziałem na sekcje, opisami i komentarzami.

---

## Zadanie 1 — zestaw funkcji użytkowych i funkcji logicznych

Przygotuj następujący zestaw własnych funkcji użytkowych.

### 1. Funkcja podglądu danych

Napisz funkcję, która:
- przyjmuje tabelę danych jako argument,
- przyjmuje liczbę wierszy `n`,
- wyświetla pierwsze `n` i ostatnie `n` wierszy tabeli,
- opcjonalnie wypisuje informację, ile wierszy zostało pominiętych pośrodku.

Funkcja powinna łączyć działanie funkcji:
- `head()`
- `tail()`
w jedno wspólne narzędzie (ale nie musi korzystać z tych funkcji).

---

### 2. Funkcja interpretująca numer indeksu i datę urodzenia

Napisz funkcję, która:
- przyjmuje numer indeksu,
- przyjmuje datę urodzenia,
- analizuje te dane wejściowe,
- generuje w konsoli tekst opisujący parametry potrzebne do wyboru odpowiednich wariantów zadań z poprzednich modułów.

Funkcja powinna wypisywać w czytelnej formie m.in.:
- wprowadzone dane,
- dane rozłożone na czynniki przydatne do wyboru wariantu (rozłożony numer indeksu na poszczególne grupy, przeliczone dni z daty urodzenia),
- wariant danych,
- liczbę wierszy,
- liczbę prób lub liczbę chromosomów,
- inne parametry wynikające z przyjętych zasad różnicowania zadań.

---

### 3. Funkcja generująca tabelę `rozklady`

Przepisz generowanie tabeli `rozklady` z modułu 1 do postaci funkcji.

Funkcja powinna umożliwiać sterowanie co najmniej następującymi argumentami:
- liczbą wierszy,
- liczbą prób,
- zakresem wartości losowych,
- sposobem generowania nazw prób,
- parametrami rozkładu normalnego (np. średnia i odchylenie standardowe),
- liczbą grup.

Wynikiem działania funkcji powinna być poprawnie zbudowana tabela typu `data.frame`.

---

### 4. Funkcja generująca tabelę `geny`

Przepisz generowanie tabeli `geny` z modułu 1 do postaci funkcji.

Funkcja powinna umożliwiać sterowanie co najmniej następującymi argumentami:
- liczbą wierszy,
- liczbą chromosomów,
- zakresem długości genów,
- zakresem liczby egzonów,
- listą organizmów,
- listą biotypów.

Wynikiem działania funkcji powinna być poprawnie zbudowana tabela typu `data.frame`.

---

### 5. Funkcja klasyfikująca rekordy przy użyciu pętli warunkowej

Napisz funkcję, która:

- przechodzi po kolejnych rekordach tabeli,
- analizuje wybraną cechę,
- na podstawie warunków przypisuje kategorię,
- zwraca nowy wektor kategorii lub nową kolumnę do tabeli.

Do wykonania tej funkcji należy użyć:

- pętli `for`
- instrukcji:
  - `if`
  - `else if`
  - `else`

#### Przykładowe warianty klasyfikacji

Dla tabeli `TabRozklady`:

- `"low"`
- `"medium"`
- `"high"`

na podstawie wartości `rnorm` lub `losowe`

Dla tabeli `TabGeny`:

- `"short"`
- `"medium"`
- `"long"`

na podstawie długości genu

lub:

- `"few_exons"`
- `"many_exons"`

na podstawie liczby egzonów

---

## Wymagania do zadania 1

W skrypcie powinny znaleźć się:

- definicje wszystkich funkcji,
- przykłady ich użycia,
- komentarze wyjaśniające działanie argumentów,
- przynajmniej jeden przykład użycia pętli warunkowej do klasyfikacji rekordów.

---

## Zadanie 2 — uproszczona analiza różnic ekspresji

W tym zadaniu student pracuje na przygotowanej wcześniej tabeli ekspresji genów, która została udostępniona w repozytorium kursu.

### Ważna informacja

To zadanie przedstawia **uproszczony model analizy różnic ekspresji**.  
Jego celem jest zrozumienie pojęć takich jak:

- średnia ekspresja,
- `baseMean`,
- `fold change`,
- `log2FC`,
- `p-value`.

**Nie jest to pełny odpowiednik metod stosowanych przez pakiety bioinformatyczne takie jak DESeq2.**

To ćwiczenie ma pomóc zrozumieć logikę analizy danych ekspresyjnych, zanim przejdziemy do profesjonalnych narzędzi statystycznych.

---

## Tabela wejściowa — opis danych

Student otrzymuje tabelę ekspresji o dużym rozmiarze, zawierającą:

- **100000 wierszy** — każdy wiersz odpowiada jednemu genowi,
- kolumnę identyfikatora genu,
- **3 próbki kontrolne**,
- **3 próbki traktowane**.

Przykładowa struktura tabeli:

- `GeneID`
- `control_1`
- `control_2`
- `control_3`
- `treated_1`
- `treated_2`
- `treated_3`

### Jak interpretować tę tabelę?

- każdy **wiersz** reprezentuje jeden gen,
- każda **kolumna z próbką** zawiera poziom ekspresji tego genu w danej próbce,
- próbki `control_*` reprezentują warunek kontrolny,
- próbki `treated_*` reprezentują warunek eksperymentalny,
- wartości w komórkach są uproszczonym odpowiednikiem danych typu **count matrix**.

Oznacza to, że dla każdego genu mamy sześć pomiarów:

- trzy w warunku kontrolnym,
- trzy w warunku traktowanym.

Na tej podstawie można obliczyć podstawowe miary różnicy ekspresji między grupami.

---

## Dlaczego tabela ma aż 100000 wierszy?

Tabela została przygotowana celowo jako duży zbiór danych, aby:

- przyzwyczaić studentów do pracy z większymi tabelami,
- umożliwić zróżnicowanie analiz pomiędzy studentami,
- pokazać, że w bioinformatyce często nie analizuje się całego pliku naraz, lecz najpierw wybiera odpowiedni fragment danych.

### Zróżnicowanie między studentami

Każdy student powinien **zaraz po wczytaniu tabeli** wybrać do analizy **inną liczbę wierszy**, zależnie od swojego numeru indeksu.

Liczbę analizowanych wierszy należy ustalić według zasad podanych przez prowadzącego.  
Dzięki temu:

- każdy student będzie pracował na nieco innym podzbiorze danych,
- wyniki będą zróżnicowane,
- łatwiej będzie sprawdzić samodzielność wykonania zadania.

Po wybraniu odpowiedniego fragmentu tabeli dopiero na nim należy wykonywać dalsze obliczenia.

---

## Co należy obliczyć?

Na podstawie dostarczonej tabeli ekspresji należy przygotować zestaw funkcji, które obliczą następujące parametry dla każdego genu:

### 1. Średnia ekspresja w grupie kontrolnej

Funkcja powinna obliczać średnią z kolumn:

- `control_1`
- `control_2`
- `control_3`

---

### 2. Średnia ekspresja w grupie traktowanej

Funkcja powinna obliczać średnią z kolumn:

- `treated_1`
- `treated_2`
- `treated_3`

---

### 3. `baseMean`

Funkcja powinna obliczać średnią ekspresję ze wszystkich sześciu próbek razem.

---

### 4. `FC` (fold change)

Funkcja powinna obliczać stosunek średniej ekspresji w grupie traktowanej do średniej ekspresji w grupie kontrolnej.

Należy uwzględnić sytuacje szczególne, np.:

- dzielenie przez zero,
- bardzo małe wartości,
- potrzebę zastosowania prostego zabezpieczenia matematycznego.

To jest bardzo dobre miejsce do użycia instrukcji warunkowych.

---

### 5. `log2FC`

Funkcja powinna obliczać:

- logarytm o podstawie 2 z `FC`

---

### 6. `p-value`

Funkcja powinna obliczać uproszczone `p-value` porównujące próbki kontrolne i traktowane dla danego genu.

Można wykorzystać prosty test statystyczny odpowiedni dla tego typu ćwiczenia, np. porównanie dwóch grup wartości.

---

### 7. Klasyfikacja genów

Na podstawie uzyskanych wyników należy przygotować funkcję klasyfikującą geny do jednej z trzech kategorii:

- `UP`
- `DOWN`
- `NS`

Przykładowa logika klasyfikacji:

- `UP` — gen o podwyższonej ekspresji,
- `DOWN` — gen o obniżonej ekspresji,
- `NS` — gen nieistotny / bez istotnej zmiany.

Do wykonania tej funkcji należy użyć warunków logicznych.

---

## Wymaganie programistyczne

Obliczenia nie mogą polegać tylko na ręcznym wpisywaniu kolejnych poleceń.

W zadaniu należy:

- przygotować **osobne funkcje** dla poszczególnych parametrów,
- użyć **pętli** do przetworzenia wszystkich genów,
- zapisać wyniki do nowej tabeli.

Nowa tabela wynikowa powinna zawierać co najmniej:

- `GeneID`
- średnią ekspresję w kontroli
- średnią ekspresję w grupie treated
- `baseMean`
- `FC`
- `log2FC`
- `p-value`
- kategorię regulacji (`UP`, `DOWN`, `NS`)

---

## Wizualizacja wyników

Na podstawie uzyskanej tabeli wynikowej należy przygotować trzy proste wykresy:

### 1. Wykres typu MA-like

Wykres powinien przedstawiać zależność:

- oś X — `baseMean` lub `log2(baseMean + 1)`
- oś Y — `log2FC`

Celem wykresu jest pokazanie relacji między poziomem ekspresji a zmianą ekspresji.

---

### 2. Wykres typu volcano-like

Wykres powinien przedstawiać zależność:

- oś X — `log2FC`
- oś Y — `-log10(p-value)`

Celem wykresu jest jednoczesne pokazanie:

- wielkości zmiany ekspresji,
- istotności statystycznej.

---

### 3. Prosta heatmapa

Należy przygotować prostą mapę cieplną dla wybranego podzbioru genów, np.:

- genów o największej bezwzględnej wartości `log2FC`,
- genów istotnych według przyjętego progu.

Do heatmapy można użyć:

- surowych wartości ekspresji,
- lub wartości przekształconych, np. `log2(count + 1)`.

---

## Co należy oddać?

W skrypcie powinny znaleźć się:

- opis tabeli wejściowej,
- wybór analizowanego podzbioru danych,
- definicje wszystkich funkcji,
- użycie pętli do przetwarzania genów,
- tabela wynikowa,
- trzy wykresy końcowe,
- komentarze wyjaśniające kolejne kroki.

---

## Podsumowanie

W tym zadaniu student ma pokazać, że potrafi:

- napisać własne funkcje,
- stosować instrukcje warunkowe,
- używać pętli do przetwarzania danych biologicznych,
- obliczyć podstawowe parametry różnic ekspresji,
- przygotować pierwszą uproszczoną interpretację danych ekspresyjnych.
