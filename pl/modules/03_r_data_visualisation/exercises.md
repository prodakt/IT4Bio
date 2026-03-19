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

Do ćwiczeń można użyć **jednej wybranej tabeli** z poprzednich modułów lub danych wbudowanych w R (`TabGeny`, `TabRozklady`, `TabBLAST`, `TabGTF` lub `iris`).

Student wybiera **jedną tabelę główną**, na której ćwiczy większość procedur. W razie problemów z własną tabelą z katalogu "data" można pobrać jedną z:

- `TabGeny.csv`
- `TabRozklady.csv`
- `BLAST_HitTab.txt`
- `TabGTFgenes.zip`
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

Generowanie wykresu bezpośrednio z kodu do pliku graficznego na dysku obejmuje 3 polecenia:
```r
pdf("pierwszy_wykres.pdf")  
# otwarcie urządzenia graficznego (graphics device) - w tym przypadku typu PDF
# (czyli inicjalizacja strumienia wyjścia dla grafiki wektorowej do pliku),
# które przechwytuje wszystkie kolejne operacje graficzne
# i zapisuje je jako grafikę wektorową w pliku PDF

plot(wektor)  
# wygenerowanie wykresu i zapisanie go do aktywnego urządzenia graficznego (device)
# (zamiast na ekran, trafia do otwartego urządzenia PDF)

dev.off()  
# zamknięcie aktywnego urządzenia graficznego i opróżnienie bufora (flush),
# finalizacja zapisu danych w urządzeniu, co skutkuje zapisaniem pliku na dysku
```
W oknie konsoli powinien pojawić się komunikat:
```
null device 
          1 
```


W skrócie:
```r
pdf("pierwszy_wykres.pdf")     # rysuj do pliku pdf
   plot(wektor)                # ten wykres
dev.off()                      # zapisz i zamknij
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



#### Formaty graficzne w R (graphics devices)


**Formaty wektorowe (zalecane do publikacji)**

- **`pdf()`**  
  → zapis do pliku PDF (grafika wektorowa)  
  → idealny do artykułów naukowych i raportów  

- **`svg()`**  
  → zapis do formatu SVG (Scalable Vector Graphics)  
  → przydatny do edycji w programach graficznych (np. Illustrator, Inkscape)  

- **`postscript()`**  
  → zapis do formatu PS/EPS  
  → starszy standard używany w publikacjach  

**Cechy formatów wektorowych:**
- brak utraty jakości przy skalowaniu  
- małe pliki dla prostych wykresów  
- idealne do publikacji naukowych  

---

**Formaty rastrowe (pikselowe)**

- **`png()`**  
  → bardzo popularny format do prezentacji i internetu  

- **`jpeg()` / `jpg()`**  
  → format stratny (kompresja), mniejszy rozmiar pliku  

- **`tiff()`**  
  → wysoka jakość, często wymagany przez czasopisma (np. 300 dpi)  

- **`bmp()`**  
  → format bez kompresji, rzadko używany  

**Cechy formatów rastrowych:**
- zapis jako piksele  
- jakość zależy od rozdzielczości (`res=`)  
- większe pliki przy wysokiej jakości  



**Najczęstsze zastosowania**

- `pdf()` → publikacje naukowe, raporty  
- `png()` → prezentacje, materiały dydaktyczne  
- `tiff(res = 300)` → artykuły naukowe (wymogi wydawnictw)  
- `svg()` → dalsza edycja grafiki  



**Ważna różnica**

- **PDF / SVG** → grafika wektorowa (linie, kształty)  
- **PNG / JPG / TIFF** → grafika rastrowa (piksele)  



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



### Instalacja i załadowanie biblioteki

Należy sprawdzić, czy pakiet jest zainstalowany, a następnie go załadować.

Podstawowe polecenia:

```r
install.packages("ggplot2")
library(ggplot2)
```


### Sprawdzenie danych
Przed rysowaniem wykresu należy ponownie sprawdzić strukturę danych:

- `head(dane)`
- `str(dane)`
- `summary(dane)`


### Składnia ggplot2 — podstawowa idea
W przeciwieństwie do `plot()` z base R, pakiet **ggplot2** działa według tzw. **Grammar of Graphics**.  
Oznacza to, że wykres buduje się **warstwowo**.

Podstawowy schemat wygląda tak:

```r
ggplot(dane, aes(x = zmienna1, y = zmienna2)) +
  geom_point()
