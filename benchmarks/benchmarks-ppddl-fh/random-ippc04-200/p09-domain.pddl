(define (domain prob_domain) 
 (:requirements :strips :probabilistic-effects) 
  (:types horizon-value - object) (:constants OV TZ NO QS IE RF MW KG RU VM )
 (:predicates (horizon ?h - horizon-value) (horizon-decrement ?h0 ?h1 - horizon-value) 
	 (OC ?X ) 
	 (QX ?X ?Y ) 
	 (TO ?X ) 
	 (VC ?X ) 
	 (GL ?X ) 
(clear)
(not-clear)
 )
(:functions (total-cost))
(:action UCF
 :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (TO ?Y) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 80/100 (and (TO ?X) (not (TO ?Y)) (QX ?X ?Y) (OC ?X) )  
		 20/100 (and (GL ?X) (TO ?X) (GL ?Z) (QX ?Y ?X) (QX ?Z ?Z) )  
          ))
 )
(:action RWW
 :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (GL ?X) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 100/100 (and (OC ?Z) (GL ?Z) (VC ?X) (QX ?Z ?Y) (QX ?Z ?X) )  
          ))
 )
(:action MOH
 :parameters (?hcur ?hnew - horizon-value ?X )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (VC ?X) 
		 (QX ?X ?X) 
		 (GL ?X) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 100/100 (and (not (QX ?X ?X)) )  
          ))
 )
(:action ZMQ
 :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (OC ?X) 
		 (GL ?Z) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 100/100 (and (VC ?Y) (OC ?Y) )  
          ))
 )
(:action OGK
 :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z )
 :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) 
		 (VC ?Y) 
		 (QX ?Y ?Z) 
  )
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 
		 41/100 (and (QX ?Y ?X) (TO ?X) (GL ?Y) (QX ?Z ?Y) )  
		 59/100 (and (not (VC ?Y)) )  
          ))
 )
(:action reset1 
 :parameters (?hcur ?hnew - horizon-value)
:precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (not-clear))
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1)  
	     (forall (?x) (and 
      (not (OC ?x)) 
      (not (QX ?x OV)) 
      (not (QX ?x TZ)) 
      (not (QX ?x NO)) 
      (not (QX ?x QS)) 
      (not (QX ?x IE)) 
      (not (QX ?x RF)) 
      (not (QX ?x MW)) 
      (not (QX ?x KG)) 
      (not (QX ?x RU)) 
      (not (QX ?x VM)) 
      (not (TO ?x)) 
      (not (VC ?x)) 
      (not (GL ?x)) 
))
(not (not-clear))
(clear)))

(:action reset2 
 :parameters (?hcur ?hnew - horizon-value)
:precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (clear)) 
 :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1)  (not-clear)
              (not (clear))
(OC NO) 
(VC QS) 
(TO NO) 
(VC IE) 
(TO MW) 
(OC RF) 
(QX MW TZ) 
(QX TZ RF) 
(QX TZ RU) 
(VC TZ) 
(OC KG) 
(OC MW) 
(GL IE) 
(GL NO) 
(OC OV) 
(OC TZ) 
(GL RU) 
(GL KG) 
(VC NO) 
(QX NO QS) 
)))