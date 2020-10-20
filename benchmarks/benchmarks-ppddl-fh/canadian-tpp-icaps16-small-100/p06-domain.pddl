(define (domain dom--tpp-m4-g4-s359314)
(:requirements :typing :probabilistic-effects)
(:types horizon-value - object
    place - domain
    depot market - place 
    locatable - domain
    truck goods - locatable
    road - object
)

(:predicates (horizon ?h - horizon-value) (horizon-decrement ?h0 ?h1 - horizon-value)
    (at ?t - truck ?p - place)
    (on-sale ?g - goods ?m - market)
    (available ?g - goods ?m - market)
    (loaded ?g - goods ?t - truck)
    (stored ?g - goods)
    (road_isunknown ?r - road) (road_isblocked ?r - road) (road_isfree ?r - road))

(:functions (total-cost) (price ?g - goods ?m - market))

(:constants
    depot0 - depot
    market1 market2 market3 market4 - market
    road0 road1 road2 road3 road4 - road
)

(:action buy
    :parameters (?hcur ?hnew - horizon-value ?t - truck ?g - goods ?m - market)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (on-sale ?g ?m))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (on-sale ?g ?m)) (available ?g ?m)))

(:action load
    :parameters (?hcur ?hnew - horizon-value ?g - goods ?t - truck ?m - market)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (available ?g ?m) (at ?t ?m))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (loaded ?g ?t) (not (available ?g ?m))))

(:action unload
    :parameters (?hcur ?hnew - horizon-value ?t - truck ?g - goods ?d - depot)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (loaded ?g ?t) (at ?t ?d))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (stored ?g) (not (loaded ?g ?t))))

(:action try-drive-m0-m1
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road0) (at ?t depot0))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road0)) (probabilistic
    200/1000 (and (road_isblocked road0))
    800/1000 (and (road_isfree road0) (not (at ?t depot0)) (at ?t market1)))))

(:action drive-m0-m1
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road0) (at ?t depot0))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t depot0)) (at ?t market1)))

(:action try-drive-m1-m0
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road0) (at ?t market1))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road0)) (probabilistic
    200/1000 (and (road_isblocked road0))
    800/1000 (and (road_isfree road0) (not (at ?t market1)) (at ?t depot0)))))

(:action drive-m1-m0
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road0) (at ?t market1))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market1)) (at ?t depot0)))

(:action try-drive-m0-m2
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road1) (at ?t depot0))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road1)) (probabilistic
    200/1000 (and (road_isblocked road1))
    800/1000 (and (road_isfree road1) (not (at ?t depot0)) (at ?t market2)))))

(:action drive-m0-m2
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road1) (at ?t depot0))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t depot0)) (at ?t market2)))

(:action try-drive-m2-m0
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road1) (at ?t market2))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road1)) (probabilistic
    200/1000 (and (road_isblocked road1))
    800/1000 (and (road_isfree road1) (not (at ?t market2)) (at ?t depot0)))))

(:action drive-m2-m0
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road1) (at ?t market2))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market2)) (at ?t depot0)))

(:action try-drive-m1-m4
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road2) (at ?t market1))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road2)) (probabilistic
    200/1000 (and (road_isblocked road2))
    800/1000 (and (road_isfree road2) (not (at ?t market1)) (at ?t market4)))))

(:action drive-m1-m4
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road2) (at ?t market1))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market1)) (at ?t market4)))

(:action try-drive-m4-m1
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road2) (at ?t market4))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road2)) (probabilistic
    200/1000 (and (road_isblocked road2))
    800/1000 (and (road_isfree road2) (not (at ?t market4)) (at ?t market1)))))

(:action drive-m4-m1
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road2) (at ?t market4))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market4)) (at ?t market1)))

(:action try-drive-m2-m3
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road3) (at ?t market2))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road3)) (probabilistic
    200/1000 (and (road_isblocked road3))
    800/1000 (and (road_isfree road3) (not (at ?t market2)) (at ?t market3)))))

(:action drive-m2-m3
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road3) (at ?t market2))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market2)) (at ?t market3)))

(:action try-drive-m3-m2
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road3) (at ?t market3))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road3)) (probabilistic
    200/1000 (and (road_isblocked road3))
    800/1000 (and (road_isfree road3) (not (at ?t market3)) (at ?t market2)))))

(:action drive-m3-m2
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road3) (at ?t market3))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market3)) (at ?t market2)))

(:action try-drive-m2-m4
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road4) (at ?t market2))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road4)) (probabilistic
    200/1000 (and (road_isblocked road4))
    800/1000 (and (road_isfree road4) (not (at ?t market2)) (at ?t market4)))))

(:action drive-m2-m4
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road4) (at ?t market2))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market2)) (at ?t market4)))

(:action try-drive-m4-m2
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isunknown road4) (at ?t market4))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (road_isunknown road4)) (probabilistic
    200/1000 (and (road_isblocked road4))
    800/1000 (and (road_isfree road4) (not (at ?t market4)) (at ?t market2)))))

(:action drive-m4-m2
    :parameters (?hcur ?hnew - horizon-value ?t - truck)
    :precondition (and (horizon ?hcur) (horizon-decrement ?hcur ?hnew) (road_isfree road4) (at ?t market4))
    :effect (and (not (horizon ?hcur)) (horizon ?hnew) (increase (total-cost) 1) (not (at ?t market4)) (at ?t market2)))

)