# Moduł 2 — Operacje na danych w R

## Cel modułu

W tym module uczymy się **praktycznej pracy z danymi tabelarycznymi w R**.

Po zakończeniu modułu student powinien umieć:

- wczytać dane z pliku
- sprawdzić strukturę danych
- wybierać kolumny i wiersze
- filtrować dane według warunków
- tworzyć nowe kolumny
- liczyć podstawowe statystyki
- przygotować proste wykresy
- przygotować podsumowanie danych biologicznych

Wszystkie operacje wykonujemy na strukturze danych **data.frame**.

---

# Dane używane w tym module

Do ćwiczeń wykorzystamy:

1. **Tabelę wygenerowaną w module 1**

```
TabRozklady.csv
```

lub

```
TabGeny.csv
```

Każdy student posiada własną wersję tej tabeli.

2. **Przykładowy zbiór danych dostępny w R**

```
iris
```

R zawiera wiele wbudowanych zestawów danych, które służą do nauki analizy danych i demonstracji działania funkcji statystycznych oraz graficznych. Są one dostępne domyślnie po uruchomieniu R i nie wymagają pobierania żadnych plików z internetu.

W systemie R znajduje się kilkadziesiąt takich tabel, pochodzących z różnych dziedzin, np.:

- biologii,
- ekologii,
- ekonomii,
- meteorologii,
- medycyny.

Jednym z najbardziej znanych przykładów jest zbiór danych **`iris`**, który zawiera pomiary morfologiczne kwiatów trzech gatunków kosaćców (*Iris*).

Tabela `iris` zawiera:

- **150 obserwacji (wierszy)**,
- **5 kolumn**.

Cztery pierwsze kolumny zawierają **pomiar długości i szerokości elementów kwiatu (w centymetrach)**:

- `Sepal.Length` — długość działki kielicha  
- `Sepal.Width` — szerokość działki kielicha  
- `Petal.Length` — długość płatka  
- `Petal.Width` — szerokość płatka  

Ostatnia kolumna (`Species`) zawiera **nazwę gatunku**:

- `setosa`
- `versicolor`
- `virginica`

Możemy zobaczyć pierwsze wiersze tej tabeli poleceniem:

```
head(iris)
```

Przykładowy wynik:

```
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
```

W podstawowych ćwiczeniach wykorzystamy tabele wygenerowane na zaliczenie modułu 1 (*TabGeny* lub *rozklady*) lub ewentualnie ten zbiór danych do przećwiczenia podstawowych operacji analizy danych oraz tworzenia wykresów.

3. **Dane biologiczne z baz danych** - do zadań na zaliczenie modułu 2

- plik adnotacyjny genomu **GTF/GFF (ENSEMBL)**
- tabela wyników **BLAST (HitTable)**

---

# Podstawowe funkcje pracy z tabelami

## Sprawdzenie struktury danych

Najważniejsze funkcje do eksploracji danych:

```
head()
tail()
dim()
str()
summary()
```

### Opis

- `head()` – wyświetla pierwsze wiersze tabeli  
- `tail()` – wyświetla ostatnie wiersze  
- `dim()` – zwraca liczbę wierszy i kolumn  
- `str()` – pokazuje strukturę obiektu  
- `summary()` – podaje podstawowe statystyki


### Przykłady podstawowych operacji na danych

```
head(dane)
str(dane)
summary(dane)
table(dane$kolumna)

```

W skrypcie powinny się znaleźć przykłady **podstawowych funkcji do wyświetlania i podsumowania danych**, a także pierwszych prostych operacji na zbiorach danych.

Podczas przygotowywania skryptu należy zwracać uwagę na:

- **czytelność i czystość kodu**,  
- **liczne komentarze wyjaśniające działanie funkcji**,  
- opis możliwych **argumentów (atrybutów) funkcji**, które pozwalają modyfikować jej działanie.

Dzięki temu skrypt stanie się **czytelną dokumentacją wykonywanej analizy**, do której można wrócić po dłuższym czasie.

Przykłady:

