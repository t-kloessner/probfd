(define (domain dom--tpp-m7-g4-s773243) (:requirements :typing :probabilistic-effects) (:types place - domain depot market - place locatable - domain truck goods - locatable road - object money) (:constants depot0 - depot market1 market2 market3 market4 market5 market6 market7 - market road0 road1 road2 road3 road4 road5 road6 road7 - road m0 m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11 m12 m13 m14 m15 m16 m17 m18 m19 m20 m21 m22 m23 m24 m25 m26 m27 m28 m29 m30 m31 m32 m33 m34 m35 m36 m37 m38 m39 m40 m41 m42 m43 m44 m45 m46 m47 m48 m49 m50 m51 m52 m53 m54 m55 m56 m57 m58 m59 m60 m61 m62 m63 m64 m65 m66 m67 m68 m69 m70 m71 - money) (:predicates (at ?t - truck ?p - place) (on-sale ?g - goods ?m - market) (available ?g - goods ?m - market) (loaded ?g - goods ?t - truck) (stored ?g - goods) (road_isunknown ?r - road) (road_isblocked ?r - road) (road_isfree ?r - road) (available_money ?m - money) (diff ?m0 ?m1 ?m2 - money) (price2 ?g - goods ?m - market ?mx - money)) (:functions (total-cost) (price ?g - goods ?m - market)) (:action buy :parameters (?t - truck ?g - goods ?m - market ?oldm ?newm ?cost - money) :precondition (and (on-sale ?g ?m) (price2 ?g ?m ?cost) (available_money ?oldm) (diff ?oldm ?cost ?newm)) :effect (and (increase (total-cost) (price ?g ?m)) (not (on-sale ?g ?m)) (available ?g ?m) (not (available_money ?oldm)) (available_money ?newm))) (:action load :parameters (?g - goods ?t - truck ?m - market) :precondition (and (available ?g ?m) (at ?t ?m)) :effect (and (increase (total-cost) 1) (loaded ?g ?t) (not (available ?g ?m)))) (:action unload :parameters (?t - truck ?g - goods ?d - depot) :precondition (and (loaded ?g ?t) (at ?t ?d)) :effect (and (increase (total-cost) 1) (stored ?g) (not (loaded ?g ?t)))) (:action try-drive-m0-m3 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road0) (at ?t depot0) (available_money ?oldm) (diff ?oldm m6 ?newm)) :effect (and (increase (total-cost) 6) (not (road_isunknown road0)) (probabilistic 200/1000 (and (road_isblocked road0)) 800/1000 (and (road_isfree road0) (not (at ?t depot0)) (at ?t market3) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m0-m3 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road0) (at ?t depot0) (available_money ?oldm) (diff ?oldm m6 ?newm)) :effect (and (increase (total-cost) 6) (not (at ?t depot0)) (at ?t market3) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m3-m0 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road0) (at ?t market3) (available_money ?oldm) (diff ?oldm m6 ?newm)) :effect (and (increase (total-cost) 6) (not (road_isunknown road0)) (probabilistic 200/1000 (and (road_isblocked road0)) 800/1000 (and (road_isfree road0) (not (at ?t market3)) (at ?t depot0) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m3-m0 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road0) (at ?t market3) (available_money ?oldm) (diff ?oldm m6 ?newm)) :effect (and (increase (total-cost) 6) (not (at ?t market3)) (at ?t depot0) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m0-m7 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road1) (at ?t depot0) (available_money ?oldm) (diff ?oldm m7 ?newm)) :effect (and (increase (total-cost) 7) (not (road_isunknown road1)) (probabilistic 200/1000 (and (road_isblocked road1)) 800/1000 (and (road_isfree road1) (not (at ?t depot0)) (at ?t market7) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m0-m7 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road1) (at ?t depot0) (available_money ?oldm) (diff ?oldm m7 ?newm)) :effect (and (increase (total-cost) 7) (not (at ?t depot0)) (at ?t market7) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m7-m0 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road1) (at ?t market7) (available_money ?oldm) (diff ?oldm m7 ?newm)) :effect (and (increase (total-cost) 7) (not (road_isunknown road1)) (probabilistic 200/1000 (and (road_isblocked road1)) 800/1000 (and (road_isfree road1) (not (at ?t market7)) (at ?t depot0) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m7-m0 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road1) (at ?t market7) (available_money ?oldm) (diff ?oldm m7 ?newm)) :effect (and (increase (total-cost) 7) (not (at ?t market7)) (at ?t depot0) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m1-m2 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road2) (at ?t market1) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (road_isunknown road2)) (probabilistic 200/1000 (and (road_isblocked road2)) 800/1000 (and (road_isfree road2) (not (at ?t market1)) (at ?t market2) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m1-m2 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road2) (at ?t market1) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (at ?t market1)) (at ?t market2) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m2-m1 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road2) (at ?t market2) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (road_isunknown road2)) (probabilistic 200/1000 (and (road_isblocked road2)) 800/1000 (and (road_isfree road2) (not (at ?t market2)) (at ?t market1) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m2-m1 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road2) (at ?t market2) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (at ?t market2)) (at ?t market1) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m2-m6 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road3) (at ?t market2) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (road_isunknown road3)) (probabilistic 200/1000 (and (road_isblocked road3)) 800/1000 (and (road_isfree road3) (not (at ?t market2)) (at ?t market6) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m2-m6 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road3) (at ?t market2) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (at ?t market2)) (at ?t market6) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m6-m2 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road3) (at ?t market6) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (road_isunknown road3)) (probabilistic 200/1000 (and (road_isblocked road3)) 800/1000 (and (road_isfree road3) (not (at ?t market6)) (at ?t market2) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m6-m2 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road3) (at ?t market6) (available_money ?oldm) (diff ?oldm m4 ?newm)) :effect (and (increase (total-cost) 4) (not (at ?t market6)) (at ?t market2) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m2-m7 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road4) (at ?t market2) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (road_isunknown road4)) (probabilistic 200/1000 (and (road_isblocked road4)) 800/1000 (and (road_isfree road4) (not (at ?t market2)) (at ?t market7) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m2-m7 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road4) (at ?t market2) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (at ?t market2)) (at ?t market7) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m7-m2 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road4) (at ?t market7) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (road_isunknown road4)) (probabilistic 200/1000 (and (road_isblocked road4)) 800/1000 (and (road_isfree road4) (not (at ?t market7)) (at ?t market2) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m7-m2 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road4) (at ?t market7) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (at ?t market7)) (at ?t market2) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m3-m4 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road5) (at ?t market3) (available_money ?oldm) (diff ?oldm m11 ?newm)) :effect (and (increase (total-cost) 11) (not (road_isunknown road5)) (probabilistic 200/1000 (and (road_isblocked road5)) 800/1000 (and (road_isfree road5) (not (at ?t market3)) (at ?t market4) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m3-m4 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road5) (at ?t market3) (available_money ?oldm) (diff ?oldm m11 ?newm)) :effect (and (increase (total-cost) 11) (not (at ?t market3)) (at ?t market4) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m4-m3 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road5) (at ?t market4) (available_money ?oldm) (diff ?oldm m11 ?newm)) :effect (and (increase (total-cost) 11) (not (road_isunknown road5)) (probabilistic 200/1000 (and (road_isblocked road5)) 800/1000 (and (road_isfree road5) (not (at ?t market4)) (at ?t market3) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m4-m3 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road5) (at ?t market4) (available_money ?oldm) (diff ?oldm m11 ?newm)) :effect (and (increase (total-cost) 11) (not (at ?t market4)) (at ?t market3) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m3-m6 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road6) (at ?t market3) (available_money ?oldm) (diff ?oldm m17 ?newm)) :effect (and (increase (total-cost) 17) (not (road_isunknown road6)) (probabilistic 200/1000 (and (road_isblocked road6)) 800/1000 (and (road_isfree road6) (not (at ?t market3)) (at ?t market6) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m3-m6 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road6) (at ?t market3) (available_money ?oldm) (diff ?oldm m17 ?newm)) :effect (and (increase (total-cost) 17) (not (at ?t market3)) (at ?t market6) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m6-m3 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road6) (at ?t market6) (available_money ?oldm) (diff ?oldm m17 ?newm)) :effect (and (increase (total-cost) 17) (not (road_isunknown road6)) (probabilistic 200/1000 (and (road_isblocked road6)) 800/1000 (and (road_isfree road6) (not (at ?t market6)) (at ?t market3) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m6-m3 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road6) (at ?t market6) (available_money ?oldm) (diff ?oldm m17 ?newm)) :effect (and (increase (total-cost) 17) (not (at ?t market6)) (at ?t market3) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m5-m7 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road7) (at ?t market5) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (road_isunknown road7)) (probabilistic 200/1000 (and (road_isblocked road7)) 800/1000 (and (road_isfree road7) (not (at ?t market5)) (at ?t market7) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m5-m7 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road7) (at ?t market5) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (at ?t market5)) (at ?t market7) (not (available_money ?oldm)) (available_money ?newm))) (:action try-drive-m7-m5 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isunknown road7) (at ?t market7) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (road_isunknown road7)) (probabilistic 200/1000 (and (road_isblocked road7)) 800/1000 (and (road_isfree road7) (not (at ?t market7)) (at ?t market5) (not (available_money ?oldm)) (available_money ?newm))))) (:action drive-m7-m5 :parameters (?t - truck ?oldm ?newm - money) :precondition (and (road_isfree road7) (at ?t market7) (available_money ?oldm) (diff ?oldm m15 ?newm)) :effect (and (increase (total-cost) 15) (not (at ?t market7)) (at ?t market5) (not (available_money ?oldm)) (available_money ?newm))))