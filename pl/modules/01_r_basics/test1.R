matrix()
data.frame(1)

?runif

runif(n = 12, 
      min = 0, 
      max = 100
      )

round(2.12431235564643, 2)

?round


round(
  runif(n = 12, 
        min = 0, 
        max = 100
  ), 2)

# propt:
# wygeneruj prostą macierz oraz tabelę (dwie oddzielne zmienne) w R, które zawierają przypadkowe dane o charakterze biologicznym, ale mogą być dobrym przykładem do pokazania różnic między macierzą i tabelą. W kodzie potrzebuję dużo opisów i komentarzy, żeby dokładnie zrozumieć kod, ponieważ dopiero uczą się programować w R. 

# =====================================================================
# CZĘŚĆ 1: MACIERZ (MATRIX)
# Macierz w R to struktura dwuwymiarowa, w której WSZYSTKIE elementy 
# muszą być tego samego typu. Najczęściej są to po prostu liczby.
# 
# Przykład biologiczny: Poziom ekspresji 4 różnych genów w 3 próbkach.
# Ponieważ wszystkie wyniki to liczby, macierz jest tu idealna.
# =====================================================================

# Generujemy losowe liczby z rozkładu jednostajnego (funkcja runif).
# Potrzebujemy 12 liczb (4 geny * 3 próbki). 
# Funkcja round() zaokrągla wyniki do 2 miejsc po przecinku.
losowe_liczby <- round(runif(n = 12, min = 0, max = 100), 2)
head(losowe_liczby)
summary(losowe_liczby)
hist(losowe_liczby)


# Tworzymy macierz za pomocą funkcji matrix()
# Podajemy nasze losowe liczby, ustalamy liczbę wierszy (nrow = 4)
# i liczbę kolumn (ncol = 3).
macierz_ekspresji <- matrix(
  data = losowe_liczby, 
  nrow = 4, 
  ncol = 3
)
macierz_ekspresji


# Aby macierz była czytelna, nadajemy nazwy wierszom (geny) i kolumnom (próbki)
rownames(macierz_ekspresji) <- c("Gen_A", "Gen_B", "Gen_C", "Gen_D")
colnames(macierz_ekspresji) <- c("Probka_1", "Probka_2", "Probka_3")

# Wyświetlamy naszą macierz w konsoli
print("--- MACIERZ EKSPRESJI GENÓW ---")
print(macierz_ekspresji)


# =====================================================================
# CZĘŚĆ 2: TABELA / RAMKA DANYCH (DATA FRAME)
# Ramka danych to również struktura dwuwymiarowa, ale pozwala na to,
# aby każda kolumna zawierała INNY typ danych.
#
# Przykład biologiczny: Karta pacjentów w badaniu klinicznym.
# Będziemy mieli imię (tekst), wiek (liczba) i status choroby (prawda/fałsz).
# =====================================================================

# Tworzymy wektory (pojedyncze kolumny) z różnymi typami danych:

# 1. Kolumna tekstowa (character) - ID lub gatunek badanego zwierzęcia
badany_organizm <- c("Mysz_1", "Mysz_2", "Szczur_1", "Szczur_2")

# 2. Kolumna liczbowa (numeric) - waga organizmu w gramach
waga_g <- c(22.5, 24.1, 305.2, 298.8)

# 3. Kolumna logiczna (logical) - czy organizm ma mutację genetyczną? 
# TRUE oznacza Prawdę, FALSE oznacza Fałsz
obecnosc_mutacji <- c(TRUE, FALSE, TRUE, TRUE)

# Łączymy nasze wektory w jedną ramkę danych za pomocą funkcji data.frame()
tabela_pacjentow <- data.frame(
  Organizm = badany_organizm,
  Waga = waga_g,
  Mutacja = obecnosc_mutacji
)

# Wyświetlamy naszą ramkę danych w konsoli
print("--- TABELA PACJENTÓW (RAMKA DANYCH) ---")
print(tabela_pacjentow)
