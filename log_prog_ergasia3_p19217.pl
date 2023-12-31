:- use_module(library(clpfd)).%για να μπορω να δινω τιμη 
%σε μια μεταβλητη,που το δευτερο μελος
%δεν εχει παρει ακόμα,σε αντιθεση με το κατηγορημα is

solve(Ls):-
        Lss = [[A,B,C],[E,F,G],[J,K,L],
		[N,O,P],[A,E],[B,F,J,N],[C,G,K,O],[L,P]], %υπολιστες
        %εμφανίζονται μόνο μία φορα σε καθε υπολιστα,
	line(Lss,Ls). %η solve περνει σαν ορισμα μία
                     %λιστα και ελεγχει αν ικανοποιει το κακουρο	
line(Lss,Ls):-
	Lss = [[A,B,C],[E,F,G],[J,K,L],
		[N,O,P],[A,E],[B,F,J,N],[C,G,K,O],[L,P]], %υπολιστες
	maplist(all_different, Lss), %οι αριθμοι 
        %εμφανίζονται μόνο μία φορα σε καθε υπολιστα,
	append(Lss, Ls),  %ή αλλιως μπλοκ του κακουρο,γραμμες ή στηλες
        Ls ins 1..9, %και ελέγχω αν οι αριθμοι στην 
 	A #= 24-B-C,  %εισοδο ειναι μεταξυ του 1 και 9
   	B #= 26-F-J-N, %κατηγορημα all_different υπαρχει
   	C #= 15-G-K-O,  % κι αυτο στην βιβλιοθηκη
   	E #= 11-F-G,
    	E #= 17-A,  %οι γραμμες αρθριζουν στο νουμερο του κακουρο
    	J #= 22-K-L,
    	N #= 14-O-P,
    	L #= 13-P.
