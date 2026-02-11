# Moduł 1 — Notatki

## 1. RGui vs RStudio (środowisko pracy)
- RGui: proste okno konsoli
- RStudio: IDE (skrypt, konsola, środowisko, pliki, wykresy, help)

**Minimum na start:**
- gdzie jest konsola
- gdzie piszemy skrypt `.R`
- jak ustawić katalog roboczy / projekt

## 2. Konsola i skrypty
- konsola: szybkie polecenia i testy
- skrypt: trwała wersja analizy (do powtórzenia i oddania)

Dobre praktyki:
- komentarze
- sekcje (nagłówki)
- powtarzalność (najpierw import, potem przetwarzanie, potem wykresy)

## 3. Typy i struktury danych
### Typy (przykłady)
- numeric, integer
- character
- logical
- factor (ważny w danych biologicznych)

### Struktury
- vector
- matrix
- list
- data.frame / tibble

Minimum funkcji do kontroli:
- `class()`, `str()`, `length()`, `dim()`, `names()`, `head()`

## 4. Ramki danych: filtrowanie, selekcja, grupowanie
### Base R (minimum)
- wybór kolumn: `df[, c("col1","col2")]`
- filtrowanie wierszy: `df[df$col > 0, ]`

### dplyr (jeśli wprowadzisz)
- `filter()`, `select()`, `mutate()`, `group_by()`, `summarise()`

## 5. Czysty kod i dobre praktyki
- sensowne nazwy zmiennych
- stałe w jednym miejscu (np. parametry na górze)
- unikaj kopiuj-wklej: funkcje i pętle później, ale tu pokaż ideę
- czytelne formatowanie (wcięcia, odstępy)

## 6. Podstawowe wykresy base R
- `plot()`
- `hist()`
- `boxplot()`

Eksport:
- `png("plik.png", width=..., height=..., res=...)`
- `pdf("plik.pdf")`
- `dev.off()`

## 7. (Rozszerzenie) R dla użytkowników Pythona
Link: [python_to_r.md](python_to_r.md)
