(define (problem bw_18_25751)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 - block)
  (:init (emptyhand) (on b1 b6) (on b2 b11) (on b3 b14) (on b4 b8) (on b5 b1) (on-table b6) (on b7 b3) (on b8 b13) (on b9 b16) (on-table b10) (on b11 b10) (on b12 b15) (on-table b13) (on b14 b2) (on b15 b5) (on b16 b12) (on b17 b9) (on-table b18) (clear b4) (clear b7) (clear b17) (clear b18))
  (:goal (and (emptyhand) (on b1 b12) (on b2 b15) (on b3 b18) (on b4 b1) (on b5 b13) (on b6 b17) (on-table b7) (on-table b8) (on b9 b4) (on b10 b2) (on b11 b7) (on b12 b11) (on b13 b10) (on b14 b9) (on b15 b6) (on-table b16) (on b17 b16) (on-table b18) (clear b3) (clear b5) (clear b8) (clear b14)))
  (:metric minimize (total-cost))
)