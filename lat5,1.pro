DOMAINS		%% Mendeklarasikan jenis parameter yang akan kita gunakan
	orang = orang(nama,alamat)			%% dalam parameter  orang ini ada objek jamak yaitu orang yang berargumennya (nama,alamat)
	nama = nama(pertama,kedua)			%% dalam parameter nama ini ada objek jamak nama yang berargumennya (pertama,kedua)
	alamat = alamat(jalan,kota_kab,propinsi)	%% dalam parameter alamat ini ada objek jamak alamat yang berargumennya (jalan,kota_kab,propinsi)
	jalan = jalan(nama_jalan,nomor)			%% dalam parameter jalan ini ada objek jamak jalan yang argumennya (nama_jalan,nomor)
	kota_kab,propinsi,nama_jalan = string		%% dalam parameter ini kota_kab,propinsi,nama_jalan menggunakan domain string yang akan digunakan pada program ini
	pertama,kedua = symbol				%% dalam parameter pertama ini, kedua ada objek jamak orang yang berargumennya (nama,alamat)
	nomor = integer					%% dalam parameter ini nomor menggunakan domain integer karena akan memunculkan angka
GOAL		/*Tujuan akhir yang akan dicapai*/
	P1 = orang(nama(diena,fatihah), alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),	%%Data pertama yang berisi orang(nama(diena,fatihah),alamat(jalan(wijaya kususma,12 "berbah,"DIY" atau dengan data lengkap
	P1 = orang(nama(_,fatihah),Alamat),		%%Data akan memanggil alamat pada P1 pertama lalu akan ditambah dengan alamat
	P2 = orang(nama(nur,fatihah),Alamat),		%%Data akan memanggil alamat pada P1 pertama lalu akan ditambah denan alamat
	write("P1=",P1),nl,				%%Data P1 ini akan dijalankan pertama dan hasilnya akan sama dengan P1 pertama yang lengkap 
	write("P2=",P2),nl.				%%Data P2 ini akan dijalankan pertama dan hasilnya akan sama dengan P2 pertama yang lengkap