```
head(dane) 
# funkcja head() wyświetla początek zbioru danych 
# domyślnie pokazuje pierwsze 6 wierszy

head(dane, n = 100)
# liczba wyświetlanych wierszy może być zmieniona 
# poprzez użycie argumentu n

tail(dane)
# odpowiednik funkcji head(), ale wyświetla koniec zbioru danych

ostatnich10 <- tail(dane, n = 10)
# wynik działania funkcji można przypisać do zmiennej
# tutaj zapisujemy ostatnie 10 wierszy tabeli do zmiennej "ostatnich10"
```


---

# Wybór kolumn i wierszy

W R można wybierać dane na kilka sposobów.

### Składnia

```
dataframe[wiersze, kolumny]
```

### Przykłady

```
dane[1:10,]
dane[,1]
dane[,c(1,3)]
dane$column
```

### Opis

- `dane[1:10,]` – pierwsze 10 wierszy  
- `dane[,1]` – pierwsza kolumna  
- `dane[,c(1,3)]` – kolumna 1 i 3  
- `dane$column` – dostęp do kolumny po nazwie

---

# Filtrowanie danych

Filtrowanie polega na wyborze wierszy spełniających określony warunek.

### Operatory logiczne

```
>
<
>=
<=
==
!=
```

### Łączenie warunków

```
&
|
```

### Przykład

```
dane[dane$Length > 1000,]
```

---

# Wyszukiwanie elementów

Czasami chcemy znaleźć pozycje elementów spełniających warunek.

### Funkcje

```
which()
%in%
```

### Przykład

```
which(dane$Length > 1000)
dane[dane$Chromosome %in% c(1,2,3),]
```

---

# Tworzenie nowych kolumn

Nową kolumnę można dodać bardzo łatwo.

### Przykład

```
dane$new_column <- dane$Length / 1000
```

---

# Podstawowe statystyki

Najczęściej używane funkcje statystyczne:

```
mean()
median()
min()
max()
sd()
```

### Przykład

```
mean(dane$Length)
median(dane$Length)
```

---

# Tabele częstości

Funkcja:

```
table()
```

### Przykład

```
table(dane$Biotype)
```

---

# Sortowanie danych

Funkcja:

```
order()
```

### Przykład

```
dane[order(dane$Length),]
dane[order(dane$Length, decreasing=TRUE),]
```

---

# Podstawowe wykresy

W tym module używamy **podstawowych funkcji graficznych R**.

### Wykres punktowy

```
plot()
```

### Histogram

```
hist()
```

### Wykres pudełkowy

```
boxplot()
```

### Wykres kołowy

```
pie()
```

---

# Ćwiczenia podstawowe — praca na własnej tabeli

Wczytaj tabelę z poprzedniego modułu.

### Zadania

1. Wczytaj plik `TabRozklady.csv` lub `TabGeny.csv`.
2. Sprawdź strukturę danych (`str()`).
3. Wyświetl pierwsze 10 wierszy.
4. Wybierz dwie kolumny.
5. Wybierz wiersze spełniające warunek.
6. Oblicz średnią jednej kolumny.
7. Policz częstość występowania jednej kategorii.
8. Posortuj tabelę według jednej kolumny.
9. Dodaj nową kolumnę z transformacją danych.

---

# Ćwiczenia podstawowe — dane wbudowane w R

W R dostępnych jest wiele przykładowych zestawów danych.

Użyjemy zbioru:

```
iris
```

### Zadania

1. Sprawdź strukturę danych `iris`.
2. Oblicz średnią długość płatka (`Petal.Length`).
3. Narysuj wykres punktowy:

```
Petal.Length vs Petal.Width
```

4. Narysuj histogram długości płatków.
5. Narysuj wykres pudełkowy długości płatków dla poszczególnych gatunków.

---

# Zadania na zaliczenie modułu

Każdy student wykonuje wszystkie wybrane zadania i **wspólnie oceniamy kompletność wykonania wszystkich zadań w procentach**.
Podstawa to sktyp z zadaniami wstępnymi, każde z 2 zadań na zaliczenie ocenianie po 50%. 
---

## Zadanie 1 — Analiza pliku GTF/GFF (ENSEMBL)

