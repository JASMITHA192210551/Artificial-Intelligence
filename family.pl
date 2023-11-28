female(resh).
female(leo).
female(pranavi).        
female(ammu).

male(cherry).
male(bhavin).            
male(tarun).
male(peter).

parent(resh,bhavin).
parent(tarun,bhavin).
parent(tarun,leo).
parent(bhavin,ammu).
parent(bhavin,pranavi).
parent(pranavi,cherry).
parent(bhavin,pavan).
parent(pavan,cherry).

mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X), X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X), X\==Y.