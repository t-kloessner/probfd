(define (problem random-problem256) 
 (:domain prob_domain) 
 
(:objects horzn0 horzn1 horzn2 - horizon-value)
(:init (horizon horzn2) (horizon-decrement horzn1 horzn0) (horizon-decrement horzn2 horzn1) 
(not-clear)
(UF WL MM) (IV RV) (XZ EW) (XZ GU) (IV MM) (MK GU) (XL FY) (XL EW) (MK VE) (XL EA) (MK GF) (IV EW) (IV GF) (UF GF GU) (UF FY GF) (IV GU) (UF FY EA) (IV FY) (IV PX) (XZ RV)  
)
 (:goal (and 
(MK PX ) 
(XL PX ) 
))
(:metric minimize (total-cost))
)