Pobierz plik adnotacyjny genomu z bazy **ENSEMBL** (https://www.ensembl.org/index.html).
Aby zróżnicować analizowane dane pomiędzy studentami, użyj **chromosomu odpowiadającego miesiącowi Twojego urodzenia**.
Możesz zrobić to na dwa sposoby:

1. Pobierz pełny plik adnotacyjny genomu (GTF), np.:

```
Homo_sapiens.GRCh38.113.gtf.gz
```

Następnie wczytaj go do R i **wybierz tylko rekordy dotyczące chromosomu o numerze równym miesiącowi Twojego urodzenia**.
*Uwaga: pełny plik GTF jest duży, dlatego operacja może wymagać większej ilości pamięci RAM oraz kilku minut przetwarzania.*

2. Alternatywnie możesz pobrać z bazy ENSEMBL plik GTF zawierający tylko jeden chromosom — ten, którego numer odpowiada **Twojemu miesiącowi urodzenia**.
W obu przypadkach dalszą analizę wykonuj wyłącznie na rekordach dotyczących wybranego chromosomu.

Po pobraniu:

1. rozpakuj plik (opcjonalnie, jeżeli np. chcesz obejrzeć jego strukturę lub wczytać bezpośrednio jako tabelę - wersja trochę trudniejsza)
2. wczytaj go do R jako tabelę (podpowiedź: wczytaj GTF - nawet bez rozpakowamia - za pomocą bibloteki ```rtracklayer``` funkcją ```import.gff()```)
3. przekonwertuj tabelę adnotacyjną z GRanges na ramkę danych.

---

### Analiza danych

Oblicz następujące statystyki:

- liczba wszystkich genów
- liczba genów kodujących białka
- liczba genów niekodujących
- liczba wszystkich transkryptów
- liczba genów na poszczególnych chromosomach

---

### Statystyki długości genów

Oblicz:

- minimalną długość genu
- maksymalną długość genu
- średnią długość genu
- medianę długości genu

---

### Statystyki liczby egzonów

Oblicz:

- minimalną liczbę egzonów
- maksymalną liczbę egzonów
- średnią liczbę egzonów
- medianę liczby egzonów

---

### Wykresy

Wykonaj następujące wykresy:

1. histogram długości genów

```
hist()
```

2. wykres pudełkowy długości genów

```
boxplot()
```

porównaj:

- geny kodujące białka
- lncRNA

3. wykres udziału biotypów

```
pie()
```

---

## Zadanie 2 — Analiza wyników BLAST

Wykonaj przeszukiwanie bazy **RefSeq proteins** narzędziem **BLASTp**.

Przykładowa kwerenda:

```
hemoglobin[Title] AND "Solanum tuberosum"[Organism]
```

Przykładowa sekwencja:

```
NP_001275068
```

Ustaw:

```
max hits = 1000
```

Zapisz wynik w formacie **HitTable**.

---

### Wczytanie danych

Wczytaj tabelę do R jako:

```
BLAST_res
```

---

### Czyszczenie danych

1. Usuń rekordy z `NA` w kolumnie percent identity.
2. W kolumnie `E-value` zamień `NA` na wartość `1`.

---

### Statystyki

Policz statystyki dla:

- `E-value`
- `percent identity`
- `coverage`
- długości alignmentu

Oblicz:

```
min
max
mean
median
```

ale **tylko dla podzbioru danych**, w którym długość alignmentu spełnia warunek:

- jest **większa lub równa numerowi porządkowemu dnia miesiąca**, w którym wykonujesz analizę,  
- oraz **mniejsza lub równa numerowi dnia Twojego urodzenia w roku**.

Innymi słowy, analizuj tylko te rekordy, dla których:

```
[dzień miesiąca wykonania analizy] ≤ alignment length ≤ [dzień Twojego urodzenia]
```

Przykład:

jeżeli analizę wykonujesz **8 dnia miesiąca**, a Twój dzień urodzenia to **23**,  
to statystyki należy policzyć tylko dla rekordów spełniających warunek:

```
8 ≤ alignment length ≤ 23
```

---

### Wykresy

Wykonaj:

#### Histogram długości alignmentów

```
hist()
```

#### Wykres pudełkowy identyczności sekwencji

```
boxplot()
```

#### Wykres punktowy

zależność:

```
score vs percent identity
```

Na wykresie zaznacz punkty o:

```
E-value = 0
```

---

## Podsumowanie

W skrypcie należy umieścić:

- wczytanie danych
- czyszczenie danych
- obliczenie statystyk
- co najmniej 3 wykresy
- krótkie podsumowanie wyników w komentarzu.
