(define (problem a-schedule-problem435)
(:domain a-schedule-problem435)
(:objects
)
(:init
  (alive)
  (current-phase Arrivals-and-updating)
  (current-timestep U0)
  (need-to-process-arrivals C0)
  (need-to-process-arrivals C1)
  (need-to-process-arrivals C2)
  (need-to-process-arrivals C3)
  (need-to-process-arrivals C4)
  (need-to-process-arrivals C5)
  (need-to-process-arrivals C6)
  (need-to-process-arrivals C7)
  (need-to-process-arrivals C8)
  (need-to-process-arrivals C9)
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
  (available P15)
  (available P16)
  (available P17)
  (available P18)
  (available P19)
  (available P20)
  (available P21)
  (available P22)
  (available P23)
  (available P24)
  (available P25)
  (available P26)
  (available P27)
  (available P28)
  (available P29)
  (available P30)
  (available P31)
  (available P32)
  (available P33)
  (available P34)
  (available P35)
  (available P36)
  (available P37)
  (available P38)
  (available P39)
  (available P40)
  (available P41)
  (available P42)
  (available P43)
  (available P44)
  (available P45)
  (available P46)
  (available P47)
  (available P48)
  (available P49)
  (available P50)
  (available P51)
  (available P52)
  (available P53)
  (available P54)
  (available P55)
  (available P56)
  (available P57)
  (available P58)
  (available P59)
  (next-timestep U0 U1)
  (next-timestep U1 U2)
  (next-timestep U2 U3)
  (next-timestep U3 U4)
  (next-timestep U4 U5)
  (next-timestep U5 U6)
  (next-timestep U6 U0)
)
(:goal (and
  (alive)
  (served C0)
  (served C1)
  (served C2)
  (served C3)
  (served C4)
  (served C5)
  (served C6)
  (served C7)
  (served C8)
  (served C9)
))
(:metric minimize (total-cost))
)