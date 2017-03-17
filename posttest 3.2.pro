PREDICATES
nondeterm suka(symbol,symbol) %%keywoard nondeterm pada section predicates berfungsi untuk memberitahukan ke compier visual prolog bahwa predikat tersebut mempunyai lebih dari satu kemungkinan jawaban(non-deterministik).
			      %%perintah suka mempunyai 2 variabel yaitu symbol,symbol

CLAUSES
suka(asep,membaca). %%asep suka membaca
suka(asari,computers). %%asari suka computers
suka(nunung,bulutangkis). %%nunung suka bulutangkis
suka(vida,bulutangkis). %%vida  suka bulutangkis
suka(astana,renang). %%astana suka berenang
suka(astana,membaca).%%astana suka membaca

GOAL
suka(Orang, membaca), %% siapakah orang yang suka membaca atau
suka(Orang, renang).  %% orang yang suka berenang atau siapa yang suka kedua-duanya maka goalnya adalah astana karena astana menyukai kedua-keduanya.