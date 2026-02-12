# Moduł 1 — Ćwiczenia i zadania

## Setup (5 minut)
1. Uruchom RStudio.
2. Utwórz projekt (R Project) w folderze zajęć (katalogu roboczym).
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
- przefiltruj wiersze po warunku,
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
  5) na końcu wypisać krótkie podsumowanie (np. liczba wierszy, średnie, min/max).
