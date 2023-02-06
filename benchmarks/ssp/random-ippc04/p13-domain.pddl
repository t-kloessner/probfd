(define (domain prob_domain) 
 (:requirements :strips :probabilistic-effects) 
 (:constants BN QH BT AH SY ZW IX VG PK JH )
 (:predicates 
	 (TG ?X ?Y ) 
	 (ZU ?X ) 
	 (ZT ?X ) 
	 (YA ?X ) 
	 (SH ?X ?Y ) 
	 (TL ?X ) 
	 (ZX ?X ) 
	 (IP ?X ?Y ) 
	 (YS ?X ) 
	 (RI ?X ?Y ) 
(clear)
(not-clear)
 )
(:functions (total-cost))
(:action TFO
 :parameters (?X ?Y ?Z )
 :precondition (and 
		 (TL ?Z) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 71/100 (and (not (TL ?Z)) (SH ?Z ?Y) )  
		 29/100 (and (IP ?Y ?X) (ZX ?X) (not (TL ?Z)) )  
          ))
 )
(:action EMG
 :parameters (?X ?Y ?Z )
 :precondition (and 
		 (RI ?Y ?X) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 100/100 (and (ZX ?Z) (TG ?Y ?Z) (RI ?Z ?X) (TG ?X ?Y) (not (RI ?Y ?X)) )  
          ))
 )
(:action UIH
 :parameters (?X ?Y )
 :precondition (and 
		 (TG ?X ?X) 
		 (RI ?Y ?X) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 56/100 (and (YS ?X) (RI ?Y ?Y) (ZT ?Y) )  
		 44/100 (and (IP ?Y ?X) (YA ?X) (ZU ?X) (ZT ?X) (not (RI ?Y ?X)) )  
          ))
 )
(:action MJU
 :parameters (?X ?Y ?Z )
 :precondition (and 
		 (ZU ?Z) 
		 (TG ?Y ?X) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 19/100 (and (ZX ?Y) )  
		 81/100 (and (not (ZU ?Z)) )  
          ))
 )
(:action GZK
 :parameters (?X )
 :precondition (and 
		 (TL ?X) 
		 (ZT ?X) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 100/100 (and (TG ?X ?X) (not (TL ?X)) (not (ZT ?X)) (YS ?X) )  
          ))
 )
(:action XPO
 :parameters (?X ?Y )
 :precondition (and 
		 (SH ?Y ?Y) 
		 (TL ?X) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 58/100 (and (SH ?X ?X) )  
		 42/100 (and (ZT ?Y) )  
          ))
 )
(:action WLU
 :parameters (?X ?Y ?Z )
 :precondition (and 
		 (ZX ?Y) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 100/100 (and (ZU ?Y) (ZX ?Z) (TL ?X) )  
          ))
 )
(:action XNY
 :parameters (?X ?Y )
 :precondition (and 
		 (YS ?Y) 
		 (YA ?Y) 
		 (ZU ?Y) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 88/100 (and (not (ZU ?Y)) (TG ?X ?X) (not (YS ?Y)) (RI ?Y ?X) (ZT ?Y) )  
		 12/100 (and (RI ?Y ?X) (SH ?X ?X) (YS ?X) )  
          ))
 )
(:action QFU
 :parameters (?X ?Y )
 :precondition (and 
		 (YA ?X) 
		 (RI ?Y ?X) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 77/100 (and (not (RI ?Y ?X)) )  
		 2/100 (and (SH ?Y ?Y) (TL ?Y) )  
		 21/100 (and (RI ?Y ?Y) (ZX ?Y) )  
          ))
 )
(:action OGB
 :parameters (?X ?Y ?Z )
 :precondition (and 
		 (SH ?Z ?X) 
  )
 :effect (and (increase (total-cost) 1) (probabilistic 
		 100/100 (and (YA ?Z) (IP ?X ?Y) (ZX ?Z) )  
          ))
 )
