# Moduł 3 — Data Visualization in R

## Cel modułu

W tym module uczymy się **wizualizacji danych w R**.  
Najpierw student ćwiczy **podstawowe wykresy w środowisku base R**, a następnie wykonuje **pierwszy bardzo prosty wykres w `ggplot2`**.

Po zakończeniu tej części modułu student powinien umieć:

- narysować podstawowe wykresy w base R,
- modyfikować wygląd wykresu,
- dodawać tytuły, opisy osi, kolory, legendę i dodatkowe elementy,
- zapisać wykres do pliku,
- rozumieć różnicę między base R a `ggplot2`,
- zainstalować i załadować bibliotekę `ggplot2`,
- narysować jeden prosty wykres w `ggplot2`.

---

## Dane używane w tym module

Do ćwiczeń można użyć **jednej wybranej tabeli** z poprzednich modułów lub danych wbudowanych w R.

Student wybiera **jedną tabelę główną**, na której ćwiczy większość procedur:

- `TabGeny.csv`
- `TabRozklady.csv`
- `TabBLAST.csv`
- `TabGTF.csv`
- `iris`

Dopuszczalne jest także testowanie wybranych funkcji na **małych wektorach tworzonych ręcznie**, jeżeli pomaga to zrozumieć działanie funkcji.

---

## Organizacja pracy

W tej części modułu należy:

- pracować we własnym skrypcie semestralnym,
- tworzyć liczne komentarze i opisy,
- zapisywać kolejne przykłady wykresów,
- testować różne warianty parametrów funkcji,
- zachować porządek kodu i podział na sekcje.

W skrypcie warto utworzyć sekcje, np.:

```r
############################################################
# MODUŁ 3 — WYKRESY BASE R
############################################################

############################################################
# 1. PROSTE WYKRESY
############################################################

############################################################
# 2. OPISY I KOLORY
############################################################

############################################################
# 3. ZAPIS DO PLIKU
############################################################

############################################################
# 4. PIERWSZY WYKRES W GGPLOT2
############################################################
```

---

## Wprowadzenie — po co rysujemy wykresy?

Wykresy służą do:

- szybkiego obejrzenia danych,
- sprawdzenia rozkładu wartości,
- porównania grup,
- pokazania zależności między zmiennymi,
- wychwycenia wartości odstających,
- przygotowania wyników do prezentacji lub publikacji.

W bioinformatyce i analizie danych biologicznych wykres jest często **pierwszą interpretacją wyniku**.

---

## Podstawowe funkcje wykresów w base R

W tej części należy przećwiczyć następujące funkcje i procedury.

---

### 1. Funkcja `plot()`

Jest to podstawowa funkcja do rysowania wykresów w R.  
Może działać na wiele sposobów, zależnie od tego, jaki obiekt podamy.

#### Najprostsze przykłady

```r
plot(5)
plot(c(2,5,7,2))
plot(1:10)
```

#### Wykres zależności dwóch zmiennych

```r
plot(x = dane$kolumna1, y = dane$kolumna2)
```

#### Co należy przećwiczyć

- `plot(wektor)`
- `plot(x, y)`
- `plot(..., type = "...")`
- `plot(..., main = "...")`
- `plot(..., xlab = "...", ylab = "...")`
- `plot(..., col = "...")`
- `plot(..., pch = ...)`

#### Parametr `type`

Student powinien przećwiczyć różne warianty:

- `"p"` — punkty
- `"l"` — linia
- `"b"` — punkty i linia
- `"o"` — punkty nałożone na linię
- `"h"` — pionowe odcinki
- `"s"` — schodki
- `"n"` — bez rysowania punktów, tylko osie

#### Przykłady

```r
plot(wektor, type = "l")
plot(wektor, type = "b")
plot(wektor, type = "o")
plot(wektor, type = "h")
plot(wektor, type = "n")
```

---

### 2. Opisy wykresu

Bardzo ważne jest, aby wykres miał czytelny opis.

#### Najważniejsze argumenty

- `main` — tytuł wykresu
- `xlab` — opis osi X
- `ylab` — opis osi Y
- `col` — kolor
- `pch` — kształt punktów
- `lty` — typ linii
- `lwd` — grubość linii

#### Przykład

```r
plot(
  wektor,
  type = "o",
  main = "Przykładowy wykres",
  xlab = "Numer próbki",
  ylab = "Wartość",
  col = "blue"
)
```

---

### 3. Funkcja `title()`

Jeżeli wykres został już narysowany, można później dodać lub zmienić tytuł.

#### Przykład

```r
plot(wektor)
title("Nowy tytuł wykresu")
```

#### Wariant rozszerzony

```r
title(
  main = "Kiełkowanie ziaren jęczmienia",
  col.main = "darkgreen",
  font.main = 2,
  cex.main = 1.1
)
```

---

### 4. Dodawanie elementów: `lines()` i `points()`

Po narysowaniu wykresu można dodać kolejne dane do tego samego rysunku.

#### Funkcja `lines()`

Dodaje linię do istniejącego wykresu.

#### Funkcja `points()`

