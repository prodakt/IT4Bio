# Moduł 1 — Ćwiczenia i zadania

## Setup (5 minut)
1. Uruchom RStudio.
2. Utwórz projekt (R Project) w folderze zajęć.
3. Utwórz plik `module1_practice.R` i zapisz.

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
- przefiltruj wiersze po warunku,
- policz podstawowe statystyki dla jednej kolumny,
- zrób prostą tabelę częstości (np. `table()`).

## Ćwiczenie 4 — Wykresy base R
- `hist()` dla zmiennej liczbowej
- `boxplot()` dla porównania grup
- `plot()` zależności 2 zmiennych

Zapisz wykresy do plików:
- `PNG` i `PDF` (z `dev.off()`)

## Zadanie domowe (mini-projekt)
- Przygotuj skrypt, który:
  1) tworzy lub wczytuje mały zbiór danych,
  2) wykonuje 3 transformacje danych,
  3) generuje 2 wykresy,
  4) zapisuje wykresy do plików,
  5) na końcu wypisuje krótkie podsumowanie (np. liczba wierszy, średnie, min/max).