```

Każdy element tej składni ma określoną funkcję:

#### `ggplot()`

Funkcja inicjująca wykres.  
Podajemy w niej **tabelę danych**, z której będą pobierane zmienne.

Przykład:

```r
ggplot(iris)
```

#### `aes()` — aesthetics

Funkcja `aes()` definiuje **mapowanie danych na elementy wykresu**.
Najczęściej określamy w niej:
- `x` — zmienna na osi X
- `y` — zmienna na osi Y
- `color` — kolor punktów zależny od zmiennej
- `fill` — wypełnienie
- `size` — wielkość punktów

Przykład:
```r
aes(x = Sepal.Length, y = Petal.Length)
```

oznacza:
- oś X → `Sepal.Length`
- oś Y → `Petal.Length`


#### `geom_*()` — geometria wykresu
Funkcje `geom_*()` określają **typ wykresu**.
Najczęściej używane:
- `geom_point()` — wykres punktowy
- `geom_histogram()` — histogram
- `geom_boxplot()` — wykres pudełkowy
- `geom_bar()` — wykres słupkowy
- `geom_line()` — wykres liniowy


### Przykład 1 — scatter plot (wykres punktowy)
Najprostszy wykres punktowy dla danych `iris`.

```r
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point()
```

Interpretacja:
- dane → `iris`
- oś X → długość działki kielicha
- oś Y → długość płatka
- każdy rekord → jeden punkt


#### Alternatywa dla danych z kursu
Jeżeli student pracuje na tabeli `TabRozklady`:

```r
ggplot(rozklady, aes(x = losowe, y = rnorm)) +
  geom_point()
```

Jeżeli student pracuje na tabeli `TabGeny`:

```r
ggplot(geny, aes(x = Exons, y = Length)) +
  geom_point()
```


### Przykład 2 — wykres słupkowy (bar plot)
Wykres słupkowy pokazuje **liczebność kategorii**.
Najprostszy przykład dla danych `iris`:

```r
ggplot(iris, aes(x = Species)) +
  geom_bar()
```

Interpretacja:
- oś X → gatunek rośliny
- wysokość słupka → liczba obserwacji


### Alternatywa dla danych z kursu
Tabela `TabGeny`:

```r
ggplot(geny, aes(x = Biotype)) +
  geom_bar()
```

Tabela `TabRozklady`:

```r
ggplot(rozklady, aes(x = grupa)) +
  geom_bar()
