(define (problem canadian-transport-l5-e10-t1-p5--minP200--maxP200--s957521)
(:domain canadian-transport-l5-e10-t1-p5--minP200--maxP200--s957521)

(:objects horzn0 horzn1 horzn2 horzn3 horzn4 horzn5 horzn6 horzn7 horzn8 horzn9 horzn10 horzn11 horzn12 horzn13 horzn14 horzn15 - horizon-value)
(:init (horizon horzn15) (horizon-decrement horzn1 horzn0) (horizon-decrement horzn2 horzn1) (horizon-decrement horzn3 horzn2) (horizon-decrement horzn4 horzn3) (horizon-decrement horzn5 horzn4) (horizon-decrement horzn6 horzn5) (horizon-decrement horzn7 horzn6) (horizon-decrement horzn8 horzn7) (horizon-decrement horzn9 horzn8) (horizon-decrement horzn10 horzn9) (horizon-decrement horzn11 horzn10) (horizon-decrement horzn12 horzn11) (horizon-decrement horzn13 horzn12) (horizon-decrement horzn14 horzn13) (horizon-decrement horzn15 horzn14) (at l1) (p-at p0 l2) (p-at p1 l4) (p-at p2 l1) (p-at p3 l2) (p-at p4 l0) (road-status r0 unknown) (road-status r1 unknown) (road-status r2 unknown) (road-status r3 unknown) (road-status r4 unknown) (road-status r5 unknown) (road-status r6 unknown) (road-status r7 unknown) (road-status r8 unknown) (road-status r9 unknown))
(:goal (and (p-at p0 l3) (p-at p1 l0) (p-at p2 l3) (p-at p3 l3) (p-at p4 l1)))
(:metric minimize (total-cost))
)