(:action reset1 
 :precondition (not-clear)
 :effect (and (increase (total-cost) 1)  
	     (forall (?x) (and 
      (not (TG ?x BN)) 
      (not (TG ?x QH)) 
      (not (TG ?x BT)) 
      (not (TG ?x AH)) 
      (not (TG ?x SY)) 
      (not (TG ?x ZW)) 
      (not (TG ?x IX)) 
      (not (TG ?x VG)) 
      (not (TG ?x PK)) 
      (not (TG ?x JH)) 
      (not (ZU ?x)) 
      (not (ZT ?x)) 
      (not (YA ?x)) 
      (not (SH ?x BN)) 
      (not (SH ?x QH)) 
      (not (SH ?x BT)) 
      (not (SH ?x AH)) 
      (not (SH ?x SY)) 
      (not (SH ?x ZW)) 
      (not (SH ?x IX)) 
      (not (SH ?x VG)) 
      (not (SH ?x PK)) 
      (not (SH ?x JH)) 
      (not (TL ?x)) 
      (not (ZX ?x)) 
      (not (IP ?x BN)) 
      (not (IP ?x QH)) 
      (not (IP ?x BT)) 
      (not (IP ?x AH)) 
      (not (IP ?x SY)) 
      (not (IP ?x ZW)) 
      (not (IP ?x IX)) 
      (not (IP ?x VG)) 
      (not (IP ?x PK)) 
      (not (IP ?x JH)) 
      (not (YS ?x)) 
      (not (RI ?x BN)) 
      (not (RI ?x QH)) 
      (not (RI ?x BT)) 
      (not (RI ?x AH)) 
      (not (RI ?x SY)) 
      (not (RI ?x ZW)) 
      (not (RI ?x IX)) 
      (not (RI ?x VG)) 
      (not (RI ?x PK)) 
      (not (RI ?x JH)) 
))
(not (not-clear))
(clear)))

(:action reset2 
 :precondition (clear) 
 :effect (and (increase (total-cost) 1)  (not-clear)
              (not (clear))
(YS AH) 
(YA ZW) 
(ZT QH) 
(ZT IX) 
(RI ZW AH) 
(ZT PK) 
(ZX QH) 
(IP QH AH) 
(YA IX) 
(RI BT BN) 
(ZX AH) 
(IP BT PK) 
(ZU ZW) 
(ZU QH) 
(TG IX IX) 
(SH PK BN) 
(TG JH ZW) 
(ZX SY) 
(SH ZW ZW) 
(RI PK AH) 
(YS BT) 
(YA SY) 
(ZX BT) 
(YS IX) 
(TL ZW) 
(YS VG) 
(IP IX ZW) 
(ZU IX) 
(YS SY) 
(IP ZW BT) 
(TG QH PK) 
(ZX JH) 
(RI JH SY) 
(ZT SY) 
(TG BN JH) 
(RI IX SY) 
(SH IX QH) 
(ZT ZW) 
(RI ZW QH) 
(IP QH JH) 
(ZT AH) 
(ZU PK) 
(IP VG AH) 
(ZX PK) 
(RI PK SY) 
(TG BN AH) 
(RI JH BN) 
(YA JH) 
(TG BT ZW) 
(SH JH PK) 
(SH SY BT) 
(IP SY JH) 
(SH PK ZW) 
(SH VG IX) 
(ZU JH) 
(ZX IX) 
(TG VG IX) 
(TG ZW ZW) 
(ZT BT) 
(RI SY QH) 
(SH BN ZW) 
(ZU BT) 
(ZT VG) 
(TL PK) 
(SH IX IX) 
(YA AH) 
(IP BN JH) 
(ZU BN) 
(TG SY QH) 
(ZT JH) 
(IP BT VG) 
(SH BT IX) 
(TG VG JH) 
(IP JH QH) 
(TG PK IX) 
(SH BN BN) 
(TL BT) 
(ZU VG) 
(RI BN AH) 
(RI SY VG) 
(TL IX) 
(SH ZW IX) 
(YA PK) 
(YS BN) 
(TG QH BN) 
(IP AH JH) 
(SH IX BT) 
(SH IX JH) 
(IP SY PK) 
(IP JH VG) 
(IP VG VG) 
(ZX BN) 
(TG JH BT) 
(YA VG) 
(RI IX PK) 
(SH SY QH) 
(TG QH BT) 
(IP VG BN) 
(RI QH SY) 
(ZT BN) 
)))