```

---

## Co student powinien zrozumieć na tym etapie

Na tym etapie ważne jest zrozumienie trzech elementów:
1️⃣ **Źródło danych**
```r
ggplot(dane)
```

2️⃣ **Mapowanie zmiennych na osie**
```r
aes(x = ..., y = ...)
```

3️⃣ **Typ wykresu**
```r
geom_point()
geom_bar()
```

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


## Uwaga organizacyjna

Ta część modułu służy do **samodzielnego przećwiczenia technik rysowania wykresów**.  
Zadania zaliczeniowe będą stanowiły **rozwinięcie tych umiejętności**, już w większym stopniu w środowisku `ggplot2`.

Dlatego na tym etapie najważniejsze jest:
- zrozumienie działania funkcji,
- samodzielne przetestowanie różnych wariantów parametrów,
- nauczenie się zapisywania wykresów,
- wyrobienie nawyku opisywania wykresów i kodu.

---

# Zadania na zaliczenie modułu 3 — wizualizacja danych w ggplot2

Na zakończenie modułu należy wykonać **dwa zadania z wykorzystaniem pakietu `ggplot2`**.  
Celem jest pokazanie, że student potrafi:
- przygotować dane do wizualizacji,
- dobrać odpowiedni typ wykresu,
- zastosować estetyki (`aes`) w `ggplot2`,
- przedstawić dane biologiczne w czytelnej formie graficznej.

Wykresy należy zapisać w skrypcie oraz **wyeksportować do plików graficznych**.

Można pracować na jednej z tabel wygenerowanych w poprzednich modułach:
- `TabGeny`
- `TabRozklady`
- `TabBLAST`
- `TabGTF`
- `iris`

Jeżeli tabela została zapisana jako plik CSV, należy ją najpierw wczytać do R.

---

# Zadanie 1 — wizualizacja własnej tabeli danych

W tym zadaniu należy przygotować **dwa wykresy opisujące strukturę danych w wybranej tabeli**.

Student może wybrać jedną z dwóch tabel:
- `TabRozklady`
- `TabGeny`

---

## Wariant A — tabela `TabRozklady`

Wykonaj dwa wykresy:

### 1. Scatter plot

Narysuj wykres punktowy zależności:
- `losowe` (oś X)
- `rnorm` (oś Y)

Estetyki wykresu:
- kolor punktów → `grupa`
- kształt punktów → `SampleNames`

Na wykresie powinny być widoczne:
- tytuł wykresu
- opisy osi
- legenda

---

### 2. Wykres liczebności prób

Przedstaw **liczebność obserwacji w poszczególnych próbach (`SampleNames`)**.

Można użyć jednego z wykresów:
- **barplot**
- **lollipop plot**

Wykres powinien zawierać:
- tytuł
- opisy osi
- czytelne kolory

---

## Wariant B — tabela `TabGeny`

Wykonaj dwa wykresy:

### 1. Scatter plot

Narysuj wykres punktowy zależności:
- `Exons` (oś X)
- `Length` (oś Y)

Estetyki wykresu:
- kolor punktów → `Biotype`
- kształt punktów → `Chromosome`

Wykres powinien zawierać:
- tytuł
- opisy osi
- legendę

---

### 2. Liczebność biotypów genów

Przedstaw **liczebność poszczególnych biotypów genów (`Biotype`)**.

Można użyć jednego z wykresów:
- **pie plot**
- **lollipop plot**
- **barplot**

Wykres powinien zawierać:
- tytuł
- legendę lub opisy kategorii

---

# Zadanie 2 — analiza biologiczna danych genów

W tym zadaniu pracujemy na tabeli **`TabGTF`** . Zmienna (lub tabela na dysku) wygenerowana była na zakończene poprzedniego modułu z pliku adnotacyjnego GTF lub GFF. Należy pamiętać, że znacznie łatwiej pracować jest na tabeli z całego genomu, wczytanej z formatu GTF za pmocą biblioteki `rtracklayer` oraz przefiltrowanej do tych rzędów, które odnoszą się do genów. Dodatkowo można uprościć sobie pracę, jeżeli wyeliminujemy z tabeli te rzędy, które nie dotyczą podstawowych chromosomów genomu i pozostawimy tylko te kolumny, które są dla nas istotne do narysowania wykresu. Wtedy tabela będzie znacznie mniejsza i czyteniejsza.
Należy przygotować **dwa wykresy pokazujące rozkład cech genów w genomie**.

---

## 1. Rozkład cech genów na chromosomach

Narysuj wykres pokazujący **rozkład genów w poszczególnych chromosomach**.

Można użyć jednego z wykresów:
- **boxplot**
- **violin plot**
- **połączenie boxplot + violin plot**

Na osi X powinny znajdować się:

```
Chromosome
```

Na osi Y można przedstawić jedną z cech:

- `Length` — długość genu
- `Exons` — liczba eksonów

### Kolorowanie chromosomów

Jeżeli na wykresie znajduje się **wiele chromosomów**, należy je pokolorować automatyczną skalą kolorów.
Chromosomy powinny być kolorowane **skalą tęczy** (np. `rainbow()`), tak aby łatwo odróżnić poszczególne kategorie.

---

## 2. Porównanie genów kodujących i niekodujących

Porównaj **geny kodujące białka (`protein_coding`) oraz geny niekodujące (`lncRNA`)**.
Przygotuj wykres pokazujący różnice między tymi grupami.

Można użyć jednego z wykresów:
- **violin plot**
- **boxplot**
- **połączenie violin plot + boxplot**

Na osi X powinny znajdować się:

```
Biotype
```

Na osi Y można przedstawić:

- `Length` — długość genu  
lub
- `Exons` — liczbę eksonów

Na wykresie powinno być widoczne porównanie przynajmniej dwóch grup:

- `protein_coding`
- `lncRNA`

---

# Wymagania techniczne

Każdy student musi:
1. użyć pakietu `ggplot2`,
2. przygotować **łącznie 4 wykresy** (2 w zadaniu 1 i 2 w zadaniu 2),
3. dodać:
- tytuł wykresu
- opisy osi
- legendę (jeżeli występują grupy)

4. zapisać przynajmniej **dwa wykresy do plików graficznych** (`PDF`, `PNG` lub `TIFF`).

---

# Co należy oddać

W skrypcie powinny znaleźć się:
- kod generujący wykresy,
- komentarze wyjaśniające kolejne kroki,
- zapis wykresów do plików.

Wykresy powinny być czytelne i poprawnie opisane.
