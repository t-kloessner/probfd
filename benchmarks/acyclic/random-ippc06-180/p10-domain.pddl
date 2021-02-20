(define
  (domain prob_domain)
  (:requirements :strips :probabilistic-effects)
  (:types horizon-value - object rndobj)
  (:constants horzn1 - horizon-value  ZW QJ PA OX TA RO GC EZ RQ YX - rndobj)
  (:predicates (horizon ?h - horizon-value) (horizon-decrement ?h0 ?h1 ?h2 - horizon-value)
    (LB ?X)
    (EM ?X ?Y)
    (WE ?X)
    (KR ?X)
    (VF ?X ?Y)
    (clear)
    (not-clear)
  )
  (:functions (total-cost))
  (:action JJX
    :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z - rndobj)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur horzn1 ?hnew) (LB ?Z) (WE ?Z) (WE ?X))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 100/100 (and (EM ?Y ?Y))))
  )
  (:action ECA
    :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z - rndobj)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur horzn1 ?hnew) (VF ?Z ?Z) (WE ?X) (EM ?Y ?Z) (WE ?Z))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 36/100 (and (LB ?Y) (VF ?Y ?Z) (VF ?X ?Y) (not (VF ?Z ?Z)) (VF ?X ?X)) 64/100 (and (not (VF ?Z ?Z)) (KR ?Z))))
  )
  (:action FMN
    :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z - rndobj)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur horzn1 ?hnew) (LB ?Z) (LB ?Y) (WE ?X))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 100/100 (and (VF ?Z ?Y) (KR ?Y) (KR ?Z) (VF ?X ?Z) (LB ?X))))
  )
  (:action AIV
    :parameters (?hcur ?hnew - horizon-value ?X ?Y - rndobj)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur horzn1 ?hnew) (EM ?Y ?X))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 30/100 (and (WE ?X) (not (EM ?Y ?X)) (LB ?Y) (LB ?X) (EM ?X ?X)) 50/100 (and (EM ?Y ?Y) (VF ?Y ?Y) (KR ?X) (not (EM ?Y ?X)) (LB ?X)) 20/100 (and (EM ?X ?X))))
  )
  (:action NDS
    :parameters (?hcur ?hnew - horizon-value ?X ?Y ?Z - rndobj)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur horzn1 ?hnew) (VF ?Z ?X) (KR ?X) (EM ?Y ?X))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (probabilistic 100/100 (and (KR ?Z) (not (KR ?X)) (not (EM ?Y ?X)) (KR ?Y))))
  )
  (:action reset1
    :parameters (?hcur ?hnew - horizon-value)
:precondition (and (horizon ?hcur) (horizon-decrement ?hcur horzn1 ?hnew) (not-clear))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (forall (?x) (and (not (LB ?x)) (not (EM ?x ZW)) (not (EM ?x QJ)) (not (EM ?x PA)) (not (EM ?x OX)) (not (EM ?x TA)) (not (EM ?x RO)) (not (EM ?x GC)) (not (EM ?x EZ)) (not (EM ?x RQ)) (not (EM ?x YX)) (not (WE ?x)) (not (KR ?x)) (not (VF ?x ZW)) (not (VF ?x QJ)) (not (VF ?x PA)) (not (VF ?x OX)) (not (VF ?x TA)) (not (VF ?x RO)) (not (VF ?x GC)) (not (VF ?x EZ)) (not (VF ?x RQ)) (not (VF ?x YX)))) (not (not-clear)) (clear))
  )
  (:action reset2
    :parameters (?hcur ?hnew - horizon-value)
:precondition (and (horizon ?hcur) (horizon-decrement ?hcur horzn1 ?hnew) (clear))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not-clear) (not (clear)) (KR OX) (VF ZW ZW) (WE PA) (LB TA) (EM QJ OX) (WE RQ) (KR RQ) (WE EZ) (VF EZ PA) (EM QJ YX) (WE ZW) (EM YX YX) (VF OX ZW) (EM OX RQ) (KR ZW) (VF QJ TA) (WE OX) (KR TA) (WE RO) (WE QJ))
  )
)