Dodaje punkty do istniejącego wykresu.

#### Przykład

```r
plot(wektor, type = "o", col = "blue")
lines(w2, col = "red", lty = 4)
points(w2, pch = 17, col = "red")
```

#### Co należy przećwiczyć

- dorysowanie drugiego zestawu danych,
- dorysowanie samych punktów,
- dorysowanie samej linii,
- użycie innego koloru i innego typu linii.

---

### 5. Funkcja `legend()`

Legenda pozwala opisać elementy wykresu.

#### Przykład

```r
legend(
  "topleft",
  c("kiełkujące", "obumarłe"),
  col = c("blue", "red"),
  pch = 21:22,
  lty = 1:2,
  cex = 0.8
)
```

#### Co należy przećwiczyć

- legendę w lewym górnym rogu,
- legendę w prawym górnym rogu,
- legendę z własnymi etykietami,
- legendę dla dwóch lub trzech serii danych.

---

### 6. Histogram `hist()`

Histogram pokazuje **rozkład wartości liczbowych**.

#### Przykłady

```r
hist(wektor)
hist(dane$kolumna_numeryczna)
hist(dane$kolumna_numeryczna, col = "green")
```

#### Co należy przećwiczyć

- histogram dla jednej kolumny liczbowej,
- zmianę koloru,
- dodanie tytułu i opisu osi.

---

### 7. Wykres pudełkowy `boxplot()`

Boxplot pokazuje:

- medianę,
- kwartyle,
- rozrzut danych,
- wartości odstające.

#### Przykłady

```r
boxplot(wektor)
boxplot(dane$kolumna_numeryczna)
boxplot(kolumna ~ grupa, data = dane)
```

#### Co należy przećwiczyć

- prosty boxplot jednej zmiennej,
- porównanie dwóch grup,
- nadanie kolorów i tytułu.

---

### 8. Wykres słupkowy `barplot()`

Barplot przedstawia wartości liczbowe lub liczebności.

#### Przykłady

```r
barplot(c(1,4,6,13,7))
barplot(table(dane$kolumna_kategoryczna))
```

#### Co należy przećwiczyć

- prosty barplot,
- barplot z kolorami,
- barplot z tabeli częstości,
- barplot dla danych w macierzy lub `data.frame`.

---

### 9. Wykres kołowy `pie()`

Pie plot pokazuje udział kategorii.

#### Przykłady

```r
pie(c(2,4,6,8))
pie(table(dane$kolumna_kategoryczna))
pie(table(dane$kolumna_kategoryczna), col = rainbow(5))
```

#### Co należy przećwiczyć

- prosty pie plot,
- pie plot z kolorami,
- pie plot dla tabeli częstości.

---

### 10. Kolory i palety

Student powinien sprawdzić różne sposoby kolorowania wykresów.

#### Przykłady

```r
col = "red"
col = c("red", "blue", "green")
col = rainbow(7)
col = heat.colors(7)
col = gray(seq(0, .9, len = 7))
col = rgb(1, 0, 0)
```

#### Co należy przećwiczyć

- pojedynczy kolor,
- kilka kolorów,
- palety automatyczne,
- kolorowanie punktów zależnie od grupy.

---

### 11. Zapisywanie wykresów do plików

Wykresy należy umieć zapisać do pliku.

#### Podstawowa procedura

1. otworzyć urządzenie graficzne,
2. narysować wykres,
3. zamknąć urządzenie funkcją `dev.off()`.

#### Najważniejsze funkcje

- `pdf()`
- `png()`
- `tiff()`
- `jpeg()`
- `bmp()`
- `dev.off()`

#### Przykład

```r
pdf("pierwszy_wykres.pdf")
plot(wektor)
dev.off()
```

#### Wariant TIFF

```r
tiff("wykres.tiff", res = 300, width = 200, height = 150, units = "mm")
plot(wektor)
dev.off()
```

#### Co należy przećwiczyć

- zapis do PDF,
- zapis do PNG,
- zapis do TIFF,
- sprawdzenie, gdzie plik się zapisał (`getwd()`).

---

### 12. Wykresy wielowarstwowe na realnych danych

W tej części należy przećwiczyć:

- wykres dwóch zmiennych,
- kolorowanie punktów według grupy,
- wyróżnianie wybranych rekordów,
- opisywanie punktów funkcją `text()`.

#### Przydatne funkcje

- `plot()`
- `points()`
- `lines()`
- `text()`

---

## Zadania obowiązkowe do samodzielnego przećwiczenia

Wybierz **jedną tabelę główną** spośród:

- `TabGeny`
- `TabRozklady`
- `TabBLAST`
- `TabGTF`
- `iris`

Na tej tabeli wykonaj poniższe ćwiczenia.

---

### Ćwiczenie 1 — Przygotowanie danych

1. Wczytaj tabelę do R.
2. Sprawdź jej strukturę (`str()`).
3. Wyświetl pierwsze i ostatnie wiersze (`head()`, `tail()`).
4. Wybierz **jedną kolumnę liczbową** i przypisz ją do zmiennej `wektor`.
5. Jeżeli tabela zawiera drugą kolumnę liczbową, przypisz ją do zmiennej `w2`.

