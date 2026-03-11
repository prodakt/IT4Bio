# Moduł 1 — Ćwiczenia i zadania

## Setup (5 minut)
1. Uruchom RStudio.
2. Utwórz projekt (R Project) w folderze zajęć (katalogu roboczym) - procedura opcjonalna, ale polecana na komputerach, gdzie na jednym koncie pracuje wielu użytkowników.
3. Utwórz plik (np. `module1_practice.R` - będzie to plik tymczasowy lub do robienia notatek) i zapisz go w katalogu roboczym.

## Ćwiczenie 1 — Pierwsze polecenia i obiekty
- Utwórz wektor liczb i policz: średnią, medianę, min, max.
- Sprawdź typ i strukturę obiektu: `class()`, `str()`.

## Ćwiczenie 2 — Struktury danych
- Utwórz:
  - wektor znaków,
  - wektor logiczny,
  - listę zawierającą 3 różne obiekty,
  - prosty `data.frame`.

## Ćwiczenie 3 — Operacje na `data.frame`
Na prostym `data.frame`:
- wybierz 2 kolumny,
- przefiltruj wiersze po warunku z danej kolumny, tzn. zrób operację "wybierz te rzędy, które w kolumnie (nazwa lub numer) są większe lub mniejsze lub równe jakiejś wartości" (np. wybierz tylko te myszy, które są większe, niż 23g),
- policz podstawowe statystyki dla jednej kolumny,
- zrób prostą tabelę częstości (np. `table()`).

## Ćwiczenie 4 — Wykresy base R
- `hist()` dla zmiennej liczbowej
- `boxplot()` dla porównania grup
- `plot()` zależności 2 zmiennych

Zapisz wykresy do plików:
- `PNG` i `PDF` (z `dev.off()`)


------------------------------------------


# 🧾Na zaliczenie pierwszego modułu należy przygotować oficjalny skrypt semestralny (obowiązkowy)

Każdy student prowadzi jeden główny skrypt będący kartą pracy z całych ćwiczeń.

## 📁 Nazwa pliku

Skrypt musi mieć nazwę:

```
IT4Bio_nrIndeksu_AB.R
```

gdzie:
- `nrIndeksu` – numer indeksu,
- `AB` – inicjały (imię + nazwisko).

### Przykład:
```
IT4Bio_123456_JJ.R
```

---

## 🏷 Wymagany nagłówek

Na początku pliku musi znajdować się nagłówek w formie komentarza:

```r
############################################################
# Olsztyn, dn. 04.02.2022
# Skrypt z Technologii Cyfryzacji i Bioinformatyki
# Biotechnologia rok X, stopień X, 2022
# Jan Paweł Jastrzębski
# nr. indeksu 123456
# email: bioinformatyka@gmail.com
############################################################
```

Nagłówek należy zaktualizować zgodnie z własnymi danymi.

---

## 📚 Struktura skryptu

Skrypt powinien być uporządkowany tematycznie i podzielony na sekcje, np.:

```r
############################################################
# DANE I IMPORT
############################################################

############################################################
# ZADANIE 1 – Struktury danych
############################################################

############################################################
# ZADANIE 2 – Operacje na data.frame
############################################################

############################################################
# ZADANIE 3 – Wykresy
############################################################
```

Każde zadanie powinno zawierać:
- krótki komentarz opisujący cel,
- czytelny kod,
- ewentualne krótkie wnioski w komentarzu.

---

## Zasady obowiązkowe

Skrypt:

- ✅ musi uruchamiać się bez błędów (najlepiej wybrane fragmenty, które będą traktowane jako zadania zaliczeniowe),
- ✅ musi zawierać komentarze wyjaśniające kluczowe kroki,
- ✅ musi być logicznie podzielony na sekcje,
- ✅ musi być czytelny i estetycznie sformatowany,
- ❌ nie może zawierać martwego kodu,
- ❌ nie może zawierać ścieżek absolutnych do plików z dysku lokalnego.

Rekomendowane na początku pliku:

```r
rm(list = ls())
```

Zapewnia to niezależność skryptu od poprzedniej sesji R.

---

## Tryb pracy

Podczas zajęć student może pracować w plikach roboczych, np.:

```
module1_practice.R
```

Po zakończeniu modułu należy uporządkować rozwiązania
i przenieść je do głównego skryptu semestralnego.

---

## Prezentacja

Pod koniec semestru student:
- przedstawia swój skrypt,
- omawia wybrane zadania,
- demonstruje działanie kodu,
- wyjaśnia zastosowane rozwiązania.

Skrypt jest traktowany jako indywidualna dokumentacja pracy z całego kursu.


