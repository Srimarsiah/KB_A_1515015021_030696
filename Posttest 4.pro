DOMAINS
 nama,jender,pekerjaan,benda,alasan,zat = symbol %% tipe data yang digunakan adalah integer dan symbol
 umur=integer
 
PREDICATES
 nondeterm orang(nama, umur, jender, pekerjaan) %% mempunyai predicates atau kemungkinkan lebih dari satu seperti orang(didalamnya ada nama,umur,jender dan pekerjaan)
 nondeterm selingkuh(nama, nama)
 terbunuh_dengan(nama, benda)
 terbunuh(nama)
 nondeterm pembunuh(nama)
 motif(alasan)
 ternodai(nama, zat)
 milik(nama, benda)
 nondeterm cara_kerja_mirip(benda, benda)
 nondeterm kemungkinan_milik(nama, benda)
 nondeterm dicurigai(nama)
 
CLAUSES
orang(budi,55,m,tukang_kayu). %% budi seorang tukang kayu bergender m dan berumur 55 tahun
 orang(aldi,25,m,pemain_sepak_bola). %% aldi seorang pemain sepak bola bergender m dan berumur 25 tahun
 orang(aldi,25,m,tukang_jagal). %% aldi seorang tukang kayu bergender m dan berumur 25 tahun
 orang(joni,25,m,pencopet). %% joni seorang pencopet bergender m dan berumur 25 tahun
 selingkuh(ina,joni). %% ina selingkuhan joni
 selingkuh(ina,budi). %% ina selingkuhan budi
 selingkuh(siti,joni). %% siti selingkuhan joni
 terbunuh_dengan(siti,pentungan). %% siti terbunuh dengan pentungan
 terbunuh(siti). %% siti terbunuh
 motif(uang). %% motif karena uang,cemburu,dendam.
 motif(cemburu).
 motif(dendam).
 ternodai(budi, darah). %% budi ternodai darah
 ternodai(siti, darah). %% siti ternodai darah
 ternodai(aldi, lumpur). %% aldi ternodai lumpur
 ternodai(joni, coklat). %% joni ternodai coklat
 ternodai(ina, coklat).  %% ina ternodai coklat
 milik(budi,kaki_palsu). %% budi memiliki kaki palsu
 milik(joni,pistol). %% joni memiliki pistol
 cara_kerja_mirip(kaki_palsu, pentungan). %% kaki palsu cara kerja mirip pentungan
 cara_kerja_mirip(balok, pentungan). %% balok cara kerja mirip pisau
 cara_kerja_mirip(gunting, pisau). %% gunting cara kerja mirip pisau
 cara_kerja_mirip(sepatu_bola, pentungan). %% sepak bola cara kerja mirip pentungan
 kemungkinan_milik(X,sepatu_bola):- %% X kemungkinan milik sepatu bola
orang(X,_,_,pemain_sepak_bola). %% X orang pemain sepak bola
 kemungkinan_milik(X,gunting):- %% X kemungkinan miliki gunting
orang(X,_,_,pekerja_salon). %% X orang pekerja salon
 kemungkinan_milik(X,Benda):- %% X kemungkinan milik benda
milik(X,Benda). %% X milik benda
dicurigai(X):- %% X dicurugai
terbunuh_dengan(siti,Senjata) , %% siti terbunuh dengan senjata
cara_kerja_mirip(Benda,Senjata) , %% benda cara kerja mirip senjata
kemungkinan_milik(X,Benda). %% X kemungkinan milik benda
dicurigai(X):- %% X dicurigai
motif(cemburu), %% cemburu motif
orang(X,_,m,_), %% X orang bergender m
selingkuh(siti,X). %% siti selingkuhan X
dicurigai(X):- %% X dicurigai
motif(cemburu), %% cemburu motifnya
orang(X,_,f,_), %% X orang F
selingkuh(X,Lakilaki), %% X selingkuhan laki-laki
selingkuh(siti,Lakilaki). %%Siti selingkuhan laki-laki
dicurigai(X):- %% X dicurigai
motif(uang), %% motifnya karena uang
orang(X,_,_,pencopet). %% X orang pencopet
 pembunuh(Pembunuh):- %% pembunuh pembunuhan
orang(Pembunuh,_,_,_), %% pembunuh orang
terbunuh(Terbunuh), %% terbunuh terbunuh
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh), %% pembunuh di curigai
ternodai(Pembunuh,Zat), %% pembunuh ternodai zat
ternodai(Terbunuh,Zat). %% pembunuh ternodai zat
GOAL
 pembunuh(X).
 	%% setelah program dijalankan diawal program akan melakukan proses selection clauses terus akan melacak orang-orang yang telah dideklarasikan pada section clauses, yang clauses melacak
 	%% data -data orang yang telah di deklarasikan di  clauses yang mana data tersebut terlibat dikasus pembunuhan tersebut. dari fakta yang ada argument X adalah seorang pembunuh dari argument
 	%% pembunuhan terdapat beberapa pernyataan persyaratan dan program akan melakukan unifikasi terhadap pernyataan diatas
 	%% maka program diatas akan mencari fakta orang yang mengetahui pembunuhan dalam kasus diatas.pernyataan tersebut didapat adalah budi.
 	%% selanjutnya program akan mencari siapa orang yang terbunuh maka ditemukan lah siti yang terbunuh. dan kemudian program melakukan pencarian lagi pada pernyataan yang di curugai X
 	%% dari pernyataan tersebut dilakukan proses pencarian unifikasi terhadap pernyataan syarat-syarat tersebut kemudian program akan mencari senjata yang dipakai oleh pembunuh untuk melakukan pembunuhan terhadap siti,
 	%% dengan melakukan proses tersebut di variable terbunuh dengan maka fakta yang dipreroleh ialah terbunuh dengan (siti, pentungan).selanjutnya program mencari fakta benda yang cara kerjanya seperti senjata,maka diperoleh cara kerja mirip (benda,senjata).
 	%% kemudian prolog memanggil pernyataan tersebut untuk mengetahui benda yang cara cara kerjanya mirip pentungan yang telah dieksekusi pada langkah sebelumnya. maka fakta yang didapat adalah cara kerja mirip (kaki palsu,pentungan). dan setelah itu program akan melakukan proses
 	%% fakta dari variable kemungkinan milik (X,benda).kemudian dari pernyataan itu program mencari fakta bahwa siapa memiliki kaki palsu dan hasilnya milik(budi kaki palsu). jadi kaki palsu itu miliknya budi.
 	%% selanjutnya program melakukan proses terakhir adalah pada ternodai (terbunuh zat) maka dijalankan proses kedalam pernyataan tersebut yang menyangkut  nama kata budi, maka hasil yang di dapat  ternodai(budi,darah).
 	%% maka akan di dapat hasil ternodai(siti,darah) maka siti memiliki noda sama persis dengan budi.berdasarkan kesamaan faktanya goal menampilkan bahwa budilah yang membunuh siti.
 


 