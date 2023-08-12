included_list(L,L1):- includedlist(L,L1), notnull(L).
notnull(X):-X\=[].%για το ενα στοιχειο,μη κενη λιστα
includedlist([],_).%τερματικη συνθηκη της αναδρομης
includedlist([X|Tail_x],[X|Tail_y]):-includedlist(Tail_x,Tail_y).%αν απο καποιο σημειο ξεκιναν με το ιδιο στοιχειο της λιστας
includedlist([X|Tail_x],[_|Tail_y]):-includedlist([X|Tail_x],Tail_y).%για να πιανει και τα κενα μεταξυ μιας μεγιστης κοινης υπακολουθιας
