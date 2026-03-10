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

3. **Dane biologiczne z baz danych**

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

### Przykład

```
head(dane)
str(dane)
summary(dane)
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

# Ćwiczenia wstępne — praca na własnej tabeli

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

# Ćwiczenia dodatkowe — dane wbudowane w R

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

# Zadanie na zaliczenie modułu

Każdy student wykonuje wszystkie wybrane zadania i **wspólnie oceniamy kompletność wykonania wszystkich zadań w procentach**.
Podstawa to sktyp z zadaniami wstępnymi, każde z 2 zadań na zaliczenie ocenianie po 50%. 
---

# Zadanie 1 — Analiza pliku GTF/GFF (ENSEMBL)

Pobierz plik adnotacyjny genomu z bazy **ENSEMBL**.

Przykład:

```
Homo_sapiens.GRCh38.113.gtf.gz
```

Po pobraniu:

1. rozpakuj plik
2. wczytaj go do R jako tabelę (podpowiedź: wczytaj GTF - nawet bez rozpakowamia - za pomocą bibloteki rtracklayer funkcją import.gff(), następnie przekonwerstuj na tabelę)
3. 

---

## Analiza danych

Oblicz następujące statystyki:

- liczba wszystkich genów
- liczba genów kodujących białka
- liczba genów niekodujących
- liczba wszystkich transkryptów
- liczba genów na poszczególnych chromosomach

---

## Statystyki długości genów

Oblicz:

- minimalną długość genu
- maksymalną długość genu
- średnią długość genu
- medianę długości genu

---

## Statystyki liczby egzonów

Oblicz:

- minimalną liczbę egzonów
- maksymalną liczbę egzonów
- średnią liczbę egzonów
- medianę liczby egzonów

---

## Wykresy

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

# Zadanie 2 — Analiza wyników BLAST

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

## Wczytanie danych

Wczytaj tabelę do R jako:

```
BLAST_res
```

---

## Czyszczenie danych

1. Usuń rekordy z `NA` w kolumnie percent identity.
2. W kolumnie `E-value` zamień `NA` na wartość `1`.

---

## Statystyki

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

---

## Wykresy

Wykonaj:

### Histogram długości alignmentów

```
hist()
```

### Wykres pudełkowy identyczności sekwencji

```
boxplot()
```

### Wykres punktowy

zależność:

```
score vs percent identity
```

Na wykresie zaznacz punkty o:

```
E-value = 0
```

---

# Podsumowanie

W skrypcie należy umieścić:

- wczytanie danych
- czyszczenie danych
- obliczenie statystyk
- co najmniej 3 wykresy
- krótkie podsumowanie wyników w komentarzu.
