/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %% mendeklarasikan list dengan tipe data menggunakan integer

predicates
  length_of(list,integer,integer) - procedure (i,o,i) %% predikat yang digunakan dengan parameter list sebagai input, parameter kedua sebagai output dan parameter ketiga sebagai input

clauses
  length_of([], Result, Result). %% aturannya menggunakan list dalam keadaan kosonng berarti variable result pertama yaitu sebagai hasil maka akan bernilai sama dengan.
  length_of([_|T],Result,Counter):- %% aturan kedua yang posisinya sebagai input. jadi jika result pertama diinputkan nilai 3 maka result kedua akan bernilai sama yaitu 3. 
	NewCounter = Counter + 1, %% counter juga bisa disebut  sebagai panjang list menggantikan head berfungsi sebagai inputan diamana nilai yang diinput akan bertambah saat menghitung.
	length_of(T, Result, NewCounter). %% counter juga bisa disebut sebagai pengganti nilai head untuk mendapatkan panjang list yang berfungsi  jika yang diinputkan akan ditambah 1.

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */
  			%% mencari panjang list dengan counter = 0
  			%% head = 1 =>1
  			%%tail = 2 =>3 =>2
  			%% counter = 0
  			%% Newcounter = counter + 1 = 0 + 1= 1
  			%% lenght_of = lengthtail + counter
  			%%		= 2 + 1 =3
  			%% maka goal mendapatkan panjang list sebanyak 3.