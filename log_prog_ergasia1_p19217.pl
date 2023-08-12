family(person(name(tom),surname(fox),date(7,may,1950),works(bbe,15200)),
	person(name(ann),surname(fox),date(9,may,1951),unemployed),
	[person(name(jim),surname(fox),date(5,may,1973),unemployed),
	person(name(pat),surname(fox),date(5,may,1973),unemployed)]).

family(person(name(iason),surname(boidanis),date(9,october,2001),works(papei,19217)),
	person(name(elektra),surname(lafata),date(27,march,2002),works(pada,1)),
	[person(name(giasemi),surname(boidani-lafata),date(5,may,2029),unemployed),
	person(name(klearxos),surname(boidanis-lafatas),date(5,may,2029),unemployed),
	person(name(neoklis),surname(boidanis-lafatas),date(1,june,2031),unemployed),
	person(name(terpsithea),surname(boidani-lafata),date(7,july,2032),unemployed)]).

family(person(name(barack),surname(obama),date(4,august,1961),unemployed),
	person(name(michelle),surname(obama),date(17,january,1964),unemployed),
	[person(name(sasha),surname(obama),date(10,june,2001),unemployed)]).

male(tom).
male(jim).
male(iason).
female(ann).
female(pat).
female(elektra).
female(giasemi).
female(terpsithea).
female(michelle).
female(sasha).
married(tom,ann).
married(iason,elektra).
married(barack,michelle).
wife(X):-married(_,X),female(X).
does_work(X):-family(_,person(name(X),surname(_),date(_,_,_),works(_,_)),[_|_]),wife(X).
exists(X):-family(_,person(name(X),surname(_),date(_,_,R),unemployed),[_|_]),wife(X),R<1963.
unemployed(X):-exists(X).