## Zadania zawarte w skrypcie do modułu 1
- Przygotuj następujące zadania w skrypcie:
  1) tworzenie lub wczytywanie małego zbioru danych,
  2) wykonanie 3 transformacje danych,
  3) wygenerowanie 2 wykresów,
  4) zapisanie wykresów do plików,
  5) wypisać krótkie podsumowanie (np. liczba wierszy, średnie, min/max),
  6) wykonać zadanie na zaliczenie tego etapu:

---

# ✅ Zadanie na zaliczenie (moduł 1)
## Zadanie końcowe po ćwiczeniu 1: Twoja tabela do dalszych ćwiczeń (warianty zależne od numeru indeksu)

**Cel zadania:** każdy student generuje **własny, unikalny** zestaw danych (tabelę), wykonuje na nim podstawowe operacje (statystyki, wykres, zapis/odczyt), a następnie korzysta z tej tabeli w kolejnych ćwiczeniach.

---

## 0) Zasady ogólne (obowiązują wszystkich)

1. Pracujesz w swoim projekcie RStudio (R Project) - opcjonalnie.  
2. Wyniki zapisujesz w swoim skrypcie semestralnym: **`IT4Bio_nrIndeksu_AB.R`**  
3. Na potrzeby tego zadania utwórz (lub uzupełnij) sekcję w skrypcie:  
   - `# Zadanie końcowe — tabela (A lub B)`  
4. Na końcu zadania musisz mieć:
   - utworzoną tabelę danych (`rozklady` albo `geny`) w R,
   - plik zapisany na dysku (`TabRozklady.csv` lub `TabGeny.csv`),
   - wczytaną kopię tabeli do nowej zmiennej (`rozklady2` albo `geny2`),
   - co najmniej 1 wykres (zależny od wersji .1 / .2).

---

## 1) Jak wyznaczyć swój wariant z numeru indeksu

Weź swój numer indeksu i zapisz go jako ciąg cyfr.

### 1.1. Oznaczenia cyfr
- **d₁** — ostatnia cyfra indeksu (np. 123456**7** → d₁ = 7)  
- **d₂** — przedostatnia cyfra indeksu (np. 12345**6**7 → d₂ = 6)  
- **N** — ostatnie 4 cyfry indeksu jako liczba (np. 123**4567** → N = 4567)  

### 1.2. Liczba wierszy w tabeli (dotyczy A i B)
Ustal liczbę wierszy `n` w tabeli:
- jeśli `N < 1000`, to **ustaw n = N + 1000**
- jeśli `N ≥ 1000`, to **ustaw n = N**

✅ Przykład:  
- indeks …0873 → N=873 → n=1873  
- indeks …4567 → N=4567 → n=4567  

### 1.3. Liczba prób (A) lub liczba chromosomów (B)
Wylicz:
- `k = (d₂ %% 4) + 3`

To daje zawsze `k` w zakresie **3–6**.

Interpretacja:
- w **wariancie A**: `k` = liczba prób / grup w kolumnie `SampleNames`
- w **wariancie B**: `k` = liczba chromosomów (Chromosomes 1..k)

✅ Przykład:
- jeśli d₂=6 → 6 %% 4 = 2 → k = 2 + 3 = 5  

### 1.4. Wariant danych: A lub B
- jeśli **d₁ jest w zakresie 0–4** → robisz **wariant A (rozklady)**
- jeśli **d₁ jest w zakresie 5–9** → robisz **wariant B (geny)**

### 1.5. Wersja zadań: .1 lub .2 (dotyczy A i B)
Znajdź **pierwszą cyfrę indeksu różną od 0** (czyli pierwszą „niezerową” cyfrę od lewej). Nazwij ją `p`.

- jeśli `p` jest **parzysta** → robisz wersję **.1**
- jeśli `p` jest **nieparzysta** → robisz wersję **.2**

✅ Przykład:
- indeks 0012345 → pierwsza niezerowa cyfra p=1 → nieparzysta → wersja .2  
- indeks 0203456 → p=2 → parzysta → wersja .1  

---

## 2) WARIANT A — tabela `rozklady` (dla d₁ = 0–4)

### 2.1. Wygeneruj tabelę `rozklady` o liczbie wierszy n
Twoja tabela musi mieć **dokładnie n wierszy** i następujące kolumny:

1) **`grupa`**  
   - wartości: 1 i 2 **naprzemiennie**  
   - typ danych: **factor** (WAŻNE!)  

2) **`lp`**  
   - liczby porządkowe od 1 do n  
   - typ: numeric lub integer  

