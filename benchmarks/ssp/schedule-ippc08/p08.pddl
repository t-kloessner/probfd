(define (problem a-schedule-problem833)
(:domain a-schedule-problem833)
(:objects
)
(:init
  (alive)
  (current-phase Arrivals-and-updating)
  (current-timestep U0)
  (need-to-process-arrivals C0)
  (need-to-process-arrivals C1)
  (need-to-process-arrivals C2)
  (available P0)
  (available P1)
  (available P2)
  (available P3)
  (available P4)
  (available P5)
  (available P6)
  (available P7)
  (available P8)
  (available P9)
  (available P10)
  (available P11)
  (available P12)
  (available P13)
  (available P14)
  (next-timestep U0 U1)
  (next-timestep U1 U2)
  (next-timestep U2 U3)
  (next-timestep U3 U4)
  (next-timestep U4 U5)
  (next-timestep U5 U0)
)
(:goal (and
  (alive)
  (served C0)
  (served C1)
  (served C2)
))
(:metric minimize (total-cost))
)