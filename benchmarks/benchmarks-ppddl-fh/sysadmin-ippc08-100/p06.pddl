(define (problem sysadmin-nocount)
(:domain sysadmin-nocount)
(:objects horzn0 horzn1 horzn2 horzn3 horzn4 horzn5 horzn6 horzn7 horzn8 horzn9 horzn10 horzn11 horzn12 horzn13 horzn14 horzn15 horzn16 - horizon-value
)
(:init (horizon horzn16) (horizon-decrement horzn1 horzn0) (horizon-decrement horzn2 horzn1) (horizon-decrement horzn3 horzn2) (horizon-decrement horzn4 horzn3) (horizon-decrement horzn5 horzn4) (horizon-decrement horzn6 horzn5) (horizon-decrement horzn7 horzn6) (horizon-decrement horzn8 horzn7) (horizon-decrement horzn9 horzn8) (horizon-decrement horzn10 horzn9) (horizon-decrement horzn11 horzn10) (horizon-decrement horzn12 horzn11) (horizon-decrement horzn13 horzn12) (horizon-decrement horzn14 horzn13) (horizon-decrement horzn15 horzn14) (horizon-decrement horzn16 horzn15)
  (all-updated)
)
(:goal (and
  (all-updated)
  (running comp0)
  (running comp1)
  (running comp2)
  (running comp3)
  (running comp4)
  (running comp5)
  (running comp6)
  (running comp7)
  (running comp8)
  (running comp9)
  (running comp10)
  (running comp11)
  (running comp12)
  (running comp13)
  (running comp14)
  (running comp15)
))
(:metric minimize (total-cost))
)