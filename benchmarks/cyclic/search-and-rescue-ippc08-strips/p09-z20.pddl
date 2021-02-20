;; -*-lisp-*-
;; Search & Rescue domain:
;;
;;   Florent Teichteil, 2008
;;
;; small modifications and problem generator:
;;   Olivier Buffet, 2008

(define (problem search-and-rescue-20)

  (:domain search-and-rescue)

  (:objects z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14 z15 z16 z17 z18 z19 z20 - zone)

  (:init (at base) (on-ground) (human-alive))

  (:goal (and (human-rescued)))

  (:metric minimize (total-cost))
)