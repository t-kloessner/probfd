(define (domain prob_domain) 
 (:requirements :strips :probabilistic-effects) 
  (:types horizon-value - object) (:constants PX WL EA VE EW FY MM GU RV GF )
 (:predicates (horizon ?h - horizon-value) (horizon-decrement ?h0 ?h1 - horizon-value) 
	 (XZ ?X ) 
	 (IV ?X ) 
	 (UF ?X ?Y ) 
	 (XL ?X ) 
	 (MK ?X ) 
(clear)
(not-clear)
 )
(:functions (total-cost))
(:action OVR
 :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (XL ?Y) 
		 (IV ?Z) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 88/100 (and (UF ?X ?X) )  
		 0/100 (and (MK ?X) )  
		 12/100 (and (MK ?Z) (XL ?Z) (not (XL ?Y)) )  
          ))
 )
(:action AGQ
 :parameters (?hcur ?hnew - horizon-value ?X ?Y )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (IV ?X) 
		 (XZ ?X) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 31/100 (and (UF ?X ?Y) )  
		 69/100 (and (MK ?Y) (MK ?X) )  
          ))
 )
(:action CJX
 :parameters (?hcur ?hnew - horizon-value ?X )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (IV ?X) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 38/100 (and (MK ?X) (UF ?X ?X) (not (IV ?X)) )  
		 27/100 (and (not (IV ?X)) )  
		 35/100 (and (MK ?X) (XZ ?X) (not (IV ?X)) )  
          ))
 )
(:action QGT
 :parameters (?hcur ?hnew - horizon-value ?X ?Y )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (MK ?Y) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 17/100 (and (UF ?Y ?Y) (MK ?X) )  
		 55/100 (and (UF ?X ?X) )  
		 28/100 (and (IV ?X) )  
          ))
 )
(:action HBX
 :parameters (?hcur ?hnew - horizon-value ?X )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (UF ?X ?X) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 100/100 (and (not (UF ?X ?X)) (XZ ?X) (MK ?X) )  
          ))
 )
(:action reset1 
 :parameters (?hcur ?hnew - horizon-value)
:precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (not-clear))
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1)  
	     (forall (?x) (and 
      (not (XZ ?x)) 
      (not (IV ?x)) 
      (not (UF ?x PX)) 
      (not (UF ?x WL)) 
      (not (UF ?x EA)) 
      (not (UF ?x VE)) 
      (not (UF ?x EW)) 
      (not (UF ?x FY)) 
      (not (UF ?x MM)) 
      (not (UF ?x GU)) 
      (not (UF ?x RV)) 
      (not (UF ?x GF)) 
      (not (XL ?x)) 
      (not (MK ?x)) 
))
(not (not-clear))
(clear)))

(:action reset2 
 :parameters (?hcur ?hnew - horizon-value)
:precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (clear)) 
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1)  (not-clear)
              (not (clear))
(UF WL MM) 
(IV RV) 
(XZ EW) 
(XZ GU) 
(IV MM) 
(MK GU) 
(XL FY) 
(XL EW) 
(MK VE) 
(XL EA) 
(MK GF) 
(IV EW) 
(IV GF) 
(UF GF GU) 
(UF FY GF) 
(IV GU) 
(UF FY EA) 
(IV FY) 
(IV PX) 
(XZ RV) 
)))