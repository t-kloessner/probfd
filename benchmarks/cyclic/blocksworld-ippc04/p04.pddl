(define (problem bw_5_28161)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 b5 - block)
  (:init (emptyhand) (on b1 b4) (on-table b2) (on-table b3) (on b4 b2) (on b5 b3) (clear b1) (clear b5))
  (:goal (and (emptyhand) (on b1 b5) (on b2 b3) (on-table b3) (on b4 b1) (on b5 b2) (clear b4)))
  (:metric minimize (total-cost))
)