(define (problem ex_bw_6_p03)
  (:domain exploding-blocksworld)
  (:objects horzn0 horzn2 horzn3 horzn4 horzn5 horzn6 horzn7 horzn8 horzn9 horzn10 horzn11 horzn12 horzn13 horzn14 horzn15 horzn16 - horizon-value b1 b2 b3 b4 b5 b6 - block)
  (:init (horizon horzn16) (horizon-decrement horzn1 horzn1 horzn0) (horizon-decrement horzn2 horzn1 horzn1) (horizon-decrement horzn3 horzn1 horzn2) (horizon-decrement horzn4 horzn1 horzn3) (horizon-decrement horzn5 horzn1 horzn4) (horizon-decrement horzn6 horzn1 horzn5) (horizon-decrement horzn7 horzn1 horzn6) (horizon-decrement horzn8 horzn1 horzn7) (horizon-decrement horzn9 horzn1 horzn8) (horizon-decrement horzn10 horzn1 horzn9) (horizon-decrement horzn11 horzn1 horzn10) (horizon-decrement horzn12 horzn1 horzn11) (horizon-decrement horzn13 horzn1 horzn12) (horizon-decrement horzn14 horzn1 horzn13) (horizon-decrement horzn15 horzn1 horzn14) (horizon-decrement horzn16 horzn1 horzn15) (emptyhand) (on b1 b5) (on b2 b3) (on-table b3) (on-table b4) (on b5 b6) (on b6 b4) (clear b1) (clear b2) (no-detonated b1) (no-destroyed b1) (no-detonated b2) (no-destroyed b2) (no-detonated b3) (no-destroyed b3) (no-detonated b4) (no-destroyed b4) (no-detonated b5) (no-destroyed b5) (no-detonated b6) (no-destroyed b6) (no-destroyed-table))
  (:goal (and (on b3 b4) (on-table b5) (on-table b6)  )
)(:metric minimize (total-cost))
)