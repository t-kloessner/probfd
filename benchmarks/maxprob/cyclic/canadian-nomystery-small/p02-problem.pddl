(define (problem canadian-transport-l4-e8-t1-p5--minP200--maxP200--s223535)
(:domain canadian-transport-l4-e8-t1-p5--minP200--maxP200--s223535)
(:init (at l0) (p-at p0 l2) (p-at p1 l3) (p-at p2 l1) (p-at p3 l2) (p-at p4 l3) (road-status r0 unknown) (road-status r1 unknown) (road-status r2 unknown) (road-status r3 unknown) (road-status r4 unknown) (road-status r5 unknown) (road-status r6 unknown) (road-status r7 unknown))
(:goal (and (p-at p0 l0) (p-at p1 l2) (p-at p2 l2) (p-at p3 l0) (p-at p4 l1)))
(:metric minimize (total-cost))
)