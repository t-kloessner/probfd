(define (domain a-schedule-problem837)
(:requirements :probabilistic-effects :negative-preconditions :typing)
(:types class packet timestep phase - object)
(:constants
  C0 C1 C2 C3 C4 C5 C6 - class
  Arrivals-and-updating Cleanup-and-service - phase
  U0 U1 U2 U3 U4 U5 U6 - timestep
  P0 P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 P18 P19 P20 P21 P22 P23 P24 P25 P26 P27 P28 P29 P30 P31 P32 P33 P34 P35 P36 P37 P38 P39 P40 P41 - packet
)
(:predicates
  (current-phase ?s - phase)
  (packet-class ?p - packet ?c - class)
  (time-to-live ?p - packet ?t - timestep)
  (available ?p - packet)
  (current-timestep ?t - timestep)
  (next-timestep ?t0 ?t1 - timestep)
  (need-to-process-arrivals ?c - class)
  (served ?c - class)
  (alive)
)
(:action process-arrivals-C0
  :parameters (?arriving-packet - packet ?t - timestep)
  :precondition (and
    (current-phase Arrivals-and-updating)
    (available ?arriving-packet)
    (need-to-process-arrivals C0)
    (current-timestep ?t)
  )
  :effect (and
    (not (need-to-process-arrivals C0))
    (probabilistic 3/1000 (and (not (available ?arriving-packet)) (time-to-live ?arriving-packet ?t) (packet-class ?arriving-packet C0)))
    (increase (total-cost) 1)
  )
)
(:action process-arrivals
  :parameters (?c - class ?arriving-packet - packet ?t - timestep)
  :precondition (and
    (not (= ?c C0))
    (current-phase Arrivals-and-updating)
    (available ?arriving-packet)
    (need-to-process-arrivals ?c)
    (current-timestep ?t)
  )
  :effect (and
    (not (need-to-process-arrivals ?c))
    (probabilistic 11/60 (and (not (available ?arriving-packet)) (time-to-live ?arriving-packet ?t) (packet-class ?arriving-packet ?c)))
    (increase (total-cost) 1)
  )
)
(:action time-update
  :parameters (?t0 ?t1 - timestep)
  :precondition (and
    (current-phase Arrivals-and-updating)
    (current-timestep ?t0)
    (next-timestep ?t0 ?t1)
    (not (need-to-process-arrivals C0))
    (not (need-to-process-arrivals C1))
    (not (need-to-process-arrivals C2))
    (not (need-to-process-arrivals C3))
    (not (need-to-process-arrivals C4))
    (not (need-to-process-arrivals C5))
    (not (need-to-process-arrivals C6))
  )
  :effect (and
    (not (current-phase Arrivals-and-updating))
    (current-phase Cleanup-and-service)
    (not (current-timestep ?t0))
    (current-timestep ?t1)
    (increase (total-cost) 1)
  )
)
(:action reclaim-packet-C0
  :parameters (?p - packet ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p C0)
    (time-to-live ?p ?t)
  )
  :effect (and
    (not (packet-class ?p C0))
    (not (time-to-live ?p ?t))
    (available ?p)
    (probabilistic 7/10 (and (not (alive))))
    (increase (total-cost) 1)
  )
)
(:action reclaim-packet-C1
  :parameters (?p - packet ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p C1)
    (time-to-live ?p ?t)
  )
  :effect (and
    (not (packet-class ?p C1))
    (not (time-to-live ?p ?t))
    (available ?p)
    (probabilistic 1/20 (and (not (alive))))
    (increase (total-cost) 1)
  )
)
(:action reclaim-packet-C2
  :parameters (?p - packet ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p C2)
    (time-to-live ?p ?t)
  )
  :effect (and
    (not (packet-class ?p C2))
    (not (time-to-live ?p ?t))
    (available ?p)
    (probabilistic 1/20 (and (not (alive))))
    (increase (total-cost) 1)
  )
)
(:action reclaim-packet-C3
  :parameters (?p - packet ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p C3)
    (time-to-live ?p ?t)
  )
  :effect (and
    (not (packet-class ?p C3))
    (not (time-to-live ?p ?t))
    (available ?p)
    (probabilistic 1/25 (and (not (alive))))
    (increase (total-cost) 1)
  )
)
(:action reclaim-packet-C4
  :parameters (?p - packet ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p C4)
    (time-to-live ?p ?t)
  )
  :effect (and
    (not (packet-class ?p C4))
    (not (time-to-live ?p ?t))
    (available ?p)
    (probabilistic 1/50 (and (not (alive))))
    (increase (total-cost) 1)
  )
)
(:action reclaim-packet-C5
  :parameters (?p - packet ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p C5)
    (time-to-live ?p ?t)
  )
  :effect (and
    (not (packet-class ?p C5))
    (not (time-to-live ?p ?t))
    (available ?p)
    (probabilistic 1/100 (and (not (alive))))
    (increase (total-cost) 1)
  )
)
(:action reclaim-packet-C6
  :parameters (?p - packet ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p C6)
    (time-to-live ?p ?t)
  )
  :effect (and
    (not (packet-class ?p C6))
    (not (time-to-live ?p ?t))
    (available ?p)
    (probabilistic 1/200 (and (not (alive))))
    (increase (total-cost) 1)
  )
)
(:action packet-serve
  :parameters (?p - packet ?c - class ?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (packet-class ?p ?c)
    (current-timestep ?t)
    (not (time-to-live P0 ?t))
    (not (time-to-live P1 ?t))
    (not (time-to-live P2 ?t))
    (not (time-to-live P3 ?t))
    (not (time-to-live P4 ?t))
    (not (time-to-live P5 ?t))
    (not (time-to-live P6 ?t))
    (not (time-to-live P7 ?t))
    (not (time-to-live P8 ?t))
    (not (time-to-live P9 ?t))
    (not (time-to-live P10 ?t))
    (not (time-to-live P11 ?t))
    (not (time-to-live P12 ?t))
    (not (time-to-live P13 ?t))
    (not (time-to-live P14 ?t))
    (not (time-to-live P15 ?t))
    (not (time-to-live P16 ?t))
    (not (time-to-live P17 ?t))
    (not (time-to-live P18 ?t))
    (not (time-to-live P19 ?t))
    (not (time-to-live P20 ?t))
    (not (time-to-live P21 ?t))
    (not (time-to-live P22 ?t))
    (not (time-to-live P23 ?t))
    (not (time-to-live P24 ?t))
    (not (time-to-live P25 ?t))
    (not (time-to-live P26 ?t))
    (not (time-to-live P27 ?t))
    (not (time-to-live P28 ?t))
    (not (time-to-live P29 ?t))
    (not (time-to-live P30 ?t))
    (not (time-to-live P31 ?t))
    (not (time-to-live P32 ?t))
    (not (time-to-live P33 ?t))
    (not (time-to-live P34 ?t))
    (not (time-to-live P35 ?t))
    (not (time-to-live P36 ?t))
    (not (time-to-live P37 ?t))
    (not (time-to-live P38 ?t))
    (not (time-to-live P39 ?t))
    (not (time-to-live P40 ?t))
    (not (time-to-live P41 ?t))
  )
  :effect (and
    (forall (?c1 - class) (need-to-process-arrivals ?c1))
    (not (current-phase Cleanup-and-service))
    (current-phase Arrivals-and-updating)
    (served ?c)
    (not (packet-class ?p ?c))
    (forall (?u - timestep) (not (time-to-live ?p ?u)))
    (available ?p)
    (increase (total-cost) 1)
  )
)
(:action serve-nothing
  :parameters (?t - timestep)
  :precondition (and
    (current-phase Cleanup-and-service)
    (current-timestep ?t)
    (not (time-to-live P0 ?t))
    (not (time-to-live P1 ?t))
    (not (time-to-live P2 ?t))
    (not (time-to-live P3 ?t))
    (not (time-to-live P4 ?t))
    (not (time-to-live P5 ?t))
    (not (time-to-live P6 ?t))
    (not (time-to-live P7 ?t))
    (not (time-to-live P8 ?t))
    (not (time-to-live P9 ?t))
    (not (time-to-live P10 ?t))
    (not (time-to-live P11 ?t))
    (not (time-to-live P12 ?t))
    (not (time-to-live P13 ?t))
    (not (time-to-live P14 ?t))
    (not (time-to-live P15 ?t))
    (not (time-to-live P16 ?t))
    (not (time-to-live P17 ?t))
    (not (time-to-live P18 ?t))
    (not (time-to-live P19 ?t))
    (not (time-to-live P20 ?t))
    (not (time-to-live P21 ?t))
    (not (time-to-live P22 ?t))
    (not (time-to-live P23 ?t))
    (not (time-to-live P24 ?t))
    (not (time-to-live P25 ?t))
    (not (time-to-live P26 ?t))
    (not (time-to-live P27 ?t))
    (not (time-to-live P28 ?t))
    (not (time-to-live P29 ?t))
    (not (time-to-live P30 ?t))
    (not (time-to-live P31 ?t))
    (not (time-to-live P32 ?t))
    (not (time-to-live P33 ?t))
    (not (time-to-live P34 ?t))
    (not (time-to-live P35 ?t))
    (not (time-to-live P36 ?t))
    (not (time-to-live P37 ?t))
    (not (time-to-live P38 ?t))
    (not (time-to-live P39 ?t))
    (not (time-to-live P40 ?t))
    (not (time-to-live P41 ?t))
  )
  :effect (and
    (forall (?c1 - class) (need-to-process-arrivals ?c1))
    (not (current-phase Cleanup-and-service))
    (current-phase Arrivals-and-updating)
    (increase (total-cost) 1)
  )
)
)