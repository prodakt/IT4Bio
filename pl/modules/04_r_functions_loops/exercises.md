# Część treningowa — funkcje i pętle warunkowe

W tym module przechodzimy z poziomu „używania gotowych funkcji” do poziomu **tworzenia własnych narzędzi analitycznych**.

Do tej pory korzystałeś m.in. z:
- `mean()`
- `plot()`
- `summary()`

Teraz nauczysz się:
- pisać **własne funkcje**,
- przekazywać do nich argumenty,
- sterować działaniem programu za pomocą **instrukcji warunkowych**.

---

# Funkcje

## Co to jest funkcja?

Funkcja to fragment kodu, który:

- wykonuje określone zadanie,
- może przyjmować dane wejściowe (argumenty),
- może zwracać wynik.

Dzięki funkcjom:
- unikamy powtarzania kodu,
- upraszczamy analizę,
- budujemy własne narzędzia bioinformatyczne.

---

## Składnia funkcji w R

Ogólna postać funkcji:

```r
nazwa_funkcji <- function(argument1, argument2, ...) {
  
  # ciało funkcji (co ma zrobić)
  
  return(wynik)
}
```

---

## Najprostsza funkcja (bez argumentów)

```r
hello <- function() {
  print("Hello world!")
}
```

Wywołanie:

```r
hello()
```

---

## Funkcja z argumentem

```r
hello_name <- function(name) {
  print(paste("Hello", name))
}
```

Wywołanie:

```r
hello_name("Jan")
```

---

## Funkcja zwracająca wynik

```r
add_numbers <- function(a, b) {
  wynik <- a + b
  return(wynik)
}
```

Wywołanie:

```r
add_numbers(5, 3)
```

---

## Ta sama funkcja — wersja uproszczona

```r
add_numbers <- function(a, b) {
  a + b
}
```

W R ostatnia linia funkcji jest automatycznie zwracana.

---

## Argumenty funkcji — ważne informacje

Argumenty mogą:

- mieć wartości domyślne:

```r
power <- function(x, p = 2) {
  x^p
}
```

- być opcjonalne,
- być różnego typu (liczby, tekst, wektory, data.frame).

---

## Ćwiczenia — funkcje (do wykonania samodzielnie)

Wykonaj poniższe zadania:

### 1. Napisz funkcję, która:

- przyjmuje wektor liczbowy,
- zwraca:
  - średnią,
  - minimum,
  - maksimum.

---

### 2. Napisz funkcję, która:

- przyjmuje tabelę danych,
- wyświetla:
  - `head()`
  - `tail()`

---

### 3. Napisz funkcję, która:

- przyjmuje wektor,
- zwraca jego logarytm (`log()` lub `log2()`),
- pozwala ustawić podstawę logarytmu jako argument.

---

### 4. Napisz funkcję, która:

- przyjmuje tabelę `TabRozklady` lub `TabGeny`,
- oblicza średnią dla wybranej kolumny (podanej jako argument).

---

# Pętle i instrukcje warunkowe

## Co to jest instrukcja warunkowa?

Instrukcja warunkowa pozwala:

- wykonać kod tylko wtedy, gdy spełniony jest warunek,
- sterować przebiegiem programu.

---

## Instrukcja `if`

```r
x <- 10

if (x > 5) {
  print("x jest większe niż 5")
}
```

---

## Instrukcja `if ... else`

```r
x <- 3

if (x > 5) {
  print("duże")
} else {
  print("małe")
}
```

---

## Instrukcja `if ... else if ... else`

```r
x <- 7

if (x < 5) {
  print("małe")
} else if (x < 10) {
  print("średnie")
} else {
  print("duże")
}
```

---

## Pętla `for`

Pętla pozwala wykonać operację wiele razy.

```r
for (i in 1:5) {
  print(i)
}
```

---

## Połączenie pętli i warunków

```r
wektor <- c(1, 5, 10, 20)

for (i in wektor) {
  if (i < 10) {
    print("małe")
  } else {
    print("duże")
  }
}
```

---

# Ćwiczenia — pętle i warunki (do wykonania samodzielnie)

## 1. Klasyfikacja wartości (if)

Napisz kod, który:

- sprawdza jedną wartość liczbową,
- wypisuje:
  - `"low"` jeśli < 5
  - `"medium"` jeśli 5–10
  - `"high"` jeśli > 10

---

## 2. Klasyfikacja wektora (for + if)

Napisz pętlę, która:

- przechodzi przez wektor liczb,
- przypisuje każdej wartości kategorię:
  - `"low"`
  - `"medium"`
  - `"high"`

---

## 3. Zastosowanie do tabeli (ważne!)

Wybierz jedną tabelę:

- `TabRozklady`
- `TabGeny`
- `iris`

Następnie:

- napisz pętlę `for`,
- przejdź przez wszystkie wiersze,
- na podstawie jednej kolumny przypisz kategorię,
- zapisz wynik do nowej kolumny.

---

## 4. Wersja funkcji

Przepisz powyższe zadanie do postaci funkcji:

- funkcja przyjmuje tabelę,
- funkcja zwraca tabelę z nową kolumną.

---

# Podsumowanie i propozycje ćwiczeń

Po wykonaniu tej części student powinien:

- rozumieć czym jest funkcja i jak ją definiować,
- potrafić przekazywać argumenty do funkcji,
- rozumieć działanie `if`, `if else`,
- umieć używać pętli `for`,
- łączyć funkcje, pętle i warunki w jednym zadaniu.

---

## Zadanie końcowe (mini)

Na koniec wykonaj jedno z poniższych:

### Wariant A (TabRozklady)

- sklasyfikuj wartości `rnorm`:
  - `"low"`, `"medium"`, `"high"`
- zapisz wynik w nowej kolumnie

---

### Wariant B (TabGeny)

- sklasyfikuj geny według długości:
  - `"short"`, `"medium"`, `"long"`
- zapisz wynik w nowej kolumnie

---

### Wariant C (iris)

- sklasyfikuj próbki według długości płatków (`Petal.Length`)

---

💡 Wskazówka:  
Najpierw zrób to „na piechotę”, a potem przepisz do funkcji.

To dokładnie ten sposób pracy, który wykorzystuje się w realnych analizach bioinformatycznych.


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

W tym zadaniu student pracuje na przygotowanej wcześniej tabeli ekspresji genów, która została udostępniona w repozytorium kursu (katalog `data` plik `counts_matrix.tab`).

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

Student otrzymuje tabelę ekspresji o dużym rozmiarze (katalog `data` plik `counts_matrix.tab`), zawierającą:

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

Każdy student powinien **zaraz po wczytaniu tabeli** wybrać do analizy **inną liczbę wierszy**, zależnie od swojego numeru indeksu.

Aby uzyskać wynik powtarzalny, ale różny dla każdego studenta, należy użyć własnego numeru indeksu jako ziarna losowości (`set.seed()`), a następnie wylosować liczbę wierszy z zakresu od **30000 do 60000**.

Dzięki temu:
- każdy student analizuje inny podzbiór danych,
- liczba analizowanych wierszy jest duża,
- wynik jest powtarzalny i możliwy do odtworzenia.

W dalszej analizie należy używać tylko tak wybranego fragmentu tabeli.

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
