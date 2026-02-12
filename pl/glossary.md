# Słownik pojęć — IT4Bio

Ten słownik zawiera podstawowe pojęcia informatyczne, statystyczne i biologiczne
używane w kursie IT4Bio.

---

## GUI {#gui}
**Graficzny Interfejs Użytkownika (Graphical User Interface)** — sposób komunikacji
użytkownika z programem za pomocą okien, przycisków, ikon i menu,
zamiast poleceń tekstowych wpisywanych ręcznie.

---

## API {#api}
**Application Programming Interface** — zestaw reguł i funkcji umożliwiających
komunikację między programami lub systemami.
W bioinformatyce API pozwala np. pobierać dane z baz NCBI lub Ensembl.

---

## Konsola {#konsola}
Interfejs tekstowy umożliwiający bezpośrednie wpisywanie poleceń
i natychmiastowe otrzymywanie wyników.
W R konsola wykonuje kod linia po linii.

---

## IDE {#ide}
**Integrated Development Environment** — środowisko programistyczne
łączące edytor kodu, konsolę, podgląd plików i narzędzia debugowania.
Przykład: RStudio.

---

## Skrypt {#skrypt}
Plik tekstowy zawierający zapisany kod programu (np. plik `.R`).
Umożliwia powtarzalność analiz i ich dokumentowanie.

---

## Projekt (R Project) {#r-project}
Struktura folderu wraz z ustawieniami środowiska,
pozwalająca uporządkować pliki, dane i skrypty w jednej analizie.

---

## Wektor (R) {#wektor}
Jednowymiarowa struktura danych w R zawierająca elementy tego samego typu
(np. liczby, tekst, wartości logiczne).
Jest podstawową strukturą obliczeniową w R.

---

## Lista (R) {#lista-r}
Struktura danych w R, która może przechowywać elementy różnych typów
(np. wektor, macierz, ramkę danych).
Bardziej elastyczna niż wektor.

---

## Ramka danych (data.frame) {#data-frame}
Dwuwymiarowa struktura tabelaryczna w R,
w której kolumny mogą mieć różne typy danych.
Odpowiednik `pandas.DataFrame` w Pythonie.

---

## NA {#na}
Specjalna wartość w R oznaczająca brak danych.
Operacje na danych zawierających `NA` wymagają często użycia parametru `na.rm=TRUE`.

---

## Format FASTA {#fasta}
Tekstowy format zapisu sekwencji biologicznych
(DNA, RNA lub białek).
Każda sekwencja zaczyna się linią nagłówkową z symbolem `>`.

---

## Gen {#gen}
Fragment DNA zawierający informację potrzebną do syntezy RNA
(a często pośrednio białka).
Podstawowa jednostka dziedziczenia.

---

## Transkrypt {#transkrypt}
Cząsteczka RNA powstała w procesie transkrypcji genu.
Może być mRNA, tRNA, rRNA lub innym typem RNA.

---

## Genom referencyjny {#genom-referencyjny}
Reprezentatywna sekwencja genomu danego gatunku,
używana jako punkt odniesienia w analizach bioinformatycznych.

---

## BLAST {#blast}
Algorytm porównywania sekwencji biologicznych
umożliwiający identyfikację podobieństw między sekwencjami DNA lub białek.

---

## MSA {#msa}
**Multiple Sequence Alignment** — wielokrotne dopasowanie sekwencji
pozwalające porównać ich podobieństwo i wykrywać regiony konserwatywne.

---

## Pakiet (R) {#pakiet-r}
Zbiór funkcji, danych i dokumentacji rozszerzający możliwości R.
Instalowany z CRAN lub Bioconductor.

---

## CRAN {#cran}
**Comprehensive R Archive Network** — oficjalne repozytorium pakietów R.

---

## Bioconductor {#bioconductor}
Repozytorium pakietów R dedykowane analizom biologicznym
i bioinformatycznym (np. RNA-seq, genomika, epigenetyka).

---

## Reproducibility {#reproducibility}
Zdolność do odtworzenia analizy i uzyskania identycznych wyników
na podstawie tego samego kodu i danych.

---

## Pipeline (bioinformatyczny) {#pipeline}
Uporządkowana sekwencja kroków analitycznych,
w której wynik jednego etapu jest wejściem kolejnego.
