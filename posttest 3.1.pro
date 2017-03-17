DOMAINS
kali,jumlah = integer   %%tipe data yang digunakan adalah integer

PREDICATES
tambahkan(jumlah,jumlah,jumlah) %%tambahkan 3 variabel yang digunakan yaitu jumlah,jumlah,jumlah
kalikan(kali,kali,kali) %%perintah balikan mempunyai 3 variabel yaitu kali,kali,kali

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y. %%kemudian pada clauses terdapat perintah jumlahkan X dengan Y(tambah(X,Y,jumlah)) jika jumlah=X+Y.
kalikan(X,Y,Kali):-Kali=X*Y. %%perintah kalikan X dengan Y(X,Y,kali) jika kali=X*Y.

GOAL
tambahkan(32,54,Jumlah). %%jika ditest goalnya tambahkan(32,54,jumlahan) akan mendapatkan hasil data jumlah=68 (1 solution)


