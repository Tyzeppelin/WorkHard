?- membre(2, [1,2,3,4]).
true.

?- membre(5, [1,2,3,4]).
fasle.

compte(1, [1,2,3,4], X).
compte(5, [1,2,3,4], X).
compte(1, [1,2,1,4], X).
compte(1, [1,2,1,4], 2).

renverser([1,2,3,4], Y).
renverser([1,2,3,4], [4,3,2,1]).

palind([1,2,3,4]).
palind([4,3,3,4]).
palind([4]).

nieme1(0, [1,2,3,4], A).
nieme1(3, [1,2,3,4], A).

nieme2(N, [1,2,3,4], 3).
nieme2(N, [1,2,3,4], 1).

hors_de(0, [1,2,3,4]).
hors_de(3, [1,2,3,4]).

tous_diff([1,2,3,4]).
tous_diff([1,2,4,4]).
tous_diff([]).

conc3([1,2], [3,4], [5,6], T).
conc3([1,2], [3,4], [5,6], [1,2,3,4,5,6]).
conc3([1,2], [3,4], [5,6], [1,2,3,4,5]).
conc3([], [], [], []).

conc3v2(A, B, C, [1,2,3,4]).

debute_par([1,2,3], []).
debute_par([1,2,3], [1]).
debute_par([1,2,3], [1,2,3]).
debute_par([1,2,3], [2,3]).

sous_liste([1,2,3], []).
sous_liste([1,2,3], [1]).
sous_liste([1,2,3], [2,3]).
sous_liste([1,2,3], [1,3]).
sous_liste([1,2,3], X).

elim([1,2,3], Y).
elim([3,1,2,3,3], Y).
elim([], Y).

tri([1,2,3,4], Y).
tri([4,3,2,1], Y).
tri([3,1,2,4], Y).

inclus([], [1,2,3,4]).
inclus([1,2,3,4], [1,2,3,4]).
inclus([1,2,4], [1,2,3,4]).
inclus([1,2,5], [1,2,3,4]).

inclus2(A, [1,2,3,4]).

non_inclus([1,2,3,4], []).
non_inclus([5], [1,2,3,4]).
non_inclus([], [1,2,3,4]).
non_inclus([2,3], [1,2,3,4]).

union_ens([1,2,3], [2,3,4], [1,2,3,4]).
union_ens([2,3,1], [4,2,3], [3,2,1,4]).
union_ens([2,3,1], [4,2,3], [3,2,1]).
union_ens([1,2,3], [2,3,4], Z).
union_ens([2,3,1], [4,2,3], Z).

inter_ens([1,2,3], [2,3,4], [2,3]).
inter_ens([2,3,1], [4,2,3], [3,2]).
inter_ens([2,3,1], [4,2,3], [3,2,1]).
inter_ens([1,2,3], [2,3,4], Z).
inter_ens([2,3,1], [4,2,3], Z).

diff_ens([1,5,3], [5,4,7], Z).
diff_ens([1,5,3], [], Z).
diff_ens([1,5,3], [5,4,7], [3,1]).
diff_ens([1,5,3], [5,4,7], [1,3]).
diff_ens([1,5,3], [5,4,7], [1,3,5]).
diff_ens([1,5,3], [5,4,7], [1]).

