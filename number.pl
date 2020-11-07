num(0).
num(X) :- succ(X,Y), num(Y).

succ(1,0).
succ(2,1).
succ(3,2).
succ(4,3).
succ(5,4).
succ(6,5).
succ(7,6).
succ(8,7).
succ(9,8).
succ(10,9).

add(X,0,S) :- num(X), S=X.
add(X,Y,S) :- num(X), num(Y), succ(Y,Z), succ(W,X) ,add(W,Z,S).
sub(X,0,D) :- num(X), D=X.
sub(X,Y,D) :- num(X), num(Y), succ(Y,Z) ,succ(X,W), sub(W,Z,D).