3) **`rnorm`**  
   - wartości z rozkładu normalnego (liczby zmiennoprzecinkowe)  

4) **`losowe`**  
   - wartości całkowite losowe z przedziału **0–10**  
   - z powtórzeniami  

5) **`SampleNames`** (DODATEK OBOWIĄZKOWY)  
   - `k` grup próbek: `sample1 ... samplek`  
   - możesz rozdzielić próbki:
     - po kolei (blokami),
     - naprzemiennie,
     - losowo (dowolnie),
     ale muszą wystąpić wszystkie `sample1...samplek`.

✅ Nazwa zmiennej tabelarycznej w R: **`rozklady`**.

---

### 2.2. Wykonaj operacje zależnie od wersji (.1 lub .2)

#### Wersja A.1 (jeśli p parzyste)
1) Oblicz **średnią, minimalną i maksymalną** wartość w każdej kolumnie numerycznej:
   - `lp`, `rnorm`, `losowe`
2) Narysuj **prosty wykres punktowy** wartości `rnorm`:
   - np. `plot(rozklady$rnorm)` albo `plot(rozklady$lp, rozklady$rnorm)`
3) Zapisz tabelę do pliku na dysku:
   - **`TabRozklady.csv`**

#### Wersja A.2 (jeśli p nieparzyste)
1) Zapisz tabelę do pliku:
   - **`TabRozklady.csv`**
2) Wczytaj ją do nowej zmiennej:
   - **`rozklady2`**
3) Narysuj wykres punktowy zależności:
   - `rnorm` vs `losowe`
   - np. `plot(rozklady2$losowe, rozklady2$rnorm)`

---

### 2.3. Co oddajesz / co musi być w skrypcie (wariant A)
W Twoim skrypcie muszą się znaleźć:
- obliczenia wartości `n` i `k`,
- tabela `rozklady`,
- zapis pliku `TabRozklady.csv`,
- (jeśli wersja .2) tabela `rozklady2` po wczytaniu,
- wykres (zgodny z wersją).

---

## 3) WARIANT B — tabela `geny` (dla d₁ = 5–9)

### 3.1. Wygeneruj tabelę `geny` o liczbie wierszy n
Twoja tabela musi mieć **dokładnie n wierszy** i następujące kolumny:

1) **`GeneID`**  
   - symbole/identyfikatory genów (tekst)  
   - np. `Gene_1`, `Gene_2`, … lub dowolny sensowny schemat  

2) **`Biotype`**  
   - typ genu (tekst / factor) losowany z listy:
     - `protein_coding`, `lncRNA`, `tRNA`, `snRNA`, `rRNA`  

3) **`Length`**  
   - długość genu (liczba całkowita, np. 100–50000)  

4) **`Chromosome`**  
   - numer chromosomu od **1 do k**  
   - gdzie `k = (d₂ %% 4) + 3`  

5) **`Location`**  
   - lokalizacja na chromosomie w formacie: **`START-END`**  
   - START i END mają być liczbami, a END > START  
   - (uwaga: to ma być lokalizacja *na chromosomie*, a nie „Chr:START-END” — numer chromosomu jest osobno w kolumnie `Chromosome`)  

6) **`Exons`**  
   - liczba egzonów (liczba całkowita, np. 1–20)  

7) **`Organism`**  
   - nazwa organizmu (tekst), np. losowana z:
     - `Homo sapiens`, `Mus musculus`, `Bos taurus`, `Sus scrofa`  
     (możesz użyć też innych, ale minimum 3 różne organizmy)  

✅ Nazwa zmiennej tabelarycznej w R: **`geny`**.

---

### 3.2. Wykonaj operacje zależnie od wersji (.1 lub .2)

#### Wersja B.1 (jeśli p parzyste)
1) Oblicz **średnią, minimalną i maksymalną** wartość w kolumnach liczbowych:
   - `Length`, `Chromosome`, `Exons`
2) Narysuj prosty wykres punktowy (scatter plot) np.:
   - `Length` vs `Exons`  
   (oś X: Exons, oś Y: Length)
3) Zapisz tabelę do pliku:
   - **`TabGeny.csv`**

#### Wersja B.2 (jeśli p nieparzyste)
1) Zapisz tabelę do pliku:
   - **`TabGeny.csv`**
2) Wczytaj ją do nowej zmiennej:
   - **`geny2`**
3) Narysuj wykres punktowy zależności:
   - `Exons` vs `Length` (na danych z `geny2`)

---

### 3.3. Co oddajesz / co musi być w skrypcie (wariant B)
W Twoim skrypcie muszą się znaleźć:
- obliczenia wartości `n` i `k`,
- tabela `geny`,
- zapis pliku `TabGeny.csv`,
- (jeśli wersja .2) tabela `geny2` po wczytaniu,
- wykres (zgodny z wersją).