---

### Ćwiczenie 2 — Podstawowe warianty `plot()`

Na wybranym `wektorze` wykonaj:

1. `plot(wektor)`
2. `plot(wektor, type = "l")`
3. `plot(wektor, type = "b")`
4. `plot(wektor, type = "o")`
5. `plot(wektor, type = "h")`
6. wykres z własnym tytułem, opisami osi i kolorem

---

### Ćwiczenie 3 — Dodawanie elementów do wykresu

Jeżeli masz drugą kolumnę liczbową (`w2`):

1. narysuj `plot(wektor, type = "o")`
2. dodaj `lines(w2, ...)`
3. dodaj `points(w2, ...)`
4. dodaj legendę

Jeżeli nie masz drugiej kolumny liczbowej, utwórz ją ręcznie lub użyj innej tabeli.

---

### Ćwiczenie 4 — Histogram

1. narysuj histogram wybranej kolumny liczbowej,
2. zmień kolor histogramu,
3. dodaj tytuł i opisy osi.

---

### Ćwiczenie 5 — Boxplot

1. narysuj prosty boxplot jednej zmiennej,
2. jeżeli tabela zawiera grupy/kategorie, porównaj dwie grupy na boxplocie.

Przykładowe grupy:

- `grupa` w `TabRozklady`
- `Biotype` w `TabGeny`
- `Species` w `iris`

---

### Ćwiczenie 6 — Barplot

1. wykonaj tabelę częstości dla jednej kolumny kategorycznej,
2. narysuj barplot tej tabeli,
3. zmień kolory słupków.

---

### Ćwiczenie 7 — Pie plot

1. przygotuj tabelę częstości jednej kolumny kategorycznej,
2. narysuj pie plot,
3. użyj własnych kolorów lub `rainbow()`.

---

### Ćwiczenie 8 — Kolorowanie punktów według grupy

1. utwórz wektor kolorów zależny od kategorii,
2. narysuj wykres punktowy dwóch zmiennych,
3. pokoloruj punkty zgodnie z grupą.

Przykłady:

- `grupa` w `TabRozklady`
- `Chromosome` albo `Biotype` w `TabGeny`
- `Species` w `iris`

---

### Ćwiczenie 9 — Zapis wykresów do plików

Zapisz co najmniej:

1. jeden wykres do PDF,
2. jeden wykres do PNG,
3. jeden wykres do TIFF.

---

## Pierwszy kontakt z ggplot2

Po przećwiczeniu podstawowych wykresów w base R student powinien wykonać **jeden bardzo prosty wykres w `ggplot2`**.

Nie jest to jeszcze główna część modułu — to tylko wprowadzenie do środowiska, które będzie rozwijane w zadaniach zaliczeniowych.

---

### Instalacja i załadowanie biblioteki

Należy sprawdzić, czy pakiet jest zainstalowany, a następnie go załadować.

Podstawowe polecenia:

```r
install.packages("ggplot2")
library(ggplot2)
```

---

### Sprawdzenie danych

Przed rysowaniem wykresu należy ponownie sprawdzić strukturę danych:

- `head(dane)`
- `str(dane)`
- `summary(dane)`

---

### Pierwszy prosty wykres w ggplot2

Student ma wykonać **jeden prosty wykres** dla swojej tabeli.

Przykładowe możliwości:

- wykres punktowy dwóch zmiennych liczbowych,
- histogram jednej zmiennej liczbowej,
- boxplot jednej zmiennej względem grupy.

To ma być **najprostszy możliwy wykres**, bez rozbudowanej estetyki.

---

## Zadanie obowiązkowe zamykające tę część modułu 

Na wybranej tabeli (`TabGeny`, `TabRozklady`, `TabBLAST`, `TabGTF` lub `iris`) student musi wykonać i zapisać w skrypcie:

1. co najmniej **5 różnych wariantów wykresu `plot()`**,  
2. co najmniej **1 wykres z użyciem `lines()` i `points()`**,  
3. **1 histogram**,  
4. **1 boxplot**,  
5. **1 barplot**,  
6. **1 pie plot**,  
7. zapis co najmniej **2 wykresów do plików**,  
8. **1 bardzo prosty wykres w `ggplot2`**.

Każdy wykres powinien posiadać:

- czytelny tytuł,
- opisy osi (jeżeli to potrzebne),
- sensowny dobór danych,
- komentarz w skrypcie wyjaśniający, co przedstawia.

---

## Uwaga organizacyjna

Ta część modułu służy do **samodzielnego przećwiczenia technik rysowania wykresów**.  
Zadania zaliczeniowe będą stanowiły **rozwinięcie tych umiejętności**, już w większym stopniu w środowisku `ggplot2`.

Dlatego na tym etapie najważniejsze jest:

- zrozumienie działania funkcji,
- samodzielne przetestowanie różnych wariantów parametrów,
- nauczenie się zapisywania wykresów,
- wyrobienie nawyku opisywania wykresów i kodu.
