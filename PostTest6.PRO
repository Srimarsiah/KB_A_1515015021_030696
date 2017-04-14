/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */ %%mendeklarasikan list dengan tipe data menggunakan integer

predicates
  length_of(list,integer) - procedure (i,o) %%predikat yang digunakan dengan nama length_of dengan parameter didalamnya menggunakan list dan integer

clauses
  length_of([], 0). %% aturannya yang digunakan bila length_of (list kosong []) maka list bernilai 0
  length_of([_|T],L):- %% aturannya yang digunakankan bila length_of [_|T] atau list memiliki head dan tail
	length_of(T,TailLength), %% maka berarti panjang list dihitung dari banyak tail ditambah dengan head
	L = TailLength + 1.

goal
  length_of([1,2,3],L). %% mencari panjang list  : head = 1 =>1
  						%% tail=2 dan 3 =>2
  						%% length_of= TailLenght +1 = 2+1 =3
  						%% maka goalnya adalah listnya L = 3 adalah solution.