---

## 4) Wymagania techniczne i kontrola poprawności (dla wszystkich)

1) **Zmienna tabelaryczna musi mieć dokładną nazwę:**
- wariant A: `rozklady`
- wariant B: `geny`

2) **Liczba wierszy musi się zgadzać z Twoim `n`.**

3) **Wariant A:** `grupa` musi być typu **factor**.

4) Musisz umieć odpowiedzieć na pytania:
- jak policzyłeś `n` i `k` z indeksu?
- co oznacza `factor`?
- czym różni się zapis CSV i odczyt CSV?
- co przedstawia Twój wykres?

---

## 5) Uwaga: ta tabela wraca w kolejnych ćwiczeniach

Zapisz plik `TabRozklady.csv` lub `TabGeny.csv` w folderze projektu.  
Na kolejnych zajęciach będziesz:
- filtrować dane,
- grupować dane,
- tworzyć wykresy (base R i ggplot2),
- liczyć statystyki,
- rozwijać analizę.

Powodzenia!

---

# Przykładowe wygenerowane dane

Poniżej pokazano przykładowy wynik działania skryptu generującego dane używane w kolejnych modułach kursu.  
Są to **przykładowe tabele wygenerowane zgodnie z instrukcją zadania zaliczeniowego z modułu 1**.

Każdy student generuje własną wersję tabeli na podstawie swojego numeru indeksu, dlatego wartości w Twojej tabeli mogą się różnić od pokazanych poniżej.



## Przykładowa tabela `geny`

Podgląd pierwszych i ostatnich wierszy tabeli:

```
# 4.11. Podgląd: pierwsze i ostatnie wiersze
head(geny, n = 5)

       GeneID Biotype Length Chromosome      Location Exons     Organism
1 Gene_000001    rRNA  18147          4 564139-588258    17 Homo sapiens
2 Gene_000002   snRNA  28939          4 859208-901335     3 Mus musculus
3 Gene_000003  lncRNA  18213          5 650289-677611    15 Homo sapiens
4 Gene_000004  lncRNA  37791          2 596839-603912    12 Mus musculus
5 Gene_000005  lncRNA  24490          3 850206-857307    14 Mus musculus

tail(geny, n = 5)

          GeneID Biotype Length Chromosome      Location Exons   Organism
1524 Gene_001524    rRNA  39872          4 194634-222911    20 Sus scrofa
1525 Gene_001525    rRNA  19176          1 358081-384399    13 Bos taurus
1526 Gene_001526   snRNA  49162          4 193178-206391    16 Sus scrofa
1527 Gene_001527  lncRNA  11028          5 220369-239365     3 Sus scrofa
1528 Gene_001528   snRNA   3940          4 814875-841809    19 Bos taurus
```



## Przykładowa tabela `rozklady`

Podgląd pierwszych wierszy tabeli:

```
head(rozklady)

  grupa lp       rnorm losowe SampleNames
1     1  1 -1.09109401      7     sample1
2     2  2  0.02155754      2     sample2
3     1  3  2.56511471      7     sample3
4     2  4 -0.14886466     10     sample4
5     1  5 -1.22536093      4     sample1
6     2  6 -0.70285357      0     sample2
```

Sprawdzenie struktury danych:

```
str(rozklady)

'data.frame':	2551 obs. of  5 variables:
 $ grupa      : Factor w/ 2 levels "1","2": 1 2 1 2 1 2 1 2 1 2 ...
 $ lp         : int  1 2 3 4 5 6 7 8 9 10 ...
 $ rnorm      : num  -1.0911 0.0216 2.5651 -0.1489 -1.2254 ...
 $ losowe     : int  7 2 7 10 4 0 8 6 0 4 ...
 $ SampleNames: chr  "sample1" "sample2" "sample3" "sample4" ...
```



# Przykładowe pliki danych

Dla ułatwienia pracy w kolejnych modułach kursu **przykładowe wersje wygenerowanych tabel zostały również dołączone do repozytorium**.

Można je pobrać bezpośrednio z poniższych linków:

**Tabela genów**

https://github.com/prodakt/IT4Bio/blob/main/pl/modules/data/TabGeny.csv

**Tabela rozkładów**

https://github.com/prodakt/IT4Bio/blob/main/pl/modules/data/TabRozklady.csv

Pliki te mogą być używane do ćwiczeń w kolejnych modułach kursu (np. operacji na danych, wizualizacji oraz analiz bioinformatycznych).
