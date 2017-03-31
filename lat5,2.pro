
DOMAINS		%%Mendeklarasikan jenis parameter yang akan digunakan
	benda = buku(judul, pengarang) ;	%%di paremeter benda memiliki domain campuran yang berupa type judul buku pengarang
		kuda(nama) ; 			%%di paremeter benda memiliki domain campuran yang berupa type nama(kuda)
		kapal ;				%%di paremeter benda memiliki domain campuran yang berupa type kapal
		bukubank(saldo)			%%di paremeter benda memiliki domain campuran yang berupa type bukubank(saldo)
	judul, pengarang, nama = symbol		%%di parameter benda memiliki domain campuran  domain simbol type saldo bukubank
	saldo = real				%%dalam parameter saldo menggunakan domain real
PREDICATES	%%Berisi daftar deklarasi nama yg akan digunakan
	nondeterm milik(nama,benda)	%%nondeterm memiliki predikat  lebih dari satu kemungkinan jawaban
CLAUSES		%%Berisi fakta dan aturan yang akan dipakai
	milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).	%% Erwin memiliki buku Markesot Bertutur dan pengaranganya Emha Ainun Najib 
	milik(erwin, kuda(buraq)). 					%% Erwin memiliki kuda buraq 
	milik(erwin, kapal). 						%% Erwin memiliki kapal 
	milik(erwin, bukubank(1000)). 					%% Erwin memiliki bukubank dengan nilai 1000 
GOAL		%%bertujuan berakhirnya program
	milik(erwin, Benda). %%Erwin memiliki benda dan benda itu bisa berbentuk buku,pengarang,kuda dan bukubank 