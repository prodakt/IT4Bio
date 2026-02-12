# Rozszerzenie — R dla użytkowników Pythona

## Dlaczego ten rozdział?

Wielu studentów biologii i bioinformatyki zaczyna programowanie od Pythona (lub planuje używać go równolegle z R). Ten rozdział ma pomóc:

- szybko zrozumieć logikę R,
- zobaczyć różnice koncepcyjne między językami,
- uniknąć typowych błędów wynikających z „myślenia pythonowego”,
- zbudować mentalną mapę: *Python → R*.

To nie jest kurs Pythona – to przewodnik adaptacyjny dla osób, które już znają jego podstawy.

---

# 1. Filozofia języka: R vs Python

## Python
- język ogólnego zastosowania,
- bardzo czytelna składnia,
- silnie obiektowy,
- ogromne zastosowanie w automatyzacji, AI, web, data science,
- pandas jako kluczowa biblioteka do danych tabelarycznych.

## R
- język zaprojektowany głównie do analizy danych i statystyki,
- silnie wektorowy (operacje na całych kolumnach są naturalne),
- bardzo bogaty ekosystem statystyczny,
- standard w bioinformatyce i analizach genomowych,
- ogromne znaczenie pakietów z Bioconductor.

R powstał jako środowisko analityczne, a nie jako język ogólnego zastosowania. Dlatego wiele operacji na danych jest w nim prostszych i bardziej bezpośrednich niż w Pythonie.

---

# 2. Podstawowe różnice koncepcyjne

## 2.1 Indeksowanie

Python:

```python
x = [10, 20, 30]
x[0]  # pierwszy element
```

R:

```r
x <- c(10, 20, 30)
x[1]  # pierwszy element
```

📌 W R indeksowanie zaczyna się od 1, nie od 0.

To jedna z najczęstszych przyczyn błędów u osób przechodzących z Pythona do R.

---

## 2.2 Typy danych

Python:
- int
- float
- str
- bool
- None

R:
- numeric
- integer
- character
- logical
- NA (brak danych)

R posiada specjalną wartość brakującą: `NA`.

```r
x <- c(1, 2, NA)
mean(x)                 # zwróci NA
mean(x, na.rm = TRUE)   # poprawne obliczenie
```

W Pythonie brak danych to często `None` lub `NaN` (numpy/pandas).

---

# 3. Wektory — fundament R

Najważniejsza różnica: **R jest językiem wektorowym**.

Python (z numpy):

```python
import numpy as np
x = np.array([1,2,3])
x + 1
```

R:

```r
x <- c(1,2,3)
x + 1
```

W R operacje na całych wektorach są podstawą pracy.  
Nie trzeba pisać pętli, aby wykonać operację na całej kolumnie danych.

To ma ogromne znaczenie w analizie danych biologicznych (np. przetwarzanie kolumn ekspresji genów).

---

# 4. Struktury danych

| Python              | R                              |
|--------------------|--------------------------------|
| list               | vector / list                  |
| dict               | named list                     |
| pandas.DataFrame   | data.frame / tibble            |
| numpy array        | matrix                         |

W R:
- `vector` to podstawowa struktura,
- `list` może zawierać różne typy danych,
- `data.frame` to tabela (odpowiednik pandas).

---

# 5. DataFrame: pandas vs data.frame

## Tworzenie danych

Python:

```python
import pandas as pd
df = pd.DataFrame({
    "gene": ["A","B","C"],
    "expression": [10, 5, 20]
})
```

R:

```r
df <- data.frame(
  gene = c("A","B","C"),
  expression = c(10,5,20)
)
```

---

## Wybór kolumn

Python:

```python
df["expression"]
```

R:

```r
df$expression
df[["expression"]]
df[, "expression"]
```

---

## Filtrowanie

Python:

```python
df[df["expression"] > 10]
```

R:

```r
df[df$expression > 10, ]
```

Zwróć uwagę na przecinek:  
`[wiersze, kolumny]`

---

## Grupowanie i agregacja

Python:

```python
df.groupby("gene").mean()
```

R (dplyr):

```r
library(dplyr)

df %>%
  group_by(gene) %>%
  summarise(mean_exp = mean(expression))
```

R (base):

```r
aggregate(expression ~ gene, data=df, FUN=mean)
```

---

# 6. Funkcje

Python:

```python
def add(a, b):
    return a + b
```

R:

```r
add <- function(a, b) {
  return(a + b)
}
```

Funkcje w R są obiektami pierwszej klasy — można je przekazywać jako argumenty.

---

# 7. Pętle vs wektoryzacja

Python:

```python
result = []
for i in x:
    result.append(i*2)
```

R (wektorowo):

```r
x * 2
```

Pętle w R istnieją, ale często nie są potrzebne.

---

# 8. Styl kodu

Python:
- wcięcia są obowiązkowe,
- PEP8 jako standard stylu.

R:
- wcięcia nie są wymagane składnią, ale są zalecane,
- styl tidyverse jest de facto standardem,
- czytelność kodu jest kluczowa w analizach naukowych.

---

# 9. Import danych

Python:

```python
pd.read_csv("file.csv")
```

R:

```r
read.csv("file.csv")
```

lub:

```r
readr::read_csv("file.csv")
```

---

# 10. Wykresy

Python:

```python
import matplotlib.pyplot as plt
plt.hist(df["expression"])
```

R:

```r
hist(df$expression)
```

W R bardzo szybko można tworzyć wykresy bez dodatkowej konfiguracji.

---

# 11. Pakiety

Python:

```python
import pandas as pd
```

R:

```r
library(dplyr)
```

Instalacja:

```r
install.packages("dplyr")
```

Bioinformatyka:

```r
BiocManager::install("DESeq2")
```

---

# 12. Najczęstsze błędy użytkowników Pythona w R

- używanie indeksowania od 0,
- zapominanie o przecinku w `df[wiersze, kolumny]`,
- ignorowanie `NA`,
- próby pisania wszystkiego w pętlach,
- nieużywanie funkcji diagnostycznych (`str()`, `summary()`).

---

# 13. Mentalna mapa Python → R

- pandas → data.frame
- numpy array → matrix
- iloc/loc → `[ , ]`
- None/NaN → NA
- list comprehensions → operacje wektorowe

---

# 14. Kiedy wybrać R, a kiedy Python?

R:
- analiza statystyczna,
- genomika, RNA-seq,
- bioinformatyka klasyczna,
- szybkie raporty i wizualizacje.

Python:
- automatyzacja pipeline’ów,
- integracja z AI/ML,
- przetwarzanie dużych danych,
- aplikacje webowe.

W praktyce bioinformatyk używa obu języków.

---

# 15. Ćwiczenia adaptacyjne

1. Przepisz prosty kod pandas do R.
2. Wykonaj filtrację i grupowanie w base R oraz w dplyr.
3. Zastąp pętlę operacją wektorową.
4. Przetestuj zachowanie `NA` w kilku operacjach matematycznych.

---

# Podsumowanie

R i Python nie konkurują — one się uzupełniają.  
Najważniejsze przy przechodzeniu z Pythona do R:

- myśl wektorowo,
- pamiętaj o indeksowaniu od 1,
- kontroluj `NA`,
- pracuj świadomie na `data.frame`,
- korzystaj z pakietów.

Po opanowaniu tych różnic praca w obu językach staje się naturalna i komplementarna.
