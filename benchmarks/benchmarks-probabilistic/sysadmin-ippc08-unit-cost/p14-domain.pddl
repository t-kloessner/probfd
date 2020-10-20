(define (domain sysadmin-nocount)
(:requirements :probabilistic-effects :negative-preconditions :typing)
(:types computer - object)
(:constants
  comp0 comp1 comp2 comp3 comp4 comp5 comp6 comp7 comp8 comp9 comp10 comp11 comp12 comp13 comp14 comp15 comp16 comp17 comp18 comp19 comp20 comp21 comp22 comp23 comp24 comp25 comp26 comp27 comp28 comp29 comp30 comp31 comp32 comp33 comp34 comp35 comp36 comp37 comp38 comp39 comp40 comp41 comp42 comp43 comp44 comp45 comp46 comp47 comp48 comp49 comp50 comp51 comp52 comp53 comp54 comp55 comp56 comp57 comp58 comp59 comp60 comp61 comp62 comp63 comp64 comp65 comp66 comp67 comp68 comp69 comp70 comp71 comp72 comp73 comp74 comp75 comp76 comp77 comp78 comp79 comp80 comp81 comp82 comp83 comp84 comp85 comp86 comp87 comp88 comp89 comp90 comp91 comp92 comp93 comp94 comp95 comp96 comp97 comp98 comp99 comp100 comp101 comp102 comp103 comp104 comp105 comp106 comp107 comp108 comp109 comp110 comp111 comp112 comp113 comp114 comp115 comp116 comp117 comp118 comp119 comp120 comp121 comp122 comp123 comp124 comp125 comp126 comp127 comp128 comp129 comp130 comp131 comp132 comp133 comp134 comp135 comp136 comp137 comp138 comp139 comp140 comp141 comp142 comp143 comp144 comp145 comp146 comp147 comp148 comp149 comp150 comp151 comp152 comp153 comp154 comp155 comp156 comp157 comp158 comp159 comp160 comp161 comp162 comp163 comp164 comp165 comp166 comp167 comp168 comp169 comp170 comp171 comp172 comp173 comp174 comp175 comp176 comp177 comp178 comp179 comp180 comp181 comp182 comp183 comp184 comp185 comp186 comp187 comp188 comp189 comp190 comp191 comp192 comp193 comp194 comp195 comp196 comp197 comp198 comp199 comp200 comp201 comp202 comp203 comp204 comp205 comp206 comp207 comp208 comp209 comp210 comp211 comp212 comp213 comp214 comp215 comp216 comp217 comp218 comp219 comp220 comp221 comp222 comp223 comp224 comp225 comp226 comp227 comp228 comp229 comp230 comp231 comp232 comp233 comp234 comp235 comp236 comp237 comp238 comp239 comp240 comp241 comp242 comp243 comp244 comp245 comp246 comp247 comp248 comp249 comp250 comp251 comp252 comp253 comp254 comp255 comp256 comp257 comp258 comp259 comp260 comp261 comp262 comp263 comp264 comp265 comp266 comp267 comp268 comp269 comp270 comp271 comp272 comp273 comp274 comp275 comp276 comp277 comp278 comp279 comp280 comp281 comp282 comp283 comp284 comp285 comp286 comp287 comp288 comp289 comp290 comp291 comp292 comp293 comp294 comp295 comp296 comp297 comp298 comp299 comp300 comp301 comp302 comp303 comp304 comp305 comp306 comp307 comp308 comp309 comp310 comp311 comp312 comp313 comp314 comp315 comp316 comp317 comp318 comp319 comp320 comp321 comp322 comp323 comp324 comp325 comp326 comp327 comp328 comp329 comp330 comp331 comp332 comp333 comp334 comp335 comp336 comp337 comp338 comp339 comp340 comp341 comp342 comp343 comp344 comp345 comp346 comp347 comp348 comp349 comp350 comp351 comp352 comp353 comp354 comp355 comp356 comp357 comp358 comp359 comp360 comp361 comp362 comp363 comp364 comp365 comp366 comp367 comp368 comp369 comp370 comp371 comp372 comp373 comp374 comp375 comp376 comp377 comp378 comp379 comp380 comp381 comp382 comp383 comp384 comp385 comp386 comp387 comp388 comp389 comp390 comp391 comp392 comp393 comp394 comp395 comp396 comp397 comp398 comp399 comp400 comp401 comp402 comp403 comp404 comp405 comp406 comp407 comp408 comp409 comp410 comp411 comp412 comp413 comp414 comp415 comp416 comp417 comp418 comp419 comp420 comp421 comp422 comp423 comp424 comp425 comp426 comp427 comp428 comp429 comp430 comp431 comp432 comp433 comp434 comp435 comp436 comp437 comp438 comp439 comp440 comp441 comp442 comp443 comp444 comp445 comp446 comp447 comp448 comp449 comp450 comp451 comp452 comp453 comp454 comp455 comp456 comp457 comp458 comp459 comp460 comp461 comp462 comp463 comp464 comp465 comp466 comp467 comp468 comp469 comp470 comp471 comp472 comp473 comp474 comp475 comp476 comp477 comp478 comp479 comp480 comp481 comp482 comp483 comp484 comp485 comp486 comp487 comp488 comp489 comp490 comp491 comp492 comp493 comp494 comp495 comp496 comp497 comp498 comp499 comp500 comp501 comp502 comp503 comp504 comp505 comp506 comp507 comp508 comp509 comp510 comp511 comp512 comp513 comp514 comp515 comp516 comp517 comp518 comp519 comp520 comp521 comp522 comp523 comp524 comp525 comp526 comp527 comp528 comp529 comp530 comp531 comp532 comp533 comp534 comp535 comp536 comp537 comp538 comp539 comp540 comp541 comp542 comp543 comp544 comp545 comp546 comp547 comp548 comp549 comp550 comp551 comp552 comp553 comp554 comp555 comp556 comp557 comp558 comp559 comp560 comp561 comp562 comp563 comp564 comp565 comp566 comp567 comp568 comp569 comp570 comp571 comp572 comp573 comp574 comp575 comp576 comp577 comp578 comp579 comp580 comp581 comp582 comp583 comp584 comp585 comp586 comp587 comp588 comp589 comp590 comp591 comp592 comp593 comp594 comp595 comp596 comp597 comp598 comp599 comp600 comp601 comp602 comp603 comp604 comp605 comp606 comp607 comp608 comp609 comp610 comp611 comp612 comp613 comp614 comp615 comp616 comp617 comp618 comp619 comp620 comp621 comp622 comp623 comp624 comp625 comp626 comp627 comp628 comp629 comp630 comp631 comp632 comp633 comp634 comp635 comp636 comp637 comp638 comp639 comp640 comp641 comp642 comp643 comp644 comp645 comp646 comp647 comp648 comp649 comp650 comp651 comp652 comp653 comp654 comp655 comp656 comp657 comp658 comp659 comp660 comp661 comp662 comp663 comp664 comp665 comp666 comp667 comp668 comp669 comp670 comp671 comp672 comp673 comp674 comp675 comp676 comp677 comp678 comp679 comp680 comp681 comp682 comp683 comp684 comp685 comp686 comp687 comp688 comp689 comp690 comp691 comp692 comp693 comp694 comp695 comp696 comp697 comp698 comp699 comp700 comp701 comp702 comp703 comp704 comp705 comp706 comp707 comp708 comp709 comp710 comp711 comp712 comp713 comp714 comp715 comp716 comp717 comp718 comp719 comp720 comp721 comp722 comp723 comp724 comp725 comp726 comp727 comp728 comp729 comp730 comp731 comp732 comp733 comp734 comp735 comp736 comp737 comp738 comp739 comp740 comp741 comp742 comp743 comp744 comp745 comp746 comp747 comp748 comp749 comp750 comp751 comp752 comp753 comp754 comp755 comp756 comp757 comp758 comp759 comp760 comp761 comp762 comp763 comp764 comp765 comp766 comp767 comp768 comp769 comp770 comp771 comp772 comp773 comp774 comp775 comp776 comp777 comp778 comp779 comp780 comp781 comp782 comp783 comp784 comp785 comp786 comp787 comp788 comp789 comp790 comp791 comp792 comp793 comp794 comp795 comp796 comp797 comp798 comp799 comp800 comp801 comp802 comp803 comp804 comp805 comp806 comp807 comp808 comp809 comp810 comp811 comp812 comp813 comp814 comp815 comp816 comp817 comp818 comp819 comp820 comp821 comp822 comp823 comp824 comp825 comp826 comp827 comp828 comp829 comp830 comp831 comp832 comp833 comp834 comp835 comp836 comp837 comp838 comp839 comp840 comp841 comp842 comp843 comp844 comp845 comp846 comp847 comp848 comp849 comp850 comp851 comp852 comp853 comp854 comp855 comp856 comp857 comp858 comp859 comp860 comp861 comp862 comp863 comp864 comp865 comp866 comp867 comp868 comp869 comp870 comp871 comp872 comp873 comp874 comp875 comp876 comp877 comp878 comp879 comp880 comp881 comp882 comp883 comp884 comp885 comp886 comp887 comp888 comp889 comp890 comp891 comp892 comp893 comp894 comp895 comp896 comp897 comp898 comp899 comp900 comp901 comp902 comp903 comp904 comp905 comp906 comp907 comp908 comp909 comp910 comp911 comp912 comp913 comp914 comp915 comp916 comp917 comp918 comp919 comp920 comp921 comp922 comp923 comp924 comp925 comp926 comp927 comp928 comp929 comp930 comp931 comp932 comp933 comp934 comp935 comp936 comp937 comp938 comp939 comp940 comp941 comp942 comp943 comp944 comp945 comp946 comp947 comp948 comp949 comp950 comp951 comp952 comp953 comp954 comp955 comp956 comp957 comp958 comp959 - computer
)
(:predicates
  (running ?c - computer)
  (rebooted ?c - computer)
  (evaluate ?c - computer)
  (update-status ?c - computer)
  (one-off ?c - computer)
  (all-on ?c - computer)
  (all-updated)
)
(:action reboot
  :parameters (?c - computer)
  :precondition (and
    (all-updated)
  )
  :effect (and
    (increase (total-cost) 1)
    (not (all-updated))
    (evaluate comp0)
    (rebooted ?c)
  )
)
(:action evaluate-comp0-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp0)
    (rebooted comp0)
  )
  :effect (and
    (not (evaluate comp0))
    (evaluate comp1)
  )
)
(:action evaluate-comp0-all-on
  :parameters ()
  :precondition (and
    (evaluate comp0)
    (not (rebooted comp0))
    (running comp823)
    (running comp959)
  )
  :effect (and
    (not (evaluate comp0))
    (evaluate comp1)
    (all-on comp0)
  )
)
(:action evaluate-comp0-off-comp823
  :parameters ()
  :precondition (and
    (evaluate comp0)
    (not (rebooted comp0))
    (not (running comp823))
  )
  :effect (and
    (not (evaluate comp0))
    (evaluate comp1)
    (one-off comp0)
  )
)
(:action evaluate-comp0-off-comp959
  :parameters ()
  :precondition (and
    (evaluate comp0)
    (not (rebooted comp0))
    (not (running comp959))
  )
  :effect (and
    (not (evaluate comp0))
    (evaluate comp1)
    (one-off comp0)
  )
)
(:action evaluate-comp1-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp1)
    (rebooted comp1)
  )
  :effect (and
    (not (evaluate comp1))
    (evaluate comp2)
  )
)
(:action evaluate-comp1-all-on
  :parameters ()
  :precondition (and
    (evaluate comp1)
    (not (rebooted comp1))
    (running comp0)
  )
  :effect (and
    (not (evaluate comp1))
    (evaluate comp2)
    (all-on comp1)
  )
)
(:action evaluate-comp1-off-comp0
  :parameters ()
  :precondition (and
    (evaluate comp1)
    (not (rebooted comp1))
    (not (running comp0))
  )
  :effect (and
    (not (evaluate comp1))
    (evaluate comp2)
    (one-off comp1)
  )
)
(:action evaluate-comp2-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp2)
    (rebooted comp2)
  )
  :effect (and
    (not (evaluate comp2))
    (evaluate comp3)
  )
)
(:action evaluate-comp2-all-on
  :parameters ()
  :precondition (and
    (evaluate comp2)
    (not (rebooted comp2))
    (running comp1)
    (running comp871)
  )
  :effect (and
    (not (evaluate comp2))
    (evaluate comp3)
    (all-on comp2)
  )
)
(:action evaluate-comp2-off-comp1
  :parameters ()
  :precondition (and
    (evaluate comp2)
    (not (rebooted comp2))
    (not (running comp1))
  )
  :effect (and
    (not (evaluate comp2))
    (evaluate comp3)
    (one-off comp2)
  )
)
(:action evaluate-comp2-off-comp871
  :parameters ()
  :precondition (and
    (evaluate comp2)
    (not (rebooted comp2))
    (not (running comp871))
  )
  :effect (and
    (not (evaluate comp2))
    (evaluate comp3)
    (one-off comp2)
  )
)
(:action evaluate-comp3-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (rebooted comp3)
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
  )
)
(:action evaluate-comp3-all-on
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (not (rebooted comp3))
    (running comp2)
    (running comp748)
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
    (all-on comp3)
  )
)
(:action evaluate-comp3-off-comp2
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (not (rebooted comp3))
    (not (running comp2))
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
    (one-off comp3)
  )
)
(:action evaluate-comp3-off-comp748
  :parameters ()
  :precondition (and
    (evaluate comp3)
    (not (rebooted comp3))
    (not (running comp748))
  )
  :effect (and
    (not (evaluate comp3))
    (evaluate comp4)
    (one-off comp3)
  )
)
(:action evaluate-comp4-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (rebooted comp4)
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
  )
)
(:action evaluate-comp4-all-on
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (not (rebooted comp4))
    (running comp3)
    (running comp182)
    (running comp356)
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
    (all-on comp4)
  )
)
(:action evaluate-comp4-off-comp3
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (not (rebooted comp4))
    (not (running comp3))
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
    (one-off comp4)
  )
)
(:action evaluate-comp4-off-comp182
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (not (rebooted comp4))
    (not (running comp182))
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
    (one-off comp4)
  )
)
(:action evaluate-comp4-off-comp356
  :parameters ()
  :precondition (and
    (evaluate comp4)
    (not (rebooted comp4))
    (not (running comp356))
  )
  :effect (and
    (not (evaluate comp4))
    (evaluate comp5)
    (one-off comp4)
  )
)
(:action evaluate-comp5-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp5)
    (rebooted comp5)
  )
  :effect (and
    (not (evaluate comp5))
    (evaluate comp6)
  )
)
(:action evaluate-comp5-all-on
  :parameters ()
  :precondition (and
    (evaluate comp5)
    (not (rebooted comp5))
    (running comp4)
  )
  :effect (and
    (not (evaluate comp5))
    (evaluate comp6)
    (all-on comp5)
  )
)
(:action evaluate-comp5-off-comp4
  :parameters ()
  :precondition (and
    (evaluate comp5)
    (not (rebooted comp5))
    (not (running comp4))
  )
  :effect (and
    (not (evaluate comp5))
    (evaluate comp6)
    (one-off comp5)
  )
)
(:action evaluate-comp6-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (rebooted comp6)
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
  )
)
(:action evaluate-comp6-all-on
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (not (rebooted comp6))
    (running comp5)
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
    (all-on comp6)
  )
)
(:action evaluate-comp6-off-comp5
  :parameters ()
  :precondition (and
    (evaluate comp6)
    (not (rebooted comp6))
    (not (running comp5))
  )
  :effect (and
    (not (evaluate comp6))
    (evaluate comp7)
    (one-off comp6)
  )
)
(:action evaluate-comp7-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp7)
    (rebooted comp7)
  )
  :effect (and
    (not (evaluate comp7))
    (evaluate comp8)
  )
)
(:action evaluate-comp7-all-on
  :parameters ()
  :precondition (and
    (evaluate comp7)
    (not (rebooted comp7))
    (running comp6)
  )
  :effect (and
    (not (evaluate comp7))
    (evaluate comp8)
    (all-on comp7)
  )
)
(:action evaluate-comp7-off-comp6
  :parameters ()
  :precondition (and
    (evaluate comp7)
    (not (rebooted comp7))
    (not (running comp6))
  )
  :effect (and
    (not (evaluate comp7))
    (evaluate comp8)
    (one-off comp7)
  )
)
(:action evaluate-comp8-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (rebooted comp8)
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
  )
)
(:action evaluate-comp8-all-on
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (not (rebooted comp8))
    (running comp7)
    (running comp754)
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
    (all-on comp8)
  )
)
(:action evaluate-comp8-off-comp7
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (not (rebooted comp8))
    (not (running comp7))
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
    (one-off comp8)
  )
)
(:action evaluate-comp8-off-comp754
  :parameters ()
  :precondition (and
    (evaluate comp8)
    (not (rebooted comp8))
    (not (running comp754))
  )
  :effect (and
    (not (evaluate comp8))
    (evaluate comp9)
    (one-off comp8)
  )
)
(:action evaluate-comp9-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp9)
    (rebooted comp9)
  )
  :effect (and
    (not (evaluate comp9))
    (evaluate comp10)
  )
)
(:action evaluate-comp9-all-on
  :parameters ()
  :precondition (and
    (evaluate comp9)
    (not (rebooted comp9))
    (running comp8)
    (running comp669)
  )
  :effect (and
    (not (evaluate comp9))
    (evaluate comp10)
    (all-on comp9)
  )
)
(:action evaluate-comp9-off-comp8
  :parameters ()
  :precondition (and
    (evaluate comp9)
    (not (rebooted comp9))
    (not (running comp8))
  )
  :effect (and
    (not (evaluate comp9))
    (evaluate comp10)
    (one-off comp9)
  )
)
(:action evaluate-comp9-off-comp669
  :parameters ()
  :precondition (and
    (evaluate comp9)
    (not (rebooted comp9))
    (not (running comp669))
  )
  :effect (and
    (not (evaluate comp9))
    (evaluate comp10)
    (one-off comp9)
  )
)
(:action evaluate-comp10-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (rebooted comp10)
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
  )
)
(:action evaluate-comp10-all-on
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (not (rebooted comp10))
    (running comp9)
    (running comp517)
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
    (all-on comp10)
  )
)
(:action evaluate-comp10-off-comp9
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (not (rebooted comp10))
    (not (running comp9))
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
    (one-off comp10)
  )
)
(:action evaluate-comp10-off-comp517
  :parameters ()
  :precondition (and
    (evaluate comp10)
    (not (rebooted comp10))
    (not (running comp517))
  )
  :effect (and
    (not (evaluate comp10))
    (evaluate comp11)
    (one-off comp10)
  )
)
(:action evaluate-comp11-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp11)
    (rebooted comp11)
  )
  :effect (and
    (not (evaluate comp11))
    (evaluate comp12)
  )
)
(:action evaluate-comp11-all-on
  :parameters ()
  :precondition (and
    (evaluate comp11)
    (not (rebooted comp11))
    (running comp10)
    (running comp442)
  )
  :effect (and
    (not (evaluate comp11))
    (evaluate comp12)
    (all-on comp11)
  )
)
(:action evaluate-comp11-off-comp10
  :parameters ()
  :precondition (and
    (evaluate comp11)
    (not (rebooted comp11))
    (not (running comp10))
  )
  :effect (and
    (not (evaluate comp11))
    (evaluate comp12)
    (one-off comp11)
  )
)
(:action evaluate-comp11-off-comp442
  :parameters ()
  :precondition (and
    (evaluate comp11)
    (not (rebooted comp11))
    (not (running comp442))
  )
  :effect (and
    (not (evaluate comp11))
    (evaluate comp12)
    (one-off comp11)
  )
)
(:action evaluate-comp12-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp12)
    (rebooted comp12)
  )
  :effect (and
    (not (evaluate comp12))
    (evaluate comp13)
  )
)
(:action evaluate-comp12-all-on
  :parameters ()
  :precondition (and
    (evaluate comp12)
    (not (rebooted comp12))
    (running comp11)
  )
  :effect (and
    (not (evaluate comp12))
    (evaluate comp13)
    (all-on comp12)
  )
)
(:action evaluate-comp12-off-comp11
  :parameters ()
  :precondition (and
    (evaluate comp12)
    (not (rebooted comp12))
    (not (running comp11))
  )
  :effect (and
    (not (evaluate comp12))
    (evaluate comp13)
    (one-off comp12)
  )
)
(:action evaluate-comp13-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp13)
    (rebooted comp13)
  )
  :effect (and
    (not (evaluate comp13))
    (evaluate comp14)
  )
)
(:action evaluate-comp13-all-on
  :parameters ()
  :precondition (and
    (evaluate comp13)
    (not (rebooted comp13))
    (running comp12)
  )
  :effect (and
    (not (evaluate comp13))
    (evaluate comp14)
    (all-on comp13)
  )
)
(:action evaluate-comp13-off-comp12
  :parameters ()
  :precondition (and
    (evaluate comp13)
    (not (rebooted comp13))
    (not (running comp12))
  )
  :effect (and
    (not (evaluate comp13))
    (evaluate comp14)
    (one-off comp13)
  )
)
(:action evaluate-comp14-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (rebooted comp14)
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
  )
)
(:action evaluate-comp14-all-on
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (not (rebooted comp14))
    (running comp13)
    (running comp52)
    (running comp899)
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
    (all-on comp14)
  )
)
(:action evaluate-comp14-off-comp13
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (not (rebooted comp14))
    (not (running comp13))
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
    (one-off comp14)
  )
)
(:action evaluate-comp14-off-comp52
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (not (rebooted comp14))
    (not (running comp52))
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
    (one-off comp14)
  )
)
(:action evaluate-comp14-off-comp899
  :parameters ()
  :precondition (and
    (evaluate comp14)
    (not (rebooted comp14))
    (not (running comp899))
  )
  :effect (and
    (not (evaluate comp14))
    (evaluate comp15)
    (one-off comp14)
  )
)
(:action evaluate-comp15-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp15)
    (rebooted comp15)
  )
  :effect (and
    (not (evaluate comp15))
    (evaluate comp16)
  )
)
(:action evaluate-comp15-all-on
  :parameters ()
  :precondition (and
    (evaluate comp15)
    (not (rebooted comp15))
    (running comp14)
  )
  :effect (and
    (not (evaluate comp15))
    (evaluate comp16)
    (all-on comp15)
  )
)
(:action evaluate-comp15-off-comp14
  :parameters ()
  :precondition (and
    (evaluate comp15)
    (not (rebooted comp15))
    (not (running comp14))
  )
  :effect (and
    (not (evaluate comp15))
    (evaluate comp16)
    (one-off comp15)
  )
)
(:action evaluate-comp16-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (rebooted comp16)
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
  )
)
(:action evaluate-comp16-all-on
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (running comp15)
    (running comp468)
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (all-on comp16)
  )
)
(:action evaluate-comp16-off-comp15
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (not (running comp15))
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (one-off comp16)
  )
)
(:action evaluate-comp16-off-comp468
  :parameters ()
  :precondition (and
    (evaluate comp16)
    (not (rebooted comp16))
    (not (running comp468))
  )
  :effect (and
    (not (evaluate comp16))
    (evaluate comp17)
    (one-off comp16)
  )
)
(:action evaluate-comp17-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp17)
    (rebooted comp17)
  )
  :effect (and
    (not (evaluate comp17))
    (evaluate comp18)
  )
)
(:action evaluate-comp17-all-on
  :parameters ()
  :precondition (and
    (evaluate comp17)
    (not (rebooted comp17))
    (running comp16)
  )
  :effect (and
    (not (evaluate comp17))
    (evaluate comp18)
    (all-on comp17)
  )
)
(:action evaluate-comp17-off-comp16
  :parameters ()
  :precondition (and
    (evaluate comp17)
    (not (rebooted comp17))
    (not (running comp16))
  )
  :effect (and
    (not (evaluate comp17))
    (evaluate comp18)
    (one-off comp17)
  )
)
(:action evaluate-comp18-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (rebooted comp18)
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
  )
)
(:action evaluate-comp18-all-on
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (not (rebooted comp18))
    (running comp17)
    (running comp83)
    (running comp272)
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
    (all-on comp18)
  )
)
(:action evaluate-comp18-off-comp17
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (not (rebooted comp18))
    (not (running comp17))
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
    (one-off comp18)
  )
)
(:action evaluate-comp18-off-comp83
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (not (rebooted comp18))
    (not (running comp83))
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
    (one-off comp18)
  )
)
(:action evaluate-comp18-off-comp272
  :parameters ()
  :precondition (and
    (evaluate comp18)
    (not (rebooted comp18))
    (not (running comp272))
  )
  :effect (and
    (not (evaluate comp18))
    (evaluate comp19)
    (one-off comp18)
  )
)
(:action evaluate-comp19-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp19)
    (rebooted comp19)
  )
  :effect (and
    (not (evaluate comp19))
    (evaluate comp20)
  )
)
(:action evaluate-comp19-all-on
  :parameters ()
  :precondition (and
    (evaluate comp19)
    (not (rebooted comp19))
    (running comp18)
  )
  :effect (and
    (not (evaluate comp19))
    (evaluate comp20)
    (all-on comp19)
  )
)
(:action evaluate-comp19-off-comp18
  :parameters ()
  :precondition (and
    (evaluate comp19)
    (not (rebooted comp19))
    (not (running comp18))
  )
  :effect (and
    (not (evaluate comp19))
    (evaluate comp20)
    (one-off comp19)
  )
)
(:action evaluate-comp20-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (rebooted comp20)
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
  )
)
(:action evaluate-comp20-all-on
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (not (rebooted comp20))
    (running comp19)
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
    (all-on comp20)
  )
)
(:action evaluate-comp20-off-comp19
  :parameters ()
  :precondition (and
    (evaluate comp20)
    (not (rebooted comp20))
    (not (running comp19))
  )
  :effect (and
    (not (evaluate comp20))
    (evaluate comp21)
    (one-off comp20)
  )
)
(:action evaluate-comp21-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp21)
    (rebooted comp21)
  )
  :effect (and
    (not (evaluate comp21))
    (evaluate comp22)
  )
)
(:action evaluate-comp21-all-on
  :parameters ()
  :precondition (and
    (evaluate comp21)
    (not (rebooted comp21))
    (running comp20)
  )
  :effect (and
    (not (evaluate comp21))
    (evaluate comp22)
    (all-on comp21)
  )
)
(:action evaluate-comp21-off-comp20
  :parameters ()
  :precondition (and
    (evaluate comp21)
    (not (rebooted comp21))
    (not (running comp20))
  )
  :effect (and
    (not (evaluate comp21))
    (evaluate comp22)
    (one-off comp21)
  )
)
(:action evaluate-comp22-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp22)
    (rebooted comp22)
  )
  :effect (and
    (not (evaluate comp22))
    (evaluate comp23)
  )
)
(:action evaluate-comp22-all-on
  :parameters ()
  :precondition (and
    (evaluate comp22)
    (not (rebooted comp22))
    (running comp21)
    (running comp376)
  )
  :effect (and
    (not (evaluate comp22))
    (evaluate comp23)
    (all-on comp22)
  )
)
(:action evaluate-comp22-off-comp21
  :parameters ()
  :precondition (and
    (evaluate comp22)
    (not (rebooted comp22))
    (not (running comp21))
  )
  :effect (and
    (not (evaluate comp22))
    (evaluate comp23)
    (one-off comp22)
  )
)
(:action evaluate-comp22-off-comp376
  :parameters ()
  :precondition (and
    (evaluate comp22)
    (not (rebooted comp22))
    (not (running comp376))
  )
  :effect (and
    (not (evaluate comp22))
    (evaluate comp23)
    (one-off comp22)
  )
)
(:action evaluate-comp23-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (rebooted comp23)
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
  )
)
(:action evaluate-comp23-all-on
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (not (rebooted comp23))
    (running comp22)
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
    (all-on comp23)
  )
)
(:action evaluate-comp23-off-comp22
  :parameters ()
  :precondition (and
    (evaluate comp23)
    (not (rebooted comp23))
    (not (running comp22))
  )
  :effect (and
    (not (evaluate comp23))
    (evaluate comp24)
    (one-off comp23)
  )
)
(:action evaluate-comp24-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp24)
    (rebooted comp24)
  )
  :effect (and
    (not (evaluate comp24))
    (evaluate comp25)
  )
)
(:action evaluate-comp24-all-on
  :parameters ()
  :precondition (and
    (evaluate comp24)
    (not (rebooted comp24))
    (running comp23)
  )
  :effect (and
    (not (evaluate comp24))
    (evaluate comp25)
    (all-on comp24)
  )
)
(:action evaluate-comp24-off-comp23
  :parameters ()
  :precondition (and
    (evaluate comp24)
    (not (rebooted comp24))
    (not (running comp23))
  )
  :effect (and
    (not (evaluate comp24))
    (evaluate comp25)
    (one-off comp24)
  )
)
(:action evaluate-comp25-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp25)
    (rebooted comp25)
  )
  :effect (and
    (not (evaluate comp25))
    (evaluate comp26)
  )
)
(:action evaluate-comp25-all-on
  :parameters ()
  :precondition (and
    (evaluate comp25)
    (not (rebooted comp25))
    (running comp24)
  )
  :effect (and
    (not (evaluate comp25))
    (evaluate comp26)
    (all-on comp25)
  )
)
(:action evaluate-comp25-off-comp24
  :parameters ()
  :precondition (and
    (evaluate comp25)
    (not (rebooted comp25))
    (not (running comp24))
  )
  :effect (and
    (not (evaluate comp25))
    (evaluate comp26)
    (one-off comp25)
  )
)
(:action evaluate-comp26-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp26)
    (rebooted comp26)
  )
  :effect (and
    (not (evaluate comp26))
    (evaluate comp27)
  )
)
(:action evaluate-comp26-all-on
  :parameters ()
  :precondition (and
    (evaluate comp26)
    (not (rebooted comp26))
    (running comp25)
  )
  :effect (and
    (not (evaluate comp26))
    (evaluate comp27)
    (all-on comp26)
  )
)
(:action evaluate-comp26-off-comp25
  :parameters ()
  :precondition (and
    (evaluate comp26)
    (not (rebooted comp26))
    (not (running comp25))
  )
  :effect (and
    (not (evaluate comp26))
    (evaluate comp27)
    (one-off comp26)
  )
)
(:action evaluate-comp27-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp27)
    (rebooted comp27)
  )
  :effect (and
    (not (evaluate comp27))
    (evaluate comp28)
  )
)
(:action evaluate-comp27-all-on
  :parameters ()
  :precondition (and
    (evaluate comp27)
    (not (rebooted comp27))
    (running comp26)
  )
  :effect (and
    (not (evaluate comp27))
    (evaluate comp28)
    (all-on comp27)
  )
)
(:action evaluate-comp27-off-comp26
  :parameters ()
  :precondition (and
    (evaluate comp27)
    (not (rebooted comp27))
    (not (running comp26))
  )
  :effect (and
    (not (evaluate comp27))
    (evaluate comp28)
    (one-off comp27)
  )
)
(:action evaluate-comp28-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp28)
    (rebooted comp28)
  )
  :effect (and
    (not (evaluate comp28))
    (evaluate comp29)
  )
)
(:action evaluate-comp28-all-on
  :parameters ()
  :precondition (and
    (evaluate comp28)
    (not (rebooted comp28))
    (running comp27)
  )
  :effect (and
    (not (evaluate comp28))
    (evaluate comp29)
    (all-on comp28)
  )
)
(:action evaluate-comp28-off-comp27
  :parameters ()
  :precondition (and
    (evaluate comp28)
    (not (rebooted comp28))
    (not (running comp27))
  )
  :effect (and
    (not (evaluate comp28))
    (evaluate comp29)
    (one-off comp28)
  )
)
(:action evaluate-comp29-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp29)
    (rebooted comp29)
  )
  :effect (and
    (not (evaluate comp29))
    (evaluate comp30)
  )
)
(:action evaluate-comp29-all-on
  :parameters ()
  :precondition (and
    (evaluate comp29)
    (not (rebooted comp29))
    (running comp28)
    (running comp74)
  )
  :effect (and
    (not (evaluate comp29))
    (evaluate comp30)
    (all-on comp29)
  )
)
(:action evaluate-comp29-off-comp28
  :parameters ()
  :precondition (and
    (evaluate comp29)
    (not (rebooted comp29))
    (not (running comp28))
  )
  :effect (and
    (not (evaluate comp29))
    (evaluate comp30)
    (one-off comp29)
  )
)
(:action evaluate-comp29-off-comp74
  :parameters ()
  :precondition (and
    (evaluate comp29)
    (not (rebooted comp29))
    (not (running comp74))
  )
  :effect (and
    (not (evaluate comp29))
    (evaluate comp30)
    (one-off comp29)
  )
)
(:action evaluate-comp30-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp30)
    (rebooted comp30)
  )
  :effect (and
    (not (evaluate comp30))
    (evaluate comp31)
  )
)
(:action evaluate-comp30-all-on
  :parameters ()
  :precondition (and
    (evaluate comp30)
    (not (rebooted comp30))
    (running comp29)
  )
  :effect (and
    (not (evaluate comp30))
    (evaluate comp31)
    (all-on comp30)
  )
)
(:action evaluate-comp30-off-comp29
  :parameters ()
  :precondition (and
    (evaluate comp30)
    (not (rebooted comp30))
    (not (running comp29))
  )
  :effect (and
    (not (evaluate comp30))
    (evaluate comp31)
    (one-off comp30)
  )
)
(:action evaluate-comp31-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp31)
    (rebooted comp31)
  )
  :effect (and
    (not (evaluate comp31))
    (evaluate comp32)
  )
)
(:action evaluate-comp31-all-on
  :parameters ()
  :precondition (and
    (evaluate comp31)
    (not (rebooted comp31))
    (running comp30)
  )
  :effect (and
    (not (evaluate comp31))
    (evaluate comp32)
    (all-on comp31)
  )
)
(:action evaluate-comp31-off-comp30
  :parameters ()
  :precondition (and
    (evaluate comp31)
    (not (rebooted comp31))
    (not (running comp30))
  )
  :effect (and
    (not (evaluate comp31))
    (evaluate comp32)
    (one-off comp31)
  )
)
(:action evaluate-comp32-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp32)
    (rebooted comp32)
  )
  :effect (and
    (not (evaluate comp32))
    (evaluate comp33)
  )
)
(:action evaluate-comp32-all-on
  :parameters ()
  :precondition (and
    (evaluate comp32)
    (not (rebooted comp32))
    (running comp31)
  )
  :effect (and
    (not (evaluate comp32))
    (evaluate comp33)
    (all-on comp32)
  )
)
(:action evaluate-comp32-off-comp31
  :parameters ()
  :precondition (and
    (evaluate comp32)
    (not (rebooted comp32))
    (not (running comp31))
  )
  :effect (and
    (not (evaluate comp32))
    (evaluate comp33)
    (one-off comp32)
  )
)
(:action evaluate-comp33-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp33)
    (rebooted comp33)
  )
  :effect (and
    (not (evaluate comp33))
    (evaluate comp34)
  )
)
(:action evaluate-comp33-all-on
  :parameters ()
  :precondition (and
    (evaluate comp33)
    (not (rebooted comp33))
    (running comp32)
  )
  :effect (and
    (not (evaluate comp33))
    (evaluate comp34)
    (all-on comp33)
  )
)
(:action evaluate-comp33-off-comp32
  :parameters ()
  :precondition (and
    (evaluate comp33)
    (not (rebooted comp33))
    (not (running comp32))
  )
  :effect (and
    (not (evaluate comp33))
    (evaluate comp34)
    (one-off comp33)
  )
)
(:action evaluate-comp34-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (rebooted comp34)
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
  )
)
(:action evaluate-comp34-all-on
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (not (rebooted comp34))
    (running comp33)
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
    (all-on comp34)
  )
)
(:action evaluate-comp34-off-comp33
  :parameters ()
  :precondition (and
    (evaluate comp34)
    (not (rebooted comp34))
    (not (running comp33))
  )
  :effect (and
    (not (evaluate comp34))
    (evaluate comp35)
    (one-off comp34)
  )
)
(:action evaluate-comp35-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp35)
    (rebooted comp35)
  )
  :effect (and
    (not (evaluate comp35))
    (evaluate comp36)
  )
)
(:action evaluate-comp35-all-on
  :parameters ()
  :precondition (and
    (evaluate comp35)
    (not (rebooted comp35))
    (running comp34)
  )
  :effect (and
    (not (evaluate comp35))
    (evaluate comp36)
    (all-on comp35)
  )
)
(:action evaluate-comp35-off-comp34
  :parameters ()
  :precondition (and
    (evaluate comp35)
    (not (rebooted comp35))
    (not (running comp34))
  )
  :effect (and
    (not (evaluate comp35))
    (evaluate comp36)
    (one-off comp35)
  )
)
(:action evaluate-comp36-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (rebooted comp36)
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
  )
)
(:action evaluate-comp36-all-on
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (not (rebooted comp36))
    (running comp35)
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
    (all-on comp36)
  )
)
(:action evaluate-comp36-off-comp35
  :parameters ()
  :precondition (and
    (evaluate comp36)
    (not (rebooted comp36))
    (not (running comp35))
  )
  :effect (and
    (not (evaluate comp36))
    (evaluate comp37)
    (one-off comp36)
  )
)
(:action evaluate-comp37-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp37)
    (rebooted comp37)
  )
  :effect (and
    (not (evaluate comp37))
    (evaluate comp38)
  )
)
(:action evaluate-comp37-all-on
  :parameters ()
  :precondition (and
    (evaluate comp37)
    (not (rebooted comp37))
    (running comp36)
  )
  :effect (and
    (not (evaluate comp37))
    (evaluate comp38)
    (all-on comp37)
  )
)
(:action evaluate-comp37-off-comp36
  :parameters ()
  :precondition (and
    (evaluate comp37)
    (not (rebooted comp37))
    (not (running comp36))
  )
  :effect (and
    (not (evaluate comp37))
    (evaluate comp38)
    (one-off comp37)
  )
)
(:action evaluate-comp38-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (rebooted comp38)
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
  )
)
(:action evaluate-comp38-all-on
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (not (rebooted comp38))
    (running comp37)
    (running comp518)
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
    (all-on comp38)
  )
)
(:action evaluate-comp38-off-comp37
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (not (rebooted comp38))
    (not (running comp37))
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
    (one-off comp38)
  )
)
(:action evaluate-comp38-off-comp518
  :parameters ()
  :precondition (and
    (evaluate comp38)
    (not (rebooted comp38))
    (not (running comp518))
  )
  :effect (and
    (not (evaluate comp38))
    (evaluate comp39)
    (one-off comp38)
  )
)
(:action evaluate-comp39-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp39)
    (rebooted comp39)
  )
  :effect (and
    (not (evaluate comp39))
    (evaluate comp40)
  )
)
(:action evaluate-comp39-all-on
  :parameters ()
  :precondition (and
    (evaluate comp39)
    (not (rebooted comp39))
    (running comp38)
  )
  :effect (and
    (not (evaluate comp39))
    (evaluate comp40)
    (all-on comp39)
  )
)
(:action evaluate-comp39-off-comp38
  :parameters ()
  :precondition (and
    (evaluate comp39)
    (not (rebooted comp39))
    (not (running comp38))
  )
  :effect (and
    (not (evaluate comp39))
    (evaluate comp40)
    (one-off comp39)
  )
)
(:action evaluate-comp40-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp40)
    (rebooted comp40)
  )
  :effect (and
    (not (evaluate comp40))
    (evaluate comp41)
  )
)
(:action evaluate-comp40-all-on
  :parameters ()
  :precondition (and
    (evaluate comp40)
    (not (rebooted comp40))
    (running comp39)
  )
  :effect (and
    (not (evaluate comp40))
    (evaluate comp41)
    (all-on comp40)
  )
)
(:action evaluate-comp40-off-comp39
  :parameters ()
  :precondition (and
    (evaluate comp40)
    (not (rebooted comp40))
    (not (running comp39))
  )
  :effect (and
    (not (evaluate comp40))
    (evaluate comp41)
    (one-off comp40)
  )
)
(:action evaluate-comp41-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp41)
    (rebooted comp41)
  )
  :effect (and
    (not (evaluate comp41))
    (evaluate comp42)
  )
)
(:action evaluate-comp41-all-on
  :parameters ()
  :precondition (and
    (evaluate comp41)
    (not (rebooted comp41))
    (running comp40)
  )
  :effect (and
    (not (evaluate comp41))
    (evaluate comp42)
    (all-on comp41)
  )
)
(:action evaluate-comp41-off-comp40
  :parameters ()
  :precondition (and
    (evaluate comp41)
    (not (rebooted comp41))
    (not (running comp40))
  )
  :effect (and
    (not (evaluate comp41))
    (evaluate comp42)
    (one-off comp41)
  )
)
(:action evaluate-comp42-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (rebooted comp42)
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
  )
)
(:action evaluate-comp42-all-on
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (running comp41)
    (running comp61)
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (all-on comp42)
  )
)
(:action evaluate-comp42-off-comp41
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (not (running comp41))
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (one-off comp42)
  )
)
(:action evaluate-comp42-off-comp61
  :parameters ()
  :precondition (and
    (evaluate comp42)
    (not (rebooted comp42))
    (not (running comp61))
  )
  :effect (and
    (not (evaluate comp42))
    (evaluate comp43)
    (one-off comp42)
  )
)
(:action evaluate-comp43-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (rebooted comp43)
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
  )
)
(:action evaluate-comp43-all-on
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (running comp42)
    (running comp497)
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (all-on comp43)
  )
)
(:action evaluate-comp43-off-comp42
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (not (running comp42))
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (one-off comp43)
  )
)
(:action evaluate-comp43-off-comp497
  :parameters ()
  :precondition (and
    (evaluate comp43)
    (not (rebooted comp43))
    (not (running comp497))
  )
  :effect (and
    (not (evaluate comp43))
    (evaluate comp44)
    (one-off comp43)
  )
)
(:action evaluate-comp44-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp44)
    (rebooted comp44)
  )
  :effect (and
    (not (evaluate comp44))
    (evaluate comp45)
  )
)
(:action evaluate-comp44-all-on
  :parameters ()
  :precondition (and
    (evaluate comp44)
    (not (rebooted comp44))
    (running comp43)
  )
  :effect (and
    (not (evaluate comp44))
    (evaluate comp45)
    (all-on comp44)
  )
)
(:action evaluate-comp44-off-comp43
  :parameters ()
  :precondition (and
    (evaluate comp44)
    (not (rebooted comp44))
    (not (running comp43))
  )
  :effect (and
    (not (evaluate comp44))
    (evaluate comp45)
    (one-off comp44)
  )
)
(:action evaluate-comp45-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (rebooted comp45)
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
  )
)
(:action evaluate-comp45-all-on
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (not (rebooted comp45))
    (running comp44)
    (running comp723)
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
    (all-on comp45)
  )
)
(:action evaluate-comp45-off-comp44
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (not (rebooted comp45))
    (not (running comp44))
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
    (one-off comp45)
  )
)
(:action evaluate-comp45-off-comp723
  :parameters ()
  :precondition (and
    (evaluate comp45)
    (not (rebooted comp45))
    (not (running comp723))
  )
  :effect (and
    (not (evaluate comp45))
    (evaluate comp46)
    (one-off comp45)
  )
)
(:action evaluate-comp46-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp46)
    (rebooted comp46)
  )
  :effect (and
    (not (evaluate comp46))
    (evaluate comp47)
  )
)
(:action evaluate-comp46-all-on
  :parameters ()
  :precondition (and
    (evaluate comp46)
    (not (rebooted comp46))
    (running comp45)
  )
  :effect (and
    (not (evaluate comp46))
    (evaluate comp47)
    (all-on comp46)
  )
)
(:action evaluate-comp46-off-comp45
  :parameters ()
  :precondition (and
    (evaluate comp46)
    (not (rebooted comp46))
    (not (running comp45))
  )
  :effect (and
    (not (evaluate comp46))
    (evaluate comp47)
    (one-off comp46)
  )
)
(:action evaluate-comp47-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (rebooted comp47)
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
  )
)
(:action evaluate-comp47-all-on
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (not (rebooted comp47))
    (running comp46)
    (running comp186)
    (running comp920)
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
    (all-on comp47)
  )
)
(:action evaluate-comp47-off-comp46
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (not (rebooted comp47))
    (not (running comp46))
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
    (one-off comp47)
  )
)
(:action evaluate-comp47-off-comp186
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (not (rebooted comp47))
    (not (running comp186))
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
    (one-off comp47)
  )
)
(:action evaluate-comp47-off-comp920
  :parameters ()
  :precondition (and
    (evaluate comp47)
    (not (rebooted comp47))
    (not (running comp920))
  )
  :effect (and
    (not (evaluate comp47))
    (evaluate comp48)
    (one-off comp47)
  )
)
(:action evaluate-comp48-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (rebooted comp48)
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
  )
)
(:action evaluate-comp48-all-on
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (not (rebooted comp48))
    (running comp47)
    (running comp618)
    (running comp727)
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
    (all-on comp48)
  )
)
(:action evaluate-comp48-off-comp47
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (not (rebooted comp48))
    (not (running comp47))
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
    (one-off comp48)
  )
)
(:action evaluate-comp48-off-comp618
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (not (rebooted comp48))
    (not (running comp618))
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
    (one-off comp48)
  )
)
(:action evaluate-comp48-off-comp727
  :parameters ()
  :precondition (and
    (evaluate comp48)
    (not (rebooted comp48))
    (not (running comp727))
  )
  :effect (and
    (not (evaluate comp48))
    (evaluate comp49)
    (one-off comp48)
  )
)
(:action evaluate-comp49-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp49)
    (rebooted comp49)
  )
  :effect (and
    (not (evaluate comp49))
    (evaluate comp50)
  )
)
(:action evaluate-comp49-all-on
  :parameters ()
  :precondition (and
    (evaluate comp49)
    (not (rebooted comp49))
    (running comp48)
  )
  :effect (and
    (not (evaluate comp49))
    (evaluate comp50)
    (all-on comp49)
  )
)
(:action evaluate-comp49-off-comp48
  :parameters ()
  :precondition (and
    (evaluate comp49)
    (not (rebooted comp49))
    (not (running comp48))
  )
  :effect (and
    (not (evaluate comp49))
    (evaluate comp50)
    (one-off comp49)
  )
)
(:action evaluate-comp50-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp50)
    (rebooted comp50)
  )
  :effect (and
    (not (evaluate comp50))
    (evaluate comp51)
  )
)
(:action evaluate-comp50-all-on
  :parameters ()
  :precondition (and
    (evaluate comp50)
    (not (rebooted comp50))
    (running comp49)
  )
  :effect (and
    (not (evaluate comp50))
    (evaluate comp51)
    (all-on comp50)
  )
)
(:action evaluate-comp50-off-comp49
  :parameters ()
  :precondition (and
    (evaluate comp50)
    (not (rebooted comp50))
    (not (running comp49))
  )
  :effect (and
    (not (evaluate comp50))
    (evaluate comp51)
    (one-off comp50)
  )
)
(:action evaluate-comp51-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp51)
    (rebooted comp51)
  )
  :effect (and
    (not (evaluate comp51))
    (evaluate comp52)
  )
)
(:action evaluate-comp51-all-on
  :parameters ()
  :precondition (and
    (evaluate comp51)
    (not (rebooted comp51))
    (running comp50)
    (running comp471)
  )
  :effect (and
    (not (evaluate comp51))
    (evaluate comp52)
    (all-on comp51)
  )
)
(:action evaluate-comp51-off-comp50
  :parameters ()
  :precondition (and
    (evaluate comp51)
    (not (rebooted comp51))
    (not (running comp50))
  )
  :effect (and
    (not (evaluate comp51))
    (evaluate comp52)
    (one-off comp51)
  )
)
(:action evaluate-comp51-off-comp471
  :parameters ()
  :precondition (and
    (evaluate comp51)
    (not (rebooted comp51))
    (not (running comp471))
  )
  :effect (and
    (not (evaluate comp51))
    (evaluate comp52)
    (one-off comp51)
  )
)
(:action evaluate-comp52-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp52)
    (rebooted comp52)
  )
  :effect (and
    (not (evaluate comp52))
    (evaluate comp53)
  )
)
(:action evaluate-comp52-all-on
  :parameters ()
  :precondition (and
    (evaluate comp52)
    (not (rebooted comp52))
    (running comp51)
  )
  :effect (and
    (not (evaluate comp52))
    (evaluate comp53)
    (all-on comp52)
  )
)
(:action evaluate-comp52-off-comp51
  :parameters ()
  :precondition (and
    (evaluate comp52)
    (not (rebooted comp52))
    (not (running comp51))
  )
  :effect (and
    (not (evaluate comp52))
    (evaluate comp53)
    (one-off comp52)
  )
)
(:action evaluate-comp53-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp53)
    (rebooted comp53)
  )
  :effect (and
    (not (evaluate comp53))
    (evaluate comp54)
  )
)
(:action evaluate-comp53-all-on
  :parameters ()
  :precondition (and
    (evaluate comp53)
    (not (rebooted comp53))
    (running comp52)
    (running comp191)
  )
  :effect (and
    (not (evaluate comp53))
    (evaluate comp54)
    (all-on comp53)
  )
)
(:action evaluate-comp53-off-comp52
  :parameters ()
  :precondition (and
    (evaluate comp53)
    (not (rebooted comp53))
    (not (running comp52))
  )
  :effect (and
    (not (evaluate comp53))
    (evaluate comp54)
    (one-off comp53)
  )
)
(:action evaluate-comp53-off-comp191
  :parameters ()
  :precondition (and
    (evaluate comp53)
    (not (rebooted comp53))
    (not (running comp191))
  )
  :effect (and
    (not (evaluate comp53))
    (evaluate comp54)
    (one-off comp53)
  )
)
(:action evaluate-comp54-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp54)
    (rebooted comp54)
  )
  :effect (and
    (not (evaluate comp54))
    (evaluate comp55)
  )
)
(:action evaluate-comp54-all-on
  :parameters ()
  :precondition (and
    (evaluate comp54)
    (not (rebooted comp54))
    (running comp53)
  )
  :effect (and
    (not (evaluate comp54))
    (evaluate comp55)
    (all-on comp54)
  )
)
(:action evaluate-comp54-off-comp53
  :parameters ()
  :precondition (and
    (evaluate comp54)
    (not (rebooted comp54))
    (not (running comp53))
  )
  :effect (and
    (not (evaluate comp54))
    (evaluate comp55)
    (one-off comp54)
  )
)
(:action evaluate-comp55-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (rebooted comp55)
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
  )
)
(:action evaluate-comp55-all-on
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (not (rebooted comp55))
    (running comp54)
    (running comp159)
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
    (all-on comp55)
  )
)
(:action evaluate-comp55-off-comp54
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (not (rebooted comp55))
    (not (running comp54))
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
    (one-off comp55)
  )
)
(:action evaluate-comp55-off-comp159
  :parameters ()
  :precondition (and
    (evaluate comp55)
    (not (rebooted comp55))
    (not (running comp159))
  )
  :effect (and
    (not (evaluate comp55))
    (evaluate comp56)
    (one-off comp55)
  )
)
(:action evaluate-comp56-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (rebooted comp56)
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
  )
)
(:action evaluate-comp56-all-on
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (not (rebooted comp56))
    (running comp55)
    (running comp161)
    (running comp559)
    (running comp793)
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
    (all-on comp56)
  )
)
(:action evaluate-comp56-off-comp55
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (not (rebooted comp56))
    (not (running comp55))
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
    (one-off comp56)
  )
)
(:action evaluate-comp56-off-comp161
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (not (rebooted comp56))
    (not (running comp161))
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
    (one-off comp56)
  )
)
(:action evaluate-comp56-off-comp559
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (not (rebooted comp56))
    (not (running comp559))
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
    (one-off comp56)
  )
)
(:action evaluate-comp56-off-comp793
  :parameters ()
  :precondition (and
    (evaluate comp56)
    (not (rebooted comp56))
    (not (running comp793))
  )
  :effect (and
    (not (evaluate comp56))
    (evaluate comp57)
    (one-off comp56)
  )
)
(:action evaluate-comp57-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (rebooted comp57)
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
  )
)
(:action evaluate-comp57-all-on
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (not (rebooted comp57))
    (running comp47)
    (running comp56)
    (running comp664)
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
    (all-on comp57)
  )
)
(:action evaluate-comp57-off-comp47
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (not (rebooted comp57))
    (not (running comp47))
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
    (one-off comp57)
  )
)
(:action evaluate-comp57-off-comp56
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (not (rebooted comp57))
    (not (running comp56))
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
    (one-off comp57)
  )
)
(:action evaluate-comp57-off-comp664
  :parameters ()
  :precondition (and
    (evaluate comp57)
    (not (rebooted comp57))
    (not (running comp664))
  )
  :effect (and
    (not (evaluate comp57))
    (evaluate comp58)
    (one-off comp57)
  )
)
(:action evaluate-comp58-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (rebooted comp58)
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
  )
)
(:action evaluate-comp58-all-on
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (not (rebooted comp58))
    (running comp57)
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
    (all-on comp58)
  )
)
(:action evaluate-comp58-off-comp57
  :parameters ()
  :precondition (and
    (evaluate comp58)
    (not (rebooted comp58))
    (not (running comp57))
  )
  :effect (and
    (not (evaluate comp58))
    (evaluate comp59)
    (one-off comp58)
  )
)
(:action evaluate-comp59-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (rebooted comp59)
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
  )
)
(:action evaluate-comp59-all-on
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (not (rebooted comp59))
    (running comp58)
    (running comp292)
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
    (all-on comp59)
  )
)
(:action evaluate-comp59-off-comp58
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (not (rebooted comp59))
    (not (running comp58))
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
    (one-off comp59)
  )
)
(:action evaluate-comp59-off-comp292
  :parameters ()
  :precondition (and
    (evaluate comp59)
    (not (rebooted comp59))
    (not (running comp292))
  )
  :effect (and
    (not (evaluate comp59))
    (evaluate comp60)
    (one-off comp59)
  )
)
(:action evaluate-comp60-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp60)
    (rebooted comp60)
  )
  :effect (and
    (not (evaluate comp60))
    (evaluate comp61)
  )
)
(:action evaluate-comp60-all-on
  :parameters ()
  :precondition (and
    (evaluate comp60)
    (not (rebooted comp60))
    (running comp59)
  )
  :effect (and
    (not (evaluate comp60))
    (evaluate comp61)
    (all-on comp60)
  )
)
(:action evaluate-comp60-off-comp59
  :parameters ()
  :precondition (and
    (evaluate comp60)
    (not (rebooted comp60))
    (not (running comp59))
  )
  :effect (and
    (not (evaluate comp60))
    (evaluate comp61)
    (one-off comp60)
  )
)
(:action evaluate-comp61-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp61)
    (rebooted comp61)
  )
  :effect (and
    (not (evaluate comp61))
    (evaluate comp62)
  )
)
(:action evaluate-comp61-all-on
  :parameters ()
  :precondition (and
    (evaluate comp61)
    (not (rebooted comp61))
    (running comp60)
    (running comp326)
  )
  :effect (and
    (not (evaluate comp61))
    (evaluate comp62)
    (all-on comp61)
  )
)
(:action evaluate-comp61-off-comp60
  :parameters ()
  :precondition (and
    (evaluate comp61)
    (not (rebooted comp61))
    (not (running comp60))
  )
  :effect (and
    (not (evaluate comp61))
    (evaluate comp62)
    (one-off comp61)
  )
)
(:action evaluate-comp61-off-comp326
  :parameters ()
  :precondition (and
    (evaluate comp61)
    (not (rebooted comp61))
    (not (running comp326))
  )
  :effect (and
    (not (evaluate comp61))
    (evaluate comp62)
    (one-off comp61)
  )
)
(:action evaluate-comp62-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (rebooted comp62)
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
  )
)
(:action evaluate-comp62-all-on
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (running comp61)
    (running comp397)
    (running comp679)
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (all-on comp62)
  )
)
(:action evaluate-comp62-off-comp61
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (not (running comp61))
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (one-off comp62)
  )
)
(:action evaluate-comp62-off-comp397
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (not (running comp397))
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (one-off comp62)
  )
)
(:action evaluate-comp62-off-comp679
  :parameters ()
  :precondition (and
    (evaluate comp62)
    (not (rebooted comp62))
    (not (running comp679))
  )
  :effect (and
    (not (evaluate comp62))
    (evaluate comp63)
    (one-off comp62)
  )
)
(:action evaluate-comp63-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (rebooted comp63)
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
  )
)
(:action evaluate-comp63-all-on
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (not (rebooted comp63))
    (running comp62)
    (running comp270)
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
    (all-on comp63)
  )
)
(:action evaluate-comp63-off-comp62
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (not (rebooted comp63))
    (not (running comp62))
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
    (one-off comp63)
  )
)
(:action evaluate-comp63-off-comp270
  :parameters ()
  :precondition (and
    (evaluate comp63)
    (not (rebooted comp63))
    (not (running comp270))
  )
  :effect (and
    (not (evaluate comp63))
    (evaluate comp64)
    (one-off comp63)
  )
)
(:action evaluate-comp64-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp64)
    (rebooted comp64)
  )
  :effect (and
    (not (evaluate comp64))
    (evaluate comp65)
  )
)
(:action evaluate-comp64-all-on
  :parameters ()
  :precondition (and
    (evaluate comp64)
    (not (rebooted comp64))
    (running comp63)
  )
  :effect (and
    (not (evaluate comp64))
    (evaluate comp65)
    (all-on comp64)
  )
)
(:action evaluate-comp64-off-comp63
  :parameters ()
  :precondition (and
    (evaluate comp64)
    (not (rebooted comp64))
    (not (running comp63))
  )
  :effect (and
    (not (evaluate comp64))
    (evaluate comp65)
    (one-off comp64)
  )
)
(:action evaluate-comp65-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (rebooted comp65)
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
  )
)
(:action evaluate-comp65-all-on
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (not (rebooted comp65))
    (running comp64)
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
    (all-on comp65)
  )
)
(:action evaluate-comp65-off-comp64
  :parameters ()
  :precondition (and
    (evaluate comp65)
    (not (rebooted comp65))
    (not (running comp64))
  )
  :effect (and
    (not (evaluate comp65))
    (evaluate comp66)
    (one-off comp65)
  )
)
(:action evaluate-comp66-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (rebooted comp66)
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
  )
)
(:action evaluate-comp66-all-on
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (running comp65)
    (running comp912)
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (all-on comp66)
  )
)
(:action evaluate-comp66-off-comp65
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (not (running comp65))
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (one-off comp66)
  )
)
(:action evaluate-comp66-off-comp912
  :parameters ()
  :precondition (and
    (evaluate comp66)
    (not (rebooted comp66))
    (not (running comp912))
  )
  :effect (and
    (not (evaluate comp66))
    (evaluate comp67)
    (one-off comp66)
  )
)
(:action evaluate-comp67-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (rebooted comp67)
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
  )
)
(:action evaluate-comp67-all-on
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (not (rebooted comp67))
    (running comp66)
    (running comp269)
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
    (all-on comp67)
  )
)
(:action evaluate-comp67-off-comp66
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (not (rebooted comp67))
    (not (running comp66))
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
    (one-off comp67)
  )
)
(:action evaluate-comp67-off-comp269
  :parameters ()
  :precondition (and
    (evaluate comp67)
    (not (rebooted comp67))
    (not (running comp269))
  )
  :effect (and
    (not (evaluate comp67))
    (evaluate comp68)
    (one-off comp67)
  )
)
(:action evaluate-comp68-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (rebooted comp68)
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
  )
)
(:action evaluate-comp68-all-on
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (not (rebooted comp68))
    (running comp67)
    (running comp579)
    (running comp597)
    (running comp624)
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
    (all-on comp68)
  )
)
(:action evaluate-comp68-off-comp67
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (not (rebooted comp68))
    (not (running comp67))
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
    (one-off comp68)
  )
)
(:action evaluate-comp68-off-comp579
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (not (rebooted comp68))
    (not (running comp579))
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
    (one-off comp68)
  )
)
(:action evaluate-comp68-off-comp597
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (not (rebooted comp68))
    (not (running comp597))
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
    (one-off comp68)
  )
)
(:action evaluate-comp68-off-comp624
  :parameters ()
  :precondition (and
    (evaluate comp68)
    (not (rebooted comp68))
    (not (running comp624))
  )
  :effect (and
    (not (evaluate comp68))
    (evaluate comp69)
    (one-off comp68)
  )
)
(:action evaluate-comp69-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (rebooted comp69)
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
  )
)
(:action evaluate-comp69-all-on
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (not (rebooted comp69))
    (running comp68)
    (running comp338)
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
    (all-on comp69)
  )
)
(:action evaluate-comp69-off-comp68
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (not (rebooted comp69))
    (not (running comp68))
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
    (one-off comp69)
  )
)
(:action evaluate-comp69-off-comp338
  :parameters ()
  :precondition (and
    (evaluate comp69)
    (not (rebooted comp69))
    (not (running comp338))
  )
  :effect (and
    (not (evaluate comp69))
    (evaluate comp70)
    (one-off comp69)
  )
)
(:action evaluate-comp70-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp70)
    (rebooted comp70)
  )
  :effect (and
    (not (evaluate comp70))
    (evaluate comp71)
  )
)
(:action evaluate-comp70-all-on
  :parameters ()
  :precondition (and
    (evaluate comp70)
    (not (rebooted comp70))
    (running comp69)
  )
  :effect (and
    (not (evaluate comp70))
    (evaluate comp71)
    (all-on comp70)
  )
)
(:action evaluate-comp70-off-comp69
  :parameters ()
  :precondition (and
    (evaluate comp70)
    (not (rebooted comp70))
    (not (running comp69))
  )
  :effect (and
    (not (evaluate comp70))
    (evaluate comp71)
    (one-off comp70)
  )
)
(:action evaluate-comp71-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp71)
    (rebooted comp71)
  )
  :effect (and
    (not (evaluate comp71))
    (evaluate comp72)
  )
)
(:action evaluate-comp71-all-on
  :parameters ()
  :precondition (and
    (evaluate comp71)
    (not (rebooted comp71))
    (running comp70)
    (running comp946)
  )
  :effect (and
    (not (evaluate comp71))
    (evaluate comp72)
    (all-on comp71)
  )
)
(:action evaluate-comp71-off-comp70
  :parameters ()
  :precondition (and
    (evaluate comp71)
    (not (rebooted comp71))
    (not (running comp70))
  )
  :effect (and
    (not (evaluate comp71))
    (evaluate comp72)
    (one-off comp71)
  )
)
(:action evaluate-comp71-off-comp946
  :parameters ()
  :precondition (and
    (evaluate comp71)
    (not (rebooted comp71))
    (not (running comp946))
  )
  :effect (and
    (not (evaluate comp71))
    (evaluate comp72)
    (one-off comp71)
  )
)
(:action evaluate-comp72-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (rebooted comp72)
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
  )
)
(:action evaluate-comp72-all-on
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (not (rebooted comp72))
    (running comp71)
    (running comp319)
    (running comp904)
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
    (all-on comp72)
  )
)
(:action evaluate-comp72-off-comp71
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (not (rebooted comp72))
    (not (running comp71))
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
    (one-off comp72)
  )
)
(:action evaluate-comp72-off-comp319
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (not (rebooted comp72))
    (not (running comp319))
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
    (one-off comp72)
  )
)
(:action evaluate-comp72-off-comp904
  :parameters ()
  :precondition (and
    (evaluate comp72)
    (not (rebooted comp72))
    (not (running comp904))
  )
  :effect (and
    (not (evaluate comp72))
    (evaluate comp73)
    (one-off comp72)
  )
)
(:action evaluate-comp73-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (rebooted comp73)
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
  )
)
(:action evaluate-comp73-all-on
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (not (rebooted comp73))
    (running comp72)
    (running comp721)
    (running comp834)
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
    (all-on comp73)
  )
)
(:action evaluate-comp73-off-comp72
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (not (rebooted comp73))
    (not (running comp72))
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
    (one-off comp73)
  )
)
(:action evaluate-comp73-off-comp721
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (not (rebooted comp73))
    (not (running comp721))
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
    (one-off comp73)
  )
)
(:action evaluate-comp73-off-comp834
  :parameters ()
  :precondition (and
    (evaluate comp73)
    (not (rebooted comp73))
    (not (running comp834))
  )
  :effect (and
    (not (evaluate comp73))
    (evaluate comp74)
    (one-off comp73)
  )
)
(:action evaluate-comp74-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp74)
    (rebooted comp74)
  )
  :effect (and
    (not (evaluate comp74))
    (evaluate comp75)
  )
)
(:action evaluate-comp74-all-on
  :parameters ()
  :precondition (and
    (evaluate comp74)
    (not (rebooted comp74))
    (running comp73)
    (running comp409)
  )
  :effect (and
    (not (evaluate comp74))
    (evaluate comp75)
    (all-on comp74)
  )
)
(:action evaluate-comp74-off-comp73
  :parameters ()
  :precondition (and
    (evaluate comp74)
    (not (rebooted comp74))
    (not (running comp73))
  )
  :effect (and
    (not (evaluate comp74))
    (evaluate comp75)
    (one-off comp74)
  )
)
(:action evaluate-comp74-off-comp409
  :parameters ()
  :precondition (and
    (evaluate comp74)
    (not (rebooted comp74))
    (not (running comp409))
  )
  :effect (and
    (not (evaluate comp74))
    (evaluate comp75)
    (one-off comp74)
  )
)
(:action evaluate-comp75-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp75)
    (rebooted comp75)
  )
  :effect (and
    (not (evaluate comp75))
    (evaluate comp76)
  )
)
(:action evaluate-comp75-all-on
  :parameters ()
  :precondition (and
    (evaluate comp75)
    (not (rebooted comp75))
    (running comp74)
  )
  :effect (and
    (not (evaluate comp75))
    (evaluate comp76)
    (all-on comp75)
  )
)
(:action evaluate-comp75-off-comp74
  :parameters ()
  :precondition (and
    (evaluate comp75)
    (not (rebooted comp75))
    (not (running comp74))
  )
  :effect (and
    (not (evaluate comp75))
    (evaluate comp76)
    (one-off comp75)
  )
)
(:action evaluate-comp76-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp76)
    (rebooted comp76)
  )
  :effect (and
    (not (evaluate comp76))
    (evaluate comp77)
  )
)
(:action evaluate-comp76-all-on
  :parameters ()
  :precondition (and
    (evaluate comp76)
    (not (rebooted comp76))
    (running comp75)
  )
  :effect (and
    (not (evaluate comp76))
    (evaluate comp77)
    (all-on comp76)
  )
)
(:action evaluate-comp76-off-comp75
  :parameters ()
  :precondition (and
    (evaluate comp76)
    (not (rebooted comp76))
    (not (running comp75))
  )
  :effect (and
    (not (evaluate comp76))
    (evaluate comp77)
    (one-off comp76)
  )
)
(:action evaluate-comp77-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp77)
    (rebooted comp77)
  )
  :effect (and
    (not (evaluate comp77))
    (evaluate comp78)
  )
)
(:action evaluate-comp77-all-on
  :parameters ()
  :precondition (and
    (evaluate comp77)
    (not (rebooted comp77))
    (running comp76)
    (running comp685)
  )
  :effect (and
    (not (evaluate comp77))
    (evaluate comp78)
    (all-on comp77)
  )
)
(:action evaluate-comp77-off-comp76
  :parameters ()
  :precondition (and
    (evaluate comp77)
    (not (rebooted comp77))
    (not (running comp76))
  )
  :effect (and
    (not (evaluate comp77))
    (evaluate comp78)
    (one-off comp77)
  )
)
(:action evaluate-comp77-off-comp685
  :parameters ()
  :precondition (and
    (evaluate comp77)
    (not (rebooted comp77))
    (not (running comp685))
  )
  :effect (and
    (not (evaluate comp77))
    (evaluate comp78)
    (one-off comp77)
  )
)
(:action evaluate-comp78-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp78)
    (rebooted comp78)
  )
  :effect (and
    (not (evaluate comp78))
    (evaluate comp79)
  )
)
(:action evaluate-comp78-all-on
  :parameters ()
  :precondition (and
    (evaluate comp78)
    (not (rebooted comp78))
    (running comp77)
  )
  :effect (and
    (not (evaluate comp78))
    (evaluate comp79)
    (all-on comp78)
  )
)
(:action evaluate-comp78-off-comp77
  :parameters ()
  :precondition (and
    (evaluate comp78)
    (not (rebooted comp78))
    (not (running comp77))
  )
  :effect (and
    (not (evaluate comp78))
    (evaluate comp79)
    (one-off comp78)
  )
)
(:action evaluate-comp79-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp79)
    (rebooted comp79)
  )
  :effect (and
    (not (evaluate comp79))
    (evaluate comp80)
  )
)
(:action evaluate-comp79-all-on
  :parameters ()
  :precondition (and
    (evaluate comp79)
    (not (rebooted comp79))
    (running comp78)
  )
  :effect (and
    (not (evaluate comp79))
    (evaluate comp80)
    (all-on comp79)
  )
)
(:action evaluate-comp79-off-comp78
  :parameters ()
  :precondition (and
    (evaluate comp79)
    (not (rebooted comp79))
    (not (running comp78))
  )
  :effect (and
    (not (evaluate comp79))
    (evaluate comp80)
    (one-off comp79)
  )
)
(:action evaluate-comp80-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp80)
    (rebooted comp80)
  )
  :effect (and
    (not (evaluate comp80))
    (evaluate comp81)
  )
)
(:action evaluate-comp80-all-on
  :parameters ()
  :precondition (and
    (evaluate comp80)
    (not (rebooted comp80))
    (running comp79)
    (running comp139)
  )
  :effect (and
    (not (evaluate comp80))
    (evaluate comp81)
    (all-on comp80)
  )
)
(:action evaluate-comp80-off-comp79
  :parameters ()
  :precondition (and
    (evaluate comp80)
    (not (rebooted comp80))
    (not (running comp79))
  )
  :effect (and
    (not (evaluate comp80))
    (evaluate comp81)
    (one-off comp80)
  )
)
(:action evaluate-comp80-off-comp139
  :parameters ()
  :precondition (and
    (evaluate comp80)
    (not (rebooted comp80))
    (not (running comp139))
  )
  :effect (and
    (not (evaluate comp80))
    (evaluate comp81)
    (one-off comp80)
  )
)
(:action evaluate-comp81-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp81)
    (rebooted comp81)
  )
  :effect (and
    (not (evaluate comp81))
    (evaluate comp82)
  )
)
(:action evaluate-comp81-all-on
  :parameters ()
  :precondition (and
    (evaluate comp81)
    (not (rebooted comp81))
    (running comp80)
  )
  :effect (and
    (not (evaluate comp81))
    (evaluate comp82)
    (all-on comp81)
  )
)
(:action evaluate-comp81-off-comp80
  :parameters ()
  :precondition (and
    (evaluate comp81)
    (not (rebooted comp81))
    (not (running comp80))
  )
  :effect (and
    (not (evaluate comp81))
    (evaluate comp82)
    (one-off comp81)
  )
)
(:action evaluate-comp82-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (rebooted comp82)
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
  )
)
(:action evaluate-comp82-all-on
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (not (rebooted comp82))
    (running comp81)
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
    (all-on comp82)
  )
)
(:action evaluate-comp82-off-comp81
  :parameters ()
  :precondition (and
    (evaluate comp82)
    (not (rebooted comp82))
    (not (running comp81))
  )
  :effect (and
    (not (evaluate comp82))
    (evaluate comp83)
    (one-off comp82)
  )
)
(:action evaluate-comp83-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (rebooted comp83)
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
  )
)
(:action evaluate-comp83-all-on
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (not (rebooted comp83))
    (running comp82)
    (running comp508)
    (running comp627)
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
    (all-on comp83)
  )
)
(:action evaluate-comp83-off-comp82
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (not (rebooted comp83))
    (not (running comp82))
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
    (one-off comp83)
  )
)
(:action evaluate-comp83-off-comp508
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (not (rebooted comp83))
    (not (running comp508))
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
    (one-off comp83)
  )
)
(:action evaluate-comp83-off-comp627
  :parameters ()
  :precondition (and
    (evaluate comp83)
    (not (rebooted comp83))
    (not (running comp627))
  )
  :effect (and
    (not (evaluate comp83))
    (evaluate comp84)
    (one-off comp83)
  )
)
(:action evaluate-comp84-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp84)
    (rebooted comp84)
  )
  :effect (and
    (not (evaluate comp84))
    (evaluate comp85)
  )
)
(:action evaluate-comp84-all-on
  :parameters ()
  :precondition (and
    (evaluate comp84)
    (not (rebooted comp84))
    (running comp83)
  )
  :effect (and
    (not (evaluate comp84))
    (evaluate comp85)
    (all-on comp84)
  )
)
(:action evaluate-comp84-off-comp83
  :parameters ()
  :precondition (and
    (evaluate comp84)
    (not (rebooted comp84))
    (not (running comp83))
  )
  :effect (and
    (not (evaluate comp84))
    (evaluate comp85)
    (one-off comp84)
  )
)
(:action evaluate-comp85-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp85)
    (rebooted comp85)
  )
  :effect (and
    (not (evaluate comp85))
    (evaluate comp86)
  )
)
(:action evaluate-comp85-all-on
  :parameters ()
  :precondition (and
    (evaluate comp85)
    (not (rebooted comp85))
    (running comp84)
  )
  :effect (and
    (not (evaluate comp85))
    (evaluate comp86)
    (all-on comp85)
  )
)
(:action evaluate-comp85-off-comp84
  :parameters ()
  :precondition (and
    (evaluate comp85)
    (not (rebooted comp85))
    (not (running comp84))
  )
  :effect (and
    (not (evaluate comp85))
    (evaluate comp86)
    (one-off comp85)
  )
)
(:action evaluate-comp86-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (rebooted comp86)
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
  )
)
(:action evaluate-comp86-all-on
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (not (rebooted comp86))
    (running comp85)
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
    (all-on comp86)
  )
)
(:action evaluate-comp86-off-comp85
  :parameters ()
  :precondition (and
    (evaluate comp86)
    (not (rebooted comp86))
    (not (running comp85))
  )
  :effect (and
    (not (evaluate comp86))
    (evaluate comp87)
    (one-off comp86)
  )
)
(:action evaluate-comp87-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp87)
    (rebooted comp87)
  )
  :effect (and
    (not (evaluate comp87))
    (evaluate comp88)
  )
)
(:action evaluate-comp87-all-on
  :parameters ()
  :precondition (and
    (evaluate comp87)
    (not (rebooted comp87))
    (running comp86)
  )
  :effect (and
    (not (evaluate comp87))
    (evaluate comp88)
    (all-on comp87)
  )
)
(:action evaluate-comp87-off-comp86
  :parameters ()
  :precondition (and
    (evaluate comp87)
    (not (rebooted comp87))
    (not (running comp86))
  )
  :effect (and
    (not (evaluate comp87))
    (evaluate comp88)
    (one-off comp87)
  )
)
(:action evaluate-comp88-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp88)
    (rebooted comp88)
  )
  :effect (and
    (not (evaluate comp88))
    (evaluate comp89)
  )
)
(:action evaluate-comp88-all-on
  :parameters ()
  :precondition (and
    (evaluate comp88)
    (not (rebooted comp88))
    (running comp87)
  )
  :effect (and
    (not (evaluate comp88))
    (evaluate comp89)
    (all-on comp88)
  )
)
(:action evaluate-comp88-off-comp87
  :parameters ()
  :precondition (and
    (evaluate comp88)
    (not (rebooted comp88))
    (not (running comp87))
  )
  :effect (and
    (not (evaluate comp88))
    (evaluate comp89)
    (one-off comp88)
  )
)
(:action evaluate-comp89-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp89)
    (rebooted comp89)
  )
  :effect (and
    (not (evaluate comp89))
    (evaluate comp90)
  )
)
(:action evaluate-comp89-all-on
  :parameters ()
  :precondition (and
    (evaluate comp89)
    (not (rebooted comp89))
    (running comp88)
  )
  :effect (and
    (not (evaluate comp89))
    (evaluate comp90)
    (all-on comp89)
  )
)
(:action evaluate-comp89-off-comp88
  :parameters ()
  :precondition (and
    (evaluate comp89)
    (not (rebooted comp89))
    (not (running comp88))
  )
  :effect (and
    (not (evaluate comp89))
    (evaluate comp90)
    (one-off comp89)
  )
)
(:action evaluate-comp90-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp90)
    (rebooted comp90)
  )
  :effect (and
    (not (evaluate comp90))
    (evaluate comp91)
  )
)
(:action evaluate-comp90-all-on
  :parameters ()
  :precondition (and
    (evaluate comp90)
    (not (rebooted comp90))
    (running comp89)
  )
  :effect (and
    (not (evaluate comp90))
    (evaluate comp91)
    (all-on comp90)
  )
)
(:action evaluate-comp90-off-comp89
  :parameters ()
  :precondition (and
    (evaluate comp90)
    (not (rebooted comp90))
    (not (running comp89))
  )
  :effect (and
    (not (evaluate comp90))
    (evaluate comp91)
    (one-off comp90)
  )
)
(:action evaluate-comp91-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp91)
    (rebooted comp91)
  )
  :effect (and
    (not (evaluate comp91))
    (evaluate comp92)
  )
)
(:action evaluate-comp91-all-on
  :parameters ()
  :precondition (and
    (evaluate comp91)
    (not (rebooted comp91))
    (running comp90)
  )
  :effect (and
    (not (evaluate comp91))
    (evaluate comp92)
    (all-on comp91)
  )
)
(:action evaluate-comp91-off-comp90
  :parameters ()
  :precondition (and
    (evaluate comp91)
    (not (rebooted comp91))
    (not (running comp90))
  )
  :effect (and
    (not (evaluate comp91))
    (evaluate comp92)
    (one-off comp91)
  )
)
(:action evaluate-comp92-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp92)
    (rebooted comp92)
  )
  :effect (and
    (not (evaluate comp92))
    (evaluate comp93)
  )
)
(:action evaluate-comp92-all-on
  :parameters ()
  :precondition (and
    (evaluate comp92)
    (not (rebooted comp92))
    (running comp91)
    (running comp441)
  )
  :effect (and
    (not (evaluate comp92))
    (evaluate comp93)
    (all-on comp92)
  )
)
(:action evaluate-comp92-off-comp91
  :parameters ()
  :precondition (and
    (evaluate comp92)
    (not (rebooted comp92))
    (not (running comp91))
  )
  :effect (and
    (not (evaluate comp92))
    (evaluate comp93)
    (one-off comp92)
  )
)
(:action evaluate-comp92-off-comp441
  :parameters ()
  :precondition (and
    (evaluate comp92)
    (not (rebooted comp92))
    (not (running comp441))
  )
  :effect (and
    (not (evaluate comp92))
    (evaluate comp93)
    (one-off comp92)
  )
)
(:action evaluate-comp93-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp93)
    (rebooted comp93)
  )
  :effect (and
    (not (evaluate comp93))
    (evaluate comp94)
  )
)
(:action evaluate-comp93-all-on
  :parameters ()
  :precondition (and
    (evaluate comp93)
    (not (rebooted comp93))
    (running comp92)
  )
  :effect (and
    (not (evaluate comp93))
    (evaluate comp94)
    (all-on comp93)
  )
)
(:action evaluate-comp93-off-comp92
  :parameters ()
  :precondition (and
    (evaluate comp93)
    (not (rebooted comp93))
    (not (running comp92))
  )
  :effect (and
    (not (evaluate comp93))
    (evaluate comp94)
    (one-off comp93)
  )
)
(:action evaluate-comp94-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp94)
    (rebooted comp94)
  )
  :effect (and
    (not (evaluate comp94))
    (evaluate comp95)
  )
)
(:action evaluate-comp94-all-on
  :parameters ()
  :precondition (and
    (evaluate comp94)
    (not (rebooted comp94))
    (running comp93)
    (running comp641)
  )
  :effect (and
    (not (evaluate comp94))
    (evaluate comp95)
    (all-on comp94)
  )
)
(:action evaluate-comp94-off-comp93
  :parameters ()
  :precondition (and
    (evaluate comp94)
    (not (rebooted comp94))
    (not (running comp93))
  )
  :effect (and
    (not (evaluate comp94))
    (evaluate comp95)
    (one-off comp94)
  )
)
(:action evaluate-comp94-off-comp641
  :parameters ()
  :precondition (and
    (evaluate comp94)
    (not (rebooted comp94))
    (not (running comp641))
  )
  :effect (and
    (not (evaluate comp94))
    (evaluate comp95)
    (one-off comp94)
  )
)
(:action evaluate-comp95-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp95)
    (rebooted comp95)
  )
  :effect (and
    (not (evaluate comp95))
    (evaluate comp96)
  )
)
(:action evaluate-comp95-all-on
  :parameters ()
  :precondition (and
    (evaluate comp95)
    (not (rebooted comp95))
    (running comp94)
  )
  :effect (and
    (not (evaluate comp95))
    (evaluate comp96)
    (all-on comp95)
  )
)
(:action evaluate-comp95-off-comp94
  :parameters ()
  :precondition (and
    (evaluate comp95)
    (not (rebooted comp95))
    (not (running comp94))
  )
  :effect (and
    (not (evaluate comp95))
    (evaluate comp96)
    (one-off comp95)
  )
)
(:action evaluate-comp96-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (rebooted comp96)
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
  )
)
(:action evaluate-comp96-all-on
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (not (rebooted comp96))
    (running comp95)
    (running comp234)
    (running comp530)
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
    (all-on comp96)
  )
)
(:action evaluate-comp96-off-comp95
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (not (rebooted comp96))
    (not (running comp95))
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
    (one-off comp96)
  )
)
(:action evaluate-comp96-off-comp234
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (not (rebooted comp96))
    (not (running comp234))
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
    (one-off comp96)
  )
)
(:action evaluate-comp96-off-comp530
  :parameters ()
  :precondition (and
    (evaluate comp96)
    (not (rebooted comp96))
    (not (running comp530))
  )
  :effect (and
    (not (evaluate comp96))
    (evaluate comp97)
    (one-off comp96)
  )
)
(:action evaluate-comp97-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp97)
    (rebooted comp97)
  )
  :effect (and
    (not (evaluate comp97))
    (evaluate comp98)
  )
)
(:action evaluate-comp97-all-on
  :parameters ()
  :precondition (and
    (evaluate comp97)
    (not (rebooted comp97))
    (running comp96)
  )
  :effect (and
    (not (evaluate comp97))
    (evaluate comp98)
    (all-on comp97)
  )
)
(:action evaluate-comp97-off-comp96
  :parameters ()
  :precondition (and
    (evaluate comp97)
    (not (rebooted comp97))
    (not (running comp96))
  )
  :effect (and
    (not (evaluate comp97))
    (evaluate comp98)
    (one-off comp97)
  )
)
(:action evaluate-comp98-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp98)
    (rebooted comp98)
  )
  :effect (and
    (not (evaluate comp98))
    (evaluate comp99)
  )
)
(:action evaluate-comp98-all-on
  :parameters ()
  :precondition (and
    (evaluate comp98)
    (not (rebooted comp98))
    (running comp97)
  )
  :effect (and
    (not (evaluate comp98))
    (evaluate comp99)
    (all-on comp98)
  )
)
(:action evaluate-comp98-off-comp97
  :parameters ()
  :precondition (and
    (evaluate comp98)
    (not (rebooted comp98))
    (not (running comp97))
  )
  :effect (and
    (not (evaluate comp98))
    (evaluate comp99)
    (one-off comp98)
  )
)
(:action evaluate-comp99-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp99)
    (rebooted comp99)
  )
  :effect (and
    (not (evaluate comp99))
    (evaluate comp100)
  )
)
(:action evaluate-comp99-all-on
  :parameters ()
  :precondition (and
    (evaluate comp99)
    (not (rebooted comp99))
    (running comp98)
    (running comp279)
  )
  :effect (and
    (not (evaluate comp99))
    (evaluate comp100)
    (all-on comp99)
  )
)
(:action evaluate-comp99-off-comp98
  :parameters ()
  :precondition (and
    (evaluate comp99)
    (not (rebooted comp99))
    (not (running comp98))
  )
  :effect (and
    (not (evaluate comp99))
    (evaluate comp100)
    (one-off comp99)
  )
)
(:action evaluate-comp99-off-comp279
  :parameters ()
  :precondition (and
    (evaluate comp99)
    (not (rebooted comp99))
    (not (running comp279))
  )
  :effect (and
    (not (evaluate comp99))
    (evaluate comp100)
    (one-off comp99)
  )
)
(:action evaluate-comp100-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp100)
    (rebooted comp100)
  )
  :effect (and
    (not (evaluate comp100))
    (evaluate comp101)
  )
)
(:action evaluate-comp100-all-on
  :parameters ()
  :precondition (and
    (evaluate comp100)
    (not (rebooted comp100))
    (running comp99)
    (running comp380)
  )
  :effect (and
    (not (evaluate comp100))
    (evaluate comp101)
    (all-on comp100)
  )
)
(:action evaluate-comp100-off-comp99
  :parameters ()
  :precondition (and
    (evaluate comp100)
    (not (rebooted comp100))
    (not (running comp99))
  )
  :effect (and
    (not (evaluate comp100))
    (evaluate comp101)
    (one-off comp100)
  )
)
(:action evaluate-comp100-off-comp380
  :parameters ()
  :precondition (and
    (evaluate comp100)
    (not (rebooted comp100))
    (not (running comp380))
  )
  :effect (and
    (not (evaluate comp100))
    (evaluate comp101)
    (one-off comp100)
  )
)
(:action evaluate-comp101-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp101)
    (rebooted comp101)
  )
  :effect (and
    (not (evaluate comp101))
    (evaluate comp102)
  )
)
(:action evaluate-comp101-all-on
  :parameters ()
  :precondition (and
    (evaluate comp101)
    (not (rebooted comp101))
    (running comp100)
  )
  :effect (and
    (not (evaluate comp101))
    (evaluate comp102)
    (all-on comp101)
  )
)
(:action evaluate-comp101-off-comp100
  :parameters ()
  :precondition (and
    (evaluate comp101)
    (not (rebooted comp101))
    (not (running comp100))
  )
  :effect (and
    (not (evaluate comp101))
    (evaluate comp102)
    (one-off comp101)
  )
)
(:action evaluate-comp102-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (rebooted comp102)
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
  )
)
(:action evaluate-comp102-all-on
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (not (rebooted comp102))
    (running comp101)
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
    (all-on comp102)
  )
)
(:action evaluate-comp102-off-comp101
  :parameters ()
  :precondition (and
    (evaluate comp102)
    (not (rebooted comp102))
    (not (running comp101))
  )
  :effect (and
    (not (evaluate comp102))
    (evaluate comp103)
    (one-off comp102)
  )
)
(:action evaluate-comp103-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp103)
    (rebooted comp103)
  )
  :effect (and
    (not (evaluate comp103))
    (evaluate comp104)
  )
)
(:action evaluate-comp103-all-on
  :parameters ()
  :precondition (and
    (evaluate comp103)
    (not (rebooted comp103))
    (running comp102)
  )
  :effect (and
    (not (evaluate comp103))
    (evaluate comp104)
    (all-on comp103)
  )
)
(:action evaluate-comp103-off-comp102
  :parameters ()
  :precondition (and
    (evaluate comp103)
    (not (rebooted comp103))
    (not (running comp102))
  )
  :effect (and
    (not (evaluate comp103))
    (evaluate comp104)
    (one-off comp103)
  )
)
(:action evaluate-comp104-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp104)
    (rebooted comp104)
  )
  :effect (and
    (not (evaluate comp104))
    (evaluate comp105)
  )
)
(:action evaluate-comp104-all-on
  :parameters ()
  :precondition (and
    (evaluate comp104)
    (not (rebooted comp104))
    (running comp91)
    (running comp103)
  )
  :effect (and
    (not (evaluate comp104))
    (evaluate comp105)
    (all-on comp104)
  )
)
(:action evaluate-comp104-off-comp91
  :parameters ()
  :precondition (and
    (evaluate comp104)
    (not (rebooted comp104))
    (not (running comp91))
  )
  :effect (and
    (not (evaluate comp104))
    (evaluate comp105)
    (one-off comp104)
  )
)
(:action evaluate-comp104-off-comp103
  :parameters ()
  :precondition (and
    (evaluate comp104)
    (not (rebooted comp104))
    (not (running comp103))
  )
  :effect (and
    (not (evaluate comp104))
    (evaluate comp105)
    (one-off comp104)
  )
)
(:action evaluate-comp105-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp105)
    (rebooted comp105)
  )
  :effect (and
    (not (evaluate comp105))
    (evaluate comp106)
  )
)
(:action evaluate-comp105-all-on
  :parameters ()
  :precondition (and
    (evaluate comp105)
    (not (rebooted comp105))
    (running comp104)
    (running comp536)
  )
  :effect (and
    (not (evaluate comp105))
    (evaluate comp106)
    (all-on comp105)
  )
)
(:action evaluate-comp105-off-comp104
  :parameters ()
  :precondition (and
    (evaluate comp105)
    (not (rebooted comp105))
    (not (running comp104))
  )
  :effect (and
    (not (evaluate comp105))
    (evaluate comp106)
    (one-off comp105)
  )
)
(:action evaluate-comp105-off-comp536
  :parameters ()
  :precondition (and
    (evaluate comp105)
    (not (rebooted comp105))
    (not (running comp536))
  )
  :effect (and
    (not (evaluate comp105))
    (evaluate comp106)
    (one-off comp105)
  )
)
(:action evaluate-comp106-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp106)
    (rebooted comp106)
  )
  :effect (and
    (not (evaluate comp106))
    (evaluate comp107)
  )
)
(:action evaluate-comp106-all-on
  :parameters ()
  :precondition (and
    (evaluate comp106)
    (not (rebooted comp106))
    (running comp105)
  )
  :effect (and
    (not (evaluate comp106))
    (evaluate comp107)
    (all-on comp106)
  )
)
(:action evaluate-comp106-off-comp105
  :parameters ()
  :precondition (and
    (evaluate comp106)
    (not (rebooted comp106))
    (not (running comp105))
  )
  :effect (and
    (not (evaluate comp106))
    (evaluate comp107)
    (one-off comp106)
  )
)
(:action evaluate-comp107-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp107)
    (rebooted comp107)
  )
  :effect (and
    (not (evaluate comp107))
    (evaluate comp108)
  )
)
(:action evaluate-comp107-all-on
  :parameters ()
  :precondition (and
    (evaluate comp107)
    (not (rebooted comp107))
    (running comp106)
    (running comp809)
  )
  :effect (and
    (not (evaluate comp107))
    (evaluate comp108)
    (all-on comp107)
  )
)
(:action evaluate-comp107-off-comp106
  :parameters ()
  :precondition (and
    (evaluate comp107)
    (not (rebooted comp107))
    (not (running comp106))
  )
  :effect (and
    (not (evaluate comp107))
    (evaluate comp108)
    (one-off comp107)
  )
)
(:action evaluate-comp107-off-comp809
  :parameters ()
  :precondition (and
    (evaluate comp107)
    (not (rebooted comp107))
    (not (running comp809))
  )
  :effect (and
    (not (evaluate comp107))
    (evaluate comp108)
    (one-off comp107)
  )
)
(:action evaluate-comp108-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp108)
    (rebooted comp108)
  )
  :effect (and
    (not (evaluate comp108))
    (evaluate comp109)
  )
)
(:action evaluate-comp108-all-on
  :parameters ()
  :precondition (and
    (evaluate comp108)
    (not (rebooted comp108))
    (running comp107)
  )
  :effect (and
    (not (evaluate comp108))
    (evaluate comp109)
    (all-on comp108)
  )
)
(:action evaluate-comp108-off-comp107
  :parameters ()
  :precondition (and
    (evaluate comp108)
    (not (rebooted comp108))
    (not (running comp107))
  )
  :effect (and
    (not (evaluate comp108))
    (evaluate comp109)
    (one-off comp108)
  )
)
(:action evaluate-comp109-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp109)
    (rebooted comp109)
  )
  :effect (and
    (not (evaluate comp109))
    (evaluate comp110)
  )
)
(:action evaluate-comp109-all-on
  :parameters ()
  :precondition (and
    (evaluate comp109)
    (not (rebooted comp109))
    (running comp108)
  )
  :effect (and
    (not (evaluate comp109))
    (evaluate comp110)
    (all-on comp109)
  )
)
(:action evaluate-comp109-off-comp108
  :parameters ()
  :precondition (and
    (evaluate comp109)
    (not (rebooted comp109))
    (not (running comp108))
  )
  :effect (and
    (not (evaluate comp109))
    (evaluate comp110)
    (one-off comp109)
  )
)
(:action evaluate-comp110-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (rebooted comp110)
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
  )
)
(:action evaluate-comp110-all-on
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (not (rebooted comp110))
    (running comp109)
    (running comp476)
    (running comp830)
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
    (all-on comp110)
  )
)
(:action evaluate-comp110-off-comp109
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (not (rebooted comp110))
    (not (running comp109))
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
    (one-off comp110)
  )
)
(:action evaluate-comp110-off-comp476
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (not (rebooted comp110))
    (not (running comp476))
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
    (one-off comp110)
  )
)
(:action evaluate-comp110-off-comp830
  :parameters ()
  :precondition (and
    (evaluate comp110)
    (not (rebooted comp110))
    (not (running comp830))
  )
  :effect (and
    (not (evaluate comp110))
    (evaluate comp111)
    (one-off comp110)
  )
)
(:action evaluate-comp111-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp111)
    (rebooted comp111)
  )
  :effect (and
    (not (evaluate comp111))
    (evaluate comp112)
  )
)
(:action evaluate-comp111-all-on
  :parameters ()
  :precondition (and
    (evaluate comp111)
    (not (rebooted comp111))
    (running comp110)
  )
  :effect (and
    (not (evaluate comp111))
    (evaluate comp112)
    (all-on comp111)
  )
)
(:action evaluate-comp111-off-comp110
  :parameters ()
  :precondition (and
    (evaluate comp111)
    (not (rebooted comp111))
    (not (running comp110))
  )
  :effect (and
    (not (evaluate comp111))
    (evaluate comp112)
    (one-off comp111)
  )
)
(:action evaluate-comp112-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (rebooted comp112)
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
  )
)
(:action evaluate-comp112-all-on
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (not (rebooted comp112))
    (running comp111)
    (running comp402)
    (running comp622)
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
    (all-on comp112)
  )
)
(:action evaluate-comp112-off-comp111
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (not (rebooted comp112))
    (not (running comp111))
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
    (one-off comp112)
  )
)
(:action evaluate-comp112-off-comp402
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (not (rebooted comp112))
    (not (running comp402))
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
    (one-off comp112)
  )
)
(:action evaluate-comp112-off-comp622
  :parameters ()
  :precondition (and
    (evaluate comp112)
    (not (rebooted comp112))
    (not (running comp622))
  )
  :effect (and
    (not (evaluate comp112))
    (evaluate comp113)
    (one-off comp112)
  )
)
(:action evaluate-comp113-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp113)
    (rebooted comp113)
  )
  :effect (and
    (not (evaluate comp113))
    (evaluate comp114)
  )
)
(:action evaluate-comp113-all-on
  :parameters ()
  :precondition (and
    (evaluate comp113)
    (not (rebooted comp113))
    (running comp112)
    (running comp181)
  )
  :effect (and
    (not (evaluate comp113))
    (evaluate comp114)
    (all-on comp113)
  )
)
(:action evaluate-comp113-off-comp112
  :parameters ()
  :precondition (and
    (evaluate comp113)
    (not (rebooted comp113))
    (not (running comp112))
  )
  :effect (and
    (not (evaluate comp113))
    (evaluate comp114)
    (one-off comp113)
  )
)
(:action evaluate-comp113-off-comp181
  :parameters ()
  :precondition (and
    (evaluate comp113)
    (not (rebooted comp113))
    (not (running comp181))
  )
  :effect (and
    (not (evaluate comp113))
    (evaluate comp114)
    (one-off comp113)
  )
)
(:action evaluate-comp114-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (rebooted comp114)
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
  )
)
(:action evaluate-comp114-all-on
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (not (rebooted comp114))
    (running comp113)
    (running comp127)
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
    (all-on comp114)
  )
)
(:action evaluate-comp114-off-comp113
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (not (rebooted comp114))
    (not (running comp113))
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
    (one-off comp114)
  )
)
(:action evaluate-comp114-off-comp127
  :parameters ()
  :precondition (and
    (evaluate comp114)
    (not (rebooted comp114))
    (not (running comp127))
  )
  :effect (and
    (not (evaluate comp114))
    (evaluate comp115)
    (one-off comp114)
  )
)
(:action evaluate-comp115-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp115)
    (rebooted comp115)
  )
  :effect (and
    (not (evaluate comp115))
    (evaluate comp116)
  )
)
(:action evaluate-comp115-all-on
  :parameters ()
  :precondition (and
    (evaluate comp115)
    (not (rebooted comp115))
    (running comp114)
  )
  :effect (and
    (not (evaluate comp115))
    (evaluate comp116)
    (all-on comp115)
  )
)
(:action evaluate-comp115-off-comp114
  :parameters ()
  :precondition (and
    (evaluate comp115)
    (not (rebooted comp115))
    (not (running comp114))
  )
  :effect (and
    (not (evaluate comp115))
    (evaluate comp116)
    (one-off comp115)
  )
)
(:action evaluate-comp116-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp116)
    (rebooted comp116)
  )
  :effect (and
    (not (evaluate comp116))
    (evaluate comp117)
  )
)
(:action evaluate-comp116-all-on
  :parameters ()
  :precondition (and
    (evaluate comp116)
    (not (rebooted comp116))
    (running comp115)
  )
  :effect (and
    (not (evaluate comp116))
    (evaluate comp117)
    (all-on comp116)
  )
)
(:action evaluate-comp116-off-comp115
  :parameters ()
  :precondition (and
    (evaluate comp116)
    (not (rebooted comp116))
    (not (running comp115))
  )
  :effect (and
    (not (evaluate comp116))
    (evaluate comp117)
    (one-off comp116)
  )
)
(:action evaluate-comp117-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (rebooted comp117)
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
  )
)
(:action evaluate-comp117-all-on
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (not (rebooted comp117))
    (running comp116)
    (running comp258)
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
    (all-on comp117)
  )
)
(:action evaluate-comp117-off-comp116
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (not (rebooted comp117))
    (not (running comp116))
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
    (one-off comp117)
  )
)
(:action evaluate-comp117-off-comp258
  :parameters ()
  :precondition (and
    (evaluate comp117)
    (not (rebooted comp117))
    (not (running comp258))
  )
  :effect (and
    (not (evaluate comp117))
    (evaluate comp118)
    (one-off comp117)
  )
)
(:action evaluate-comp118-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp118)
    (rebooted comp118)
  )
  :effect (and
    (not (evaluate comp118))
    (evaluate comp119)
  )
)
(:action evaluate-comp118-all-on
  :parameters ()
  :precondition (and
    (evaluate comp118)
    (not (rebooted comp118))
    (running comp117)
  )
  :effect (and
    (not (evaluate comp118))
    (evaluate comp119)
    (all-on comp118)
  )
)
(:action evaluate-comp118-off-comp117
  :parameters ()
  :precondition (and
    (evaluate comp118)
    (not (rebooted comp118))
    (not (running comp117))
  )
  :effect (and
    (not (evaluate comp118))
    (evaluate comp119)
    (one-off comp118)
  )
)
(:action evaluate-comp119-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp119)
    (rebooted comp119)
  )
  :effect (and
    (not (evaluate comp119))
    (evaluate comp120)
  )
)
(:action evaluate-comp119-all-on
  :parameters ()
  :precondition (and
    (evaluate comp119)
    (not (rebooted comp119))
    (running comp118)
    (running comp858)
  )
  :effect (and
    (not (evaluate comp119))
    (evaluate comp120)
    (all-on comp119)
  )
)
(:action evaluate-comp119-off-comp118
  :parameters ()
  :precondition (and
    (evaluate comp119)
    (not (rebooted comp119))
    (not (running comp118))
  )
  :effect (and
    (not (evaluate comp119))
    (evaluate comp120)
    (one-off comp119)
  )
)
(:action evaluate-comp119-off-comp858
  :parameters ()
  :precondition (and
    (evaluate comp119)
    (not (rebooted comp119))
    (not (running comp858))
  )
  :effect (and
    (not (evaluate comp119))
    (evaluate comp120)
    (one-off comp119)
  )
)
(:action evaluate-comp120-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp120)
    (rebooted comp120)
  )
  :effect (and
    (not (evaluate comp120))
    (evaluate comp121)
  )
)
(:action evaluate-comp120-all-on
  :parameters ()
  :precondition (and
    (evaluate comp120)
    (not (rebooted comp120))
    (running comp119)
    (running comp584)
  )
  :effect (and
    (not (evaluate comp120))
    (evaluate comp121)
    (all-on comp120)
  )
)
(:action evaluate-comp120-off-comp119
  :parameters ()
  :precondition (and
    (evaluate comp120)
    (not (rebooted comp120))
    (not (running comp119))
  )
  :effect (and
    (not (evaluate comp120))
    (evaluate comp121)
    (one-off comp120)
  )
)
(:action evaluate-comp120-off-comp584
  :parameters ()
  :precondition (and
    (evaluate comp120)
    (not (rebooted comp120))
    (not (running comp584))
  )
  :effect (and
    (not (evaluate comp120))
    (evaluate comp121)
    (one-off comp120)
  )
)
(:action evaluate-comp121-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp121)
    (rebooted comp121)
  )
  :effect (and
    (not (evaluate comp121))
    (evaluate comp122)
  )
)
(:action evaluate-comp121-all-on
  :parameters ()
  :precondition (and
    (evaluate comp121)
    (not (rebooted comp121))
    (running comp120)
  )
  :effect (and
    (not (evaluate comp121))
    (evaluate comp122)
    (all-on comp121)
  )
)
(:action evaluate-comp121-off-comp120
  :parameters ()
  :precondition (and
    (evaluate comp121)
    (not (rebooted comp121))
    (not (running comp120))
  )
  :effect (and
    (not (evaluate comp121))
    (evaluate comp122)
    (one-off comp121)
  )
)
(:action evaluate-comp122-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp122)
    (rebooted comp122)
  )
  :effect (and
    (not (evaluate comp122))
    (evaluate comp123)
  )
)
(:action evaluate-comp122-all-on
  :parameters ()
  :precondition (and
    (evaluate comp122)
    (not (rebooted comp122))
    (running comp121)
  )
  :effect (and
    (not (evaluate comp122))
    (evaluate comp123)
    (all-on comp122)
  )
)
(:action evaluate-comp122-off-comp121
  :parameters ()
  :precondition (and
    (evaluate comp122)
    (not (rebooted comp122))
    (not (running comp121))
  )
  :effect (and
    (not (evaluate comp122))
    (evaluate comp123)
    (one-off comp122)
  )
)
(:action evaluate-comp123-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp123)
    (rebooted comp123)
  )
  :effect (and
    (not (evaluate comp123))
    (evaluate comp124)
  )
)
(:action evaluate-comp123-all-on
  :parameters ()
  :precondition (and
    (evaluate comp123)
    (not (rebooted comp123))
    (running comp122)
  )
  :effect (and
    (not (evaluate comp123))
    (evaluate comp124)
    (all-on comp123)
  )
)
(:action evaluate-comp123-off-comp122
  :parameters ()
  :precondition (and
    (evaluate comp123)
    (not (rebooted comp123))
    (not (running comp122))
  )
  :effect (and
    (not (evaluate comp123))
    (evaluate comp124)
    (one-off comp123)
  )
)
(:action evaluate-comp124-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp124)
    (rebooted comp124)
  )
  :effect (and
    (not (evaluate comp124))
    (evaluate comp125)
  )
)
(:action evaluate-comp124-all-on
  :parameters ()
  :precondition (and
    (evaluate comp124)
    (not (rebooted comp124))
    (running comp123)
  )
  :effect (and
    (not (evaluate comp124))
    (evaluate comp125)
    (all-on comp124)
  )
)
(:action evaluate-comp124-off-comp123
  :parameters ()
  :precondition (and
    (evaluate comp124)
    (not (rebooted comp124))
    (not (running comp123))
  )
  :effect (and
    (not (evaluate comp124))
    (evaluate comp125)
    (one-off comp124)
  )
)
(:action evaluate-comp125-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp125)
    (rebooted comp125)
  )
  :effect (and
    (not (evaluate comp125))
    (evaluate comp126)
  )
)
(:action evaluate-comp125-all-on
  :parameters ()
  :precondition (and
    (evaluate comp125)
    (not (rebooted comp125))
    (running comp124)
  )
  :effect (and
    (not (evaluate comp125))
    (evaluate comp126)
    (all-on comp125)
  )
)
(:action evaluate-comp125-off-comp124
  :parameters ()
  :precondition (and
    (evaluate comp125)
    (not (rebooted comp125))
    (not (running comp124))
  )
  :effect (and
    (not (evaluate comp125))
    (evaluate comp126)
    (one-off comp125)
  )
)
(:action evaluate-comp126-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp126)
    (rebooted comp126)
  )
  :effect (and
    (not (evaluate comp126))
    (evaluate comp127)
  )
)
(:action evaluate-comp126-all-on
  :parameters ()
  :precondition (and
    (evaluate comp126)
    (not (rebooted comp126))
    (running comp125)
    (running comp698)
  )
  :effect (and
    (not (evaluate comp126))
    (evaluate comp127)
    (all-on comp126)
  )
)
(:action evaluate-comp126-off-comp125
  :parameters ()
  :precondition (and
    (evaluate comp126)
    (not (rebooted comp126))
    (not (running comp125))
  )
  :effect (and
    (not (evaluate comp126))
    (evaluate comp127)
    (one-off comp126)
  )
)
(:action evaluate-comp126-off-comp698
  :parameters ()
  :precondition (and
    (evaluate comp126)
    (not (rebooted comp126))
    (not (running comp698))
  )
  :effect (and
    (not (evaluate comp126))
    (evaluate comp127)
    (one-off comp126)
  )
)
(:action evaluate-comp127-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp127)
    (rebooted comp127)
  )
  :effect (and
    (not (evaluate comp127))
    (evaluate comp128)
  )
)
(:action evaluate-comp127-all-on
  :parameters ()
  :precondition (and
    (evaluate comp127)
    (not (rebooted comp127))
    (running comp126)
  )
  :effect (and
    (not (evaluate comp127))
    (evaluate comp128)
    (all-on comp127)
  )
)
(:action evaluate-comp127-off-comp126
  :parameters ()
  :precondition (and
    (evaluate comp127)
    (not (rebooted comp127))
    (not (running comp126))
  )
  :effect (and
    (not (evaluate comp127))
    (evaluate comp128)
    (one-off comp127)
  )
)
(:action evaluate-comp128-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp128)
    (rebooted comp128)
  )
  :effect (and
    (not (evaluate comp128))
    (evaluate comp129)
  )
)
(:action evaluate-comp128-all-on
  :parameters ()
  :precondition (and
    (evaluate comp128)
    (not (rebooted comp128))
    (running comp127)
  )
  :effect (and
    (not (evaluate comp128))
    (evaluate comp129)
    (all-on comp128)
  )
)
(:action evaluate-comp128-off-comp127
  :parameters ()
  :precondition (and
    (evaluate comp128)
    (not (rebooted comp128))
    (not (running comp127))
  )
  :effect (and
    (not (evaluate comp128))
    (evaluate comp129)
    (one-off comp128)
  )
)
(:action evaluate-comp129-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp129)
    (rebooted comp129)
  )
  :effect (and
    (not (evaluate comp129))
    (evaluate comp130)
  )
)
(:action evaluate-comp129-all-on
  :parameters ()
  :precondition (and
    (evaluate comp129)
    (not (rebooted comp129))
    (running comp128)
  )
  :effect (and
    (not (evaluate comp129))
    (evaluate comp130)
    (all-on comp129)
  )
)
(:action evaluate-comp129-off-comp128
  :parameters ()
  :precondition (and
    (evaluate comp129)
    (not (rebooted comp129))
    (not (running comp128))
  )
  :effect (and
    (not (evaluate comp129))
    (evaluate comp130)
    (one-off comp129)
  )
)
(:action evaluate-comp130-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp130)
    (rebooted comp130)
  )
  :effect (and
    (not (evaluate comp130))
    (evaluate comp131)
  )
)
(:action evaluate-comp130-all-on
  :parameters ()
  :precondition (and
    (evaluate comp130)
    (not (rebooted comp130))
    (running comp129)
    (running comp930)
  )
  :effect (and
    (not (evaluate comp130))
    (evaluate comp131)
    (all-on comp130)
  )
)
(:action evaluate-comp130-off-comp129
  :parameters ()
  :precondition (and
    (evaluate comp130)
    (not (rebooted comp130))
    (not (running comp129))
  )
  :effect (and
    (not (evaluate comp130))
    (evaluate comp131)
    (one-off comp130)
  )
)
(:action evaluate-comp130-off-comp930
  :parameters ()
  :precondition (and
    (evaluate comp130)
    (not (rebooted comp130))
    (not (running comp930))
  )
  :effect (and
    (not (evaluate comp130))
    (evaluate comp131)
    (one-off comp130)
  )
)
(:action evaluate-comp131-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp131)
    (rebooted comp131)
  )
  :effect (and
    (not (evaluate comp131))
    (evaluate comp132)
  )
)
(:action evaluate-comp131-all-on
  :parameters ()
  :precondition (and
    (evaluate comp131)
    (not (rebooted comp131))
    (running comp130)
  )
  :effect (and
    (not (evaluate comp131))
    (evaluate comp132)
    (all-on comp131)
  )
)
(:action evaluate-comp131-off-comp130
  :parameters ()
  :precondition (and
    (evaluate comp131)
    (not (rebooted comp131))
    (not (running comp130))
  )
  :effect (and
    (not (evaluate comp131))
    (evaluate comp132)
    (one-off comp131)
  )
)
(:action evaluate-comp132-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (rebooted comp132)
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
  )
)
(:action evaluate-comp132-all-on
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (not (rebooted comp132))
    (running comp131)
    (running comp262)
    (running comp796)
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
    (all-on comp132)
  )
)
(:action evaluate-comp132-off-comp131
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (not (rebooted comp132))
    (not (running comp131))
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
    (one-off comp132)
  )
)
(:action evaluate-comp132-off-comp262
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (not (rebooted comp132))
    (not (running comp262))
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
    (one-off comp132)
  )
)
(:action evaluate-comp132-off-comp796
  :parameters ()
  :precondition (and
    (evaluate comp132)
    (not (rebooted comp132))
    (not (running comp796))
  )
  :effect (and
    (not (evaluate comp132))
    (evaluate comp133)
    (one-off comp132)
  )
)
(:action evaluate-comp133-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp133)
    (rebooted comp133)
  )
  :effect (and
    (not (evaluate comp133))
    (evaluate comp134)
  )
)
(:action evaluate-comp133-all-on
  :parameters ()
  :precondition (and
    (evaluate comp133)
    (not (rebooted comp133))
    (running comp132)
  )
  :effect (and
    (not (evaluate comp133))
    (evaluate comp134)
    (all-on comp133)
  )
)
(:action evaluate-comp133-off-comp132
  :parameters ()
  :precondition (and
    (evaluate comp133)
    (not (rebooted comp133))
    (not (running comp132))
  )
  :effect (and
    (not (evaluate comp133))
    (evaluate comp134)
    (one-off comp133)
  )
)
(:action evaluate-comp134-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp134)
    (rebooted comp134)
  )
  :effect (and
    (not (evaluate comp134))
    (evaluate comp135)
  )
)
(:action evaluate-comp134-all-on
  :parameters ()
  :precondition (and
    (evaluate comp134)
    (not (rebooted comp134))
    (running comp133)
  )
  :effect (and
    (not (evaluate comp134))
    (evaluate comp135)
    (all-on comp134)
  )
)
(:action evaluate-comp134-off-comp133
  :parameters ()
  :precondition (and
    (evaluate comp134)
    (not (rebooted comp134))
    (not (running comp133))
  )
  :effect (and
    (not (evaluate comp134))
    (evaluate comp135)
    (one-off comp134)
  )
)
(:action evaluate-comp135-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp135)
    (rebooted comp135)
  )
  :effect (and
    (not (evaluate comp135))
    (evaluate comp136)
  )
)
(:action evaluate-comp135-all-on
  :parameters ()
  :precondition (and
    (evaluate comp135)
    (not (rebooted comp135))
    (running comp134)
  )
  :effect (and
    (not (evaluate comp135))
    (evaluate comp136)
    (all-on comp135)
  )
)
(:action evaluate-comp135-off-comp134
  :parameters ()
  :precondition (and
    (evaluate comp135)
    (not (rebooted comp135))
    (not (running comp134))
  )
  :effect (and
    (not (evaluate comp135))
    (evaluate comp136)
    (one-off comp135)
  )
)
(:action evaluate-comp136-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp136)
    (rebooted comp136)
  )
  :effect (and
    (not (evaluate comp136))
    (evaluate comp137)
  )
)
(:action evaluate-comp136-all-on
  :parameters ()
  :precondition (and
    (evaluate comp136)
    (not (rebooted comp136))
    (running comp135)
    (running comp885)
  )
  :effect (and
    (not (evaluate comp136))
    (evaluate comp137)
    (all-on comp136)
  )
)
(:action evaluate-comp136-off-comp135
  :parameters ()
  :precondition (and
    (evaluate comp136)
    (not (rebooted comp136))
    (not (running comp135))
  )
  :effect (and
    (not (evaluate comp136))
    (evaluate comp137)
    (one-off comp136)
  )
)
(:action evaluate-comp136-off-comp885
  :parameters ()
  :precondition (and
    (evaluate comp136)
    (not (rebooted comp136))
    (not (running comp885))
  )
  :effect (and
    (not (evaluate comp136))
    (evaluate comp137)
    (one-off comp136)
  )
)
(:action evaluate-comp137-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp137)
    (rebooted comp137)
  )
  :effect (and
    (not (evaluate comp137))
    (evaluate comp138)
  )
)
(:action evaluate-comp137-all-on
  :parameters ()
  :precondition (and
    (evaluate comp137)
    (not (rebooted comp137))
    (running comp136)
  )
  :effect (and
    (not (evaluate comp137))
    (evaluate comp138)
    (all-on comp137)
  )
)
(:action evaluate-comp137-off-comp136
  :parameters ()
  :precondition (and
    (evaluate comp137)
    (not (rebooted comp137))
    (not (running comp136))
  )
  :effect (and
    (not (evaluate comp137))
    (evaluate comp138)
    (one-off comp137)
  )
)
(:action evaluate-comp138-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp138)
    (rebooted comp138)
  )
  :effect (and
    (not (evaluate comp138))
    (evaluate comp139)
  )
)
(:action evaluate-comp138-all-on
  :parameters ()
  :precondition (and
    (evaluate comp138)
    (not (rebooted comp138))
    (running comp137)
  )
  :effect (and
    (not (evaluate comp138))
    (evaluate comp139)
    (all-on comp138)
  )
)
(:action evaluate-comp138-off-comp137
  :parameters ()
  :precondition (and
    (evaluate comp138)
    (not (rebooted comp138))
    (not (running comp137))
  )
  :effect (and
    (not (evaluate comp138))
    (evaluate comp139)
    (one-off comp138)
  )
)
(:action evaluate-comp139-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp139)
    (rebooted comp139)
  )
  :effect (and
    (not (evaluate comp139))
    (evaluate comp140)
  )
)
(:action evaluate-comp139-all-on
  :parameters ()
  :precondition (and
    (evaluate comp139)
    (not (rebooted comp139))
    (running comp138)
  )
  :effect (and
    (not (evaluate comp139))
    (evaluate comp140)
    (all-on comp139)
  )
)
(:action evaluate-comp139-off-comp138
  :parameters ()
  :precondition (and
    (evaluate comp139)
    (not (rebooted comp139))
    (not (running comp138))
  )
  :effect (and
    (not (evaluate comp139))
    (evaluate comp140)
    (one-off comp139)
  )
)
(:action evaluate-comp140-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp140)
    (rebooted comp140)
  )
  :effect (and
    (not (evaluate comp140))
    (evaluate comp141)
  )
)
(:action evaluate-comp140-all-on
  :parameters ()
  :precondition (and
    (evaluate comp140)
    (not (rebooted comp140))
    (running comp139)
    (running comp149)
  )
  :effect (and
    (not (evaluate comp140))
    (evaluate comp141)
    (all-on comp140)
  )
)
(:action evaluate-comp140-off-comp139
  :parameters ()
  :precondition (and
    (evaluate comp140)
    (not (rebooted comp140))
    (not (running comp139))
  )
  :effect (and
    (not (evaluate comp140))
    (evaluate comp141)
    (one-off comp140)
  )
)
(:action evaluate-comp140-off-comp149
  :parameters ()
  :precondition (and
    (evaluate comp140)
    (not (rebooted comp140))
    (not (running comp149))
  )
  :effect (and
    (not (evaluate comp140))
    (evaluate comp141)
    (one-off comp140)
  )
)
(:action evaluate-comp141-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp141)
    (rebooted comp141)
  )
  :effect (and
    (not (evaluate comp141))
    (evaluate comp142)
  )
)
(:action evaluate-comp141-all-on
  :parameters ()
  :precondition (and
    (evaluate comp141)
    (not (rebooted comp141))
    (running comp140)
  )
  :effect (and
    (not (evaluate comp141))
    (evaluate comp142)
    (all-on comp141)
  )
)
(:action evaluate-comp141-off-comp140
  :parameters ()
  :precondition (and
    (evaluate comp141)
    (not (rebooted comp141))
    (not (running comp140))
  )
  :effect (and
    (not (evaluate comp141))
    (evaluate comp142)
    (one-off comp141)
  )
)
(:action evaluate-comp142-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp142)
    (rebooted comp142)
  )
  :effect (and
    (not (evaluate comp142))
    (evaluate comp143)
  )
)
(:action evaluate-comp142-all-on
  :parameters ()
  :precondition (and
    (evaluate comp142)
    (not (rebooted comp142))
    (running comp141)
    (running comp400)
  )
  :effect (and
    (not (evaluate comp142))
    (evaluate comp143)
    (all-on comp142)
  )
)
(:action evaluate-comp142-off-comp141
  :parameters ()
  :precondition (and
    (evaluate comp142)
    (not (rebooted comp142))
    (not (running comp141))
  )
  :effect (and
    (not (evaluate comp142))
    (evaluate comp143)
    (one-off comp142)
  )
)
(:action evaluate-comp142-off-comp400
  :parameters ()
  :precondition (and
    (evaluate comp142)
    (not (rebooted comp142))
    (not (running comp400))
  )
  :effect (and
    (not (evaluate comp142))
    (evaluate comp143)
    (one-off comp142)
  )
)
(:action evaluate-comp143-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp143)
    (rebooted comp143)
  )
  :effect (and
    (not (evaluate comp143))
    (evaluate comp144)
  )
)
(:action evaluate-comp143-all-on
  :parameters ()
  :precondition (and
    (evaluate comp143)
    (not (rebooted comp143))
    (running comp142)
  )
  :effect (and
    (not (evaluate comp143))
    (evaluate comp144)
    (all-on comp143)
  )
)
(:action evaluate-comp143-off-comp142
  :parameters ()
  :precondition (and
    (evaluate comp143)
    (not (rebooted comp143))
    (not (running comp142))
  )
  :effect (and
    (not (evaluate comp143))
    (evaluate comp144)
    (one-off comp143)
  )
)
(:action evaluate-comp144-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp144)
    (rebooted comp144)
  )
  :effect (and
    (not (evaluate comp144))
    (evaluate comp145)
  )
)
(:action evaluate-comp144-all-on
  :parameters ()
  :precondition (and
    (evaluate comp144)
    (not (rebooted comp144))
    (running comp143)
  )
  :effect (and
    (not (evaluate comp144))
    (evaluate comp145)
    (all-on comp144)
  )
)
(:action evaluate-comp144-off-comp143
  :parameters ()
  :precondition (and
    (evaluate comp144)
    (not (rebooted comp144))
    (not (running comp143))
  )
  :effect (and
    (not (evaluate comp144))
    (evaluate comp145)
    (one-off comp144)
  )
)
(:action evaluate-comp145-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp145)
    (rebooted comp145)
  )
  :effect (and
    (not (evaluate comp145))
    (evaluate comp146)
  )
)
(:action evaluate-comp145-all-on
  :parameters ()
  :precondition (and
    (evaluate comp145)
    (not (rebooted comp145))
    (running comp144)
  )
  :effect (and
    (not (evaluate comp145))
    (evaluate comp146)
    (all-on comp145)
  )
)
(:action evaluate-comp145-off-comp144
  :parameters ()
  :precondition (and
    (evaluate comp145)
    (not (rebooted comp145))
    (not (running comp144))
  )
  :effect (and
    (not (evaluate comp145))
    (evaluate comp146)
    (one-off comp145)
  )
)
(:action evaluate-comp146-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp146)
    (rebooted comp146)
  )
  :effect (and
    (not (evaluate comp146))
    (evaluate comp147)
  )
)
(:action evaluate-comp146-all-on
  :parameters ()
  :precondition (and
    (evaluate comp146)
    (not (rebooted comp146))
    (running comp145)
  )
  :effect (and
    (not (evaluate comp146))
    (evaluate comp147)
    (all-on comp146)
  )
)
(:action evaluate-comp146-off-comp145
  :parameters ()
  :precondition (and
    (evaluate comp146)
    (not (rebooted comp146))
    (not (running comp145))
  )
  :effect (and
    (not (evaluate comp146))
    (evaluate comp147)
    (one-off comp146)
  )
)
(:action evaluate-comp147-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp147)
    (rebooted comp147)
  )
  :effect (and
    (not (evaluate comp147))
    (evaluate comp148)
  )
)
(:action evaluate-comp147-all-on
  :parameters ()
  :precondition (and
    (evaluate comp147)
    (not (rebooted comp147))
    (running comp146)
    (running comp230)
  )
  :effect (and
    (not (evaluate comp147))
    (evaluate comp148)
    (all-on comp147)
  )
)
(:action evaluate-comp147-off-comp146
  :parameters ()
  :precondition (and
    (evaluate comp147)
    (not (rebooted comp147))
    (not (running comp146))
  )
  :effect (and
    (not (evaluate comp147))
    (evaluate comp148)
    (one-off comp147)
  )
)
(:action evaluate-comp147-off-comp230
  :parameters ()
  :precondition (and
    (evaluate comp147)
    (not (rebooted comp147))
    (not (running comp230))
  )
  :effect (and
    (not (evaluate comp147))
    (evaluate comp148)
    (one-off comp147)
  )
)
(:action evaluate-comp148-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp148)
    (rebooted comp148)
  )
  :effect (and
    (not (evaluate comp148))
    (evaluate comp149)
  )
)
(:action evaluate-comp148-all-on
  :parameters ()
  :precondition (and
    (evaluate comp148)
    (not (rebooted comp148))
    (running comp147)
  )
  :effect (and
    (not (evaluate comp148))
    (evaluate comp149)
    (all-on comp148)
  )
)
(:action evaluate-comp148-off-comp147
  :parameters ()
  :precondition (and
    (evaluate comp148)
    (not (rebooted comp148))
    (not (running comp147))
  )
  :effect (and
    (not (evaluate comp148))
    (evaluate comp149)
    (one-off comp148)
  )
)
(:action evaluate-comp149-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp149)
    (rebooted comp149)
  )
  :effect (and
    (not (evaluate comp149))
    (evaluate comp150)
  )
)
(:action evaluate-comp149-all-on
  :parameters ()
  :precondition (and
    (evaluate comp149)
    (not (rebooted comp149))
    (running comp148)
  )
  :effect (and
    (not (evaluate comp149))
    (evaluate comp150)
    (all-on comp149)
  )
)
(:action evaluate-comp149-off-comp148
  :parameters ()
  :precondition (and
    (evaluate comp149)
    (not (rebooted comp149))
    (not (running comp148))
  )
  :effect (and
    (not (evaluate comp149))
    (evaluate comp150)
    (one-off comp149)
  )
)
(:action evaluate-comp150-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp150)
    (rebooted comp150)
  )
  :effect (and
    (not (evaluate comp150))
    (evaluate comp151)
  )
)
(:action evaluate-comp150-all-on
  :parameters ()
  :precondition (and
    (evaluate comp150)
    (not (rebooted comp150))
    (running comp149)
  )
  :effect (and
    (not (evaluate comp150))
    (evaluate comp151)
    (all-on comp150)
  )
)
(:action evaluate-comp150-off-comp149
  :parameters ()
  :precondition (and
    (evaluate comp150)
    (not (rebooted comp150))
    (not (running comp149))
  )
  :effect (and
    (not (evaluate comp150))
    (evaluate comp151)
    (one-off comp150)
  )
)
(:action evaluate-comp151-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp151)
    (rebooted comp151)
  )
  :effect (and
    (not (evaluate comp151))
    (evaluate comp152)
  )
)
(:action evaluate-comp151-all-on
  :parameters ()
  :precondition (and
    (evaluate comp151)
    (not (rebooted comp151))
    (running comp150)
    (running comp915)
  )
  :effect (and
    (not (evaluate comp151))
    (evaluate comp152)
    (all-on comp151)
  )
)
(:action evaluate-comp151-off-comp150
  :parameters ()
  :precondition (and
    (evaluate comp151)
    (not (rebooted comp151))
    (not (running comp150))
  )
  :effect (and
    (not (evaluate comp151))
    (evaluate comp152)
    (one-off comp151)
  )
)
(:action evaluate-comp151-off-comp915
  :parameters ()
  :precondition (and
    (evaluate comp151)
    (not (rebooted comp151))
    (not (running comp915))
  )
  :effect (and
    (not (evaluate comp151))
    (evaluate comp152)
    (one-off comp151)
  )
)
(:action evaluate-comp152-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp152)
    (rebooted comp152)
  )
  :effect (and
    (not (evaluate comp152))
    (evaluate comp153)
  )
)
(:action evaluate-comp152-all-on
  :parameters ()
  :precondition (and
    (evaluate comp152)
    (not (rebooted comp152))
    (running comp151)
  )
  :effect (and
    (not (evaluate comp152))
    (evaluate comp153)
    (all-on comp152)
  )
)
(:action evaluate-comp152-off-comp151
  :parameters ()
  :precondition (and
    (evaluate comp152)
    (not (rebooted comp152))
    (not (running comp151))
  )
  :effect (and
    (not (evaluate comp152))
    (evaluate comp153)
    (one-off comp152)
  )
)
(:action evaluate-comp153-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (rebooted comp153)
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
  )
)
(:action evaluate-comp153-all-on
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (not (rebooted comp153))
    (running comp88)
    (running comp152)
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
    (all-on comp153)
  )
)
(:action evaluate-comp153-off-comp88
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (not (rebooted comp153))
    (not (running comp88))
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
    (one-off comp153)
  )
)
(:action evaluate-comp153-off-comp152
  :parameters ()
  :precondition (and
    (evaluate comp153)
    (not (rebooted comp153))
    (not (running comp152))
  )
  :effect (and
    (not (evaluate comp153))
    (evaluate comp154)
    (one-off comp153)
  )
)
(:action evaluate-comp154-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp154)
    (rebooted comp154)
  )
  :effect (and
    (not (evaluate comp154))
    (evaluate comp155)
  )
)
(:action evaluate-comp154-all-on
  :parameters ()
  :precondition (and
    (evaluate comp154)
    (not (rebooted comp154))
    (running comp153)
  )
  :effect (and
    (not (evaluate comp154))
    (evaluate comp155)
    (all-on comp154)
  )
)
(:action evaluate-comp154-off-comp153
  :parameters ()
  :precondition (and
    (evaluate comp154)
    (not (rebooted comp154))
    (not (running comp153))
  )
  :effect (and
    (not (evaluate comp154))
    (evaluate comp155)
    (one-off comp154)
  )
)
(:action evaluate-comp155-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp155)
    (rebooted comp155)
  )
  :effect (and
    (not (evaluate comp155))
    (evaluate comp156)
  )
)
(:action evaluate-comp155-all-on
  :parameters ()
  :precondition (and
    (evaluate comp155)
    (not (rebooted comp155))
    (running comp154)
    (running comp866)
  )
  :effect (and
    (not (evaluate comp155))
    (evaluate comp156)
    (all-on comp155)
  )
)
(:action evaluate-comp155-off-comp154
  :parameters ()
  :precondition (and
    (evaluate comp155)
    (not (rebooted comp155))
    (not (running comp154))
  )
  :effect (and
    (not (evaluate comp155))
    (evaluate comp156)
    (one-off comp155)
  )
)
(:action evaluate-comp155-off-comp866
  :parameters ()
  :precondition (and
    (evaluate comp155)
    (not (rebooted comp155))
    (not (running comp866))
  )
  :effect (and
    (not (evaluate comp155))
    (evaluate comp156)
    (one-off comp155)
  )
)
(:action evaluate-comp156-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (rebooted comp156)
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
  )
)
(:action evaluate-comp156-all-on
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (not (rebooted comp156))
    (running comp155)
    (running comp224)
    (running comp428)
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
    (all-on comp156)
  )
)
(:action evaluate-comp156-off-comp155
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (not (rebooted comp156))
    (not (running comp155))
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
    (one-off comp156)
  )
)
(:action evaluate-comp156-off-comp224
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (not (rebooted comp156))
    (not (running comp224))
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
    (one-off comp156)
  )
)
(:action evaluate-comp156-off-comp428
  :parameters ()
  :precondition (and
    (evaluate comp156)
    (not (rebooted comp156))
    (not (running comp428))
  )
  :effect (and
    (not (evaluate comp156))
    (evaluate comp157)
    (one-off comp156)
  )
)
(:action evaluate-comp157-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp157)
    (rebooted comp157)
  )
  :effect (and
    (not (evaluate comp157))
    (evaluate comp158)
  )
)
(:action evaluate-comp157-all-on
  :parameters ()
  :precondition (and
    (evaluate comp157)
    (not (rebooted comp157))
    (running comp156)
    (running comp955)
  )
  :effect (and
    (not (evaluate comp157))
    (evaluate comp158)
    (all-on comp157)
  )
)
(:action evaluate-comp157-off-comp156
  :parameters ()
  :precondition (and
    (evaluate comp157)
    (not (rebooted comp157))
    (not (running comp156))
  )
  :effect (and
    (not (evaluate comp157))
    (evaluate comp158)
    (one-off comp157)
  )
)
(:action evaluate-comp157-off-comp955
  :parameters ()
  :precondition (and
    (evaluate comp157)
    (not (rebooted comp157))
    (not (running comp955))
  )
  :effect (and
    (not (evaluate comp157))
    (evaluate comp158)
    (one-off comp157)
  )
)
(:action evaluate-comp158-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (rebooted comp158)
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
  )
)
(:action evaluate-comp158-all-on
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (not (rebooted comp158))
    (running comp157)
    (running comp773)
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
    (all-on comp158)
  )
)
(:action evaluate-comp158-off-comp157
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (not (rebooted comp158))
    (not (running comp157))
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
    (one-off comp158)
  )
)
(:action evaluate-comp158-off-comp773
  :parameters ()
  :precondition (and
    (evaluate comp158)
    (not (rebooted comp158))
    (not (running comp773))
  )
  :effect (and
    (not (evaluate comp158))
    (evaluate comp159)
    (one-off comp158)
  )
)
(:action evaluate-comp159-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp159)
    (rebooted comp159)
  )
  :effect (and
    (not (evaluate comp159))
    (evaluate comp160)
  )
)
(:action evaluate-comp159-all-on
  :parameters ()
  :precondition (and
    (evaluate comp159)
    (not (rebooted comp159))
    (running comp26)
    (running comp158)
  )
  :effect (and
    (not (evaluate comp159))
    (evaluate comp160)
    (all-on comp159)
  )
)
(:action evaluate-comp159-off-comp26
  :parameters ()
  :precondition (and
    (evaluate comp159)
    (not (rebooted comp159))
    (not (running comp26))
  )
  :effect (and
    (not (evaluate comp159))
    (evaluate comp160)
    (one-off comp159)
  )
)
(:action evaluate-comp159-off-comp158
  :parameters ()
  :precondition (and
    (evaluate comp159)
    (not (rebooted comp159))
    (not (running comp158))
  )
  :effect (and
    (not (evaluate comp159))
    (evaluate comp160)
    (one-off comp159)
  )
)
(:action evaluate-comp160-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp160)
    (rebooted comp160)
  )
  :effect (and
    (not (evaluate comp160))
    (evaluate comp161)
  )
)
(:action evaluate-comp160-all-on
  :parameters ()
  :precondition (and
    (evaluate comp160)
    (not (rebooted comp160))
    (running comp159)
  )
  :effect (and
    (not (evaluate comp160))
    (evaluate comp161)
    (all-on comp160)
  )
)
(:action evaluate-comp160-off-comp159
  :parameters ()
  :precondition (and
    (evaluate comp160)
    (not (rebooted comp160))
    (not (running comp159))
  )
  :effect (and
    (not (evaluate comp160))
    (evaluate comp161)
    (one-off comp160)
  )
)
(:action evaluate-comp161-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (rebooted comp161)
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
  )
)
(:action evaluate-comp161-all-on
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (not (rebooted comp161))
    (running comp160)
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
    (all-on comp161)
  )
)
(:action evaluate-comp161-off-comp160
  :parameters ()
  :precondition (and
    (evaluate comp161)
    (not (rebooted comp161))
    (not (running comp160))
  )
  :effect (and
    (not (evaluate comp161))
    (evaluate comp162)
    (one-off comp161)
  )
)
(:action evaluate-comp162-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (rebooted comp162)
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
  )
)
(:action evaluate-comp162-all-on
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (not (rebooted comp162))
    (running comp161)
    (running comp393)
    (running comp769)
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
    (all-on comp162)
  )
)
(:action evaluate-comp162-off-comp161
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (not (rebooted comp162))
    (not (running comp161))
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
    (one-off comp162)
  )
)
(:action evaluate-comp162-off-comp393
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (not (rebooted comp162))
    (not (running comp393))
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
    (one-off comp162)
  )
)
(:action evaluate-comp162-off-comp769
  :parameters ()
  :precondition (and
    (evaluate comp162)
    (not (rebooted comp162))
    (not (running comp769))
  )
  :effect (and
    (not (evaluate comp162))
    (evaluate comp163)
    (one-off comp162)
  )
)
(:action evaluate-comp163-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp163)
    (rebooted comp163)
  )
  :effect (and
    (not (evaluate comp163))
    (evaluate comp164)
  )
)
(:action evaluate-comp163-all-on
  :parameters ()
  :precondition (and
    (evaluate comp163)
    (not (rebooted comp163))
    (running comp162)
  )
  :effect (and
    (not (evaluate comp163))
    (evaluate comp164)
    (all-on comp163)
  )
)
(:action evaluate-comp163-off-comp162
  :parameters ()
  :precondition (and
    (evaluate comp163)
    (not (rebooted comp163))
    (not (running comp162))
  )
  :effect (and
    (not (evaluate comp163))
    (evaluate comp164)
    (one-off comp163)
  )
)
(:action evaluate-comp164-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp164)
    (rebooted comp164)
  )
  :effect (and
    (not (evaluate comp164))
    (evaluate comp165)
  )
)
(:action evaluate-comp164-all-on
  :parameters ()
  :precondition (and
    (evaluate comp164)
    (not (rebooted comp164))
    (running comp163)
  )
  :effect (and
    (not (evaluate comp164))
    (evaluate comp165)
    (all-on comp164)
  )
)
(:action evaluate-comp164-off-comp163
  :parameters ()
  :precondition (and
    (evaluate comp164)
    (not (rebooted comp164))
    (not (running comp163))
  )
  :effect (and
    (not (evaluate comp164))
    (evaluate comp165)
    (one-off comp164)
  )
)
(:action evaluate-comp165-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp165)
    (rebooted comp165)
  )
  :effect (and
    (not (evaluate comp165))
    (evaluate comp166)
  )
)
(:action evaluate-comp165-all-on
  :parameters ()
  :precondition (and
    (evaluate comp165)
    (not (rebooted comp165))
    (running comp164)
    (running comp825)
  )
  :effect (and
    (not (evaluate comp165))
    (evaluate comp166)
    (all-on comp165)
  )
)
(:action evaluate-comp165-off-comp164
  :parameters ()
  :precondition (and
    (evaluate comp165)
    (not (rebooted comp165))
    (not (running comp164))
  )
  :effect (and
    (not (evaluate comp165))
    (evaluate comp166)
    (one-off comp165)
  )
)
(:action evaluate-comp165-off-comp825
  :parameters ()
  :precondition (and
    (evaluate comp165)
    (not (rebooted comp165))
    (not (running comp825))
  )
  :effect (and
    (not (evaluate comp165))
    (evaluate comp166)
    (one-off comp165)
  )
)
(:action evaluate-comp166-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp166)
    (rebooted comp166)
  )
  :effect (and
    (not (evaluate comp166))
    (evaluate comp167)
  )
)
(:action evaluate-comp166-all-on
  :parameters ()
  :precondition (and
    (evaluate comp166)
    (not (rebooted comp166))
    (running comp165)
  )
  :effect (and
    (not (evaluate comp166))
    (evaluate comp167)
    (all-on comp166)
  )
)
(:action evaluate-comp166-off-comp165
  :parameters ()
  :precondition (and
    (evaluate comp166)
    (not (rebooted comp166))
    (not (running comp165))
  )
  :effect (and
    (not (evaluate comp166))
    (evaluate comp167)
    (one-off comp166)
  )
)
(:action evaluate-comp167-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp167)
    (rebooted comp167)
  )
  :effect (and
    (not (evaluate comp167))
    (evaluate comp168)
  )
)
(:action evaluate-comp167-all-on
  :parameters ()
  :precondition (and
    (evaluate comp167)
    (not (rebooted comp167))
    (running comp166)
  )
  :effect (and
    (not (evaluate comp167))
    (evaluate comp168)
    (all-on comp167)
  )
)
(:action evaluate-comp167-off-comp166
  :parameters ()
  :precondition (and
    (evaluate comp167)
    (not (rebooted comp167))
    (not (running comp166))
  )
  :effect (and
    (not (evaluate comp167))
    (evaluate comp168)
    (one-off comp167)
  )
)
(:action evaluate-comp168-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (rebooted comp168)
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
  )
)
(:action evaluate-comp168-all-on
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (not (rebooted comp168))
    (running comp167)
    (running comp319)
    (running comp574)
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
    (all-on comp168)
  )
)
(:action evaluate-comp168-off-comp167
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (not (rebooted comp168))
    (not (running comp167))
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
    (one-off comp168)
  )
)
(:action evaluate-comp168-off-comp319
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (not (rebooted comp168))
    (not (running comp319))
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
    (one-off comp168)
  )
)
(:action evaluate-comp168-off-comp574
  :parameters ()
  :precondition (and
    (evaluate comp168)
    (not (rebooted comp168))
    (not (running comp574))
  )
  :effect (and
    (not (evaluate comp168))
    (evaluate comp169)
    (one-off comp168)
  )
)
(:action evaluate-comp169-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp169)
    (rebooted comp169)
  )
  :effect (and
    (not (evaluate comp169))
    (evaluate comp170)
  )
)
(:action evaluate-comp169-all-on
  :parameters ()
  :precondition (and
    (evaluate comp169)
    (not (rebooted comp169))
    (running comp168)
  )
  :effect (and
    (not (evaluate comp169))
    (evaluate comp170)
    (all-on comp169)
  )
)
(:action evaluate-comp169-off-comp168
  :parameters ()
  :precondition (and
    (evaluate comp169)
    (not (rebooted comp169))
    (not (running comp168))
  )
  :effect (and
    (not (evaluate comp169))
    (evaluate comp170)
    (one-off comp169)
  )
)
(:action evaluate-comp170-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp170)
    (rebooted comp170)
  )
  :effect (and
    (not (evaluate comp170))
    (evaluate comp171)
  )
)
(:action evaluate-comp170-all-on
  :parameters ()
  :precondition (and
    (evaluate comp170)
    (not (rebooted comp170))
    (running comp169)
  )
  :effect (and
    (not (evaluate comp170))
    (evaluate comp171)
    (all-on comp170)
  )
)
(:action evaluate-comp170-off-comp169
  :parameters ()
  :precondition (and
    (evaluate comp170)
    (not (rebooted comp170))
    (not (running comp169))
  )
  :effect (and
    (not (evaluate comp170))
    (evaluate comp171)
    (one-off comp170)
  )
)
(:action evaluate-comp171-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp171)
    (rebooted comp171)
  )
  :effect (and
    (not (evaluate comp171))
    (evaluate comp172)
  )
)
(:action evaluate-comp171-all-on
  :parameters ()
  :precondition (and
    (evaluate comp171)
    (not (rebooted comp171))
    (running comp170)
  )
  :effect (and
    (not (evaluate comp171))
    (evaluate comp172)
    (all-on comp171)
  )
)
(:action evaluate-comp171-off-comp170
  :parameters ()
  :precondition (and
    (evaluate comp171)
    (not (rebooted comp171))
    (not (running comp170))
  )
  :effect (and
    (not (evaluate comp171))
    (evaluate comp172)
    (one-off comp171)
  )
)
(:action evaluate-comp172-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp172)
    (rebooted comp172)
  )
  :effect (and
    (not (evaluate comp172))
    (evaluate comp173)
  )
)
(:action evaluate-comp172-all-on
  :parameters ()
  :precondition (and
    (evaluate comp172)
    (not (rebooted comp172))
    (running comp171)
  )
  :effect (and
    (not (evaluate comp172))
    (evaluate comp173)
    (all-on comp172)
  )
)
(:action evaluate-comp172-off-comp171
  :parameters ()
  :precondition (and
    (evaluate comp172)
    (not (rebooted comp172))
    (not (running comp171))
  )
  :effect (and
    (not (evaluate comp172))
    (evaluate comp173)
    (one-off comp172)
  )
)
(:action evaluate-comp173-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp173)
    (rebooted comp173)
  )
  :effect (and
    (not (evaluate comp173))
    (evaluate comp174)
  )
)
(:action evaluate-comp173-all-on
  :parameters ()
  :precondition (and
    (evaluate comp173)
    (not (rebooted comp173))
    (running comp172)
  )
  :effect (and
    (not (evaluate comp173))
    (evaluate comp174)
    (all-on comp173)
  )
)
(:action evaluate-comp173-off-comp172
  :parameters ()
  :precondition (and
    (evaluate comp173)
    (not (rebooted comp173))
    (not (running comp172))
  )
  :effect (and
    (not (evaluate comp173))
    (evaluate comp174)
    (one-off comp173)
  )
)
(:action evaluate-comp174-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (rebooted comp174)
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
  )
)
(:action evaluate-comp174-all-on
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (not (rebooted comp174))
    (running comp173)
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
    (all-on comp174)
  )
)
(:action evaluate-comp174-off-comp173
  :parameters ()
  :precondition (and
    (evaluate comp174)
    (not (rebooted comp174))
    (not (running comp173))
  )
  :effect (and
    (not (evaluate comp174))
    (evaluate comp175)
    (one-off comp174)
  )
)
(:action evaluate-comp175-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp175)
    (rebooted comp175)
  )
  :effect (and
    (not (evaluate comp175))
    (evaluate comp176)
  )
)
(:action evaluate-comp175-all-on
  :parameters ()
  :precondition (and
    (evaluate comp175)
    (not (rebooted comp175))
    (running comp174)
  )
  :effect (and
    (not (evaluate comp175))
    (evaluate comp176)
    (all-on comp175)
  )
)
(:action evaluate-comp175-off-comp174
  :parameters ()
  :precondition (and
    (evaluate comp175)
    (not (rebooted comp175))
    (not (running comp174))
  )
  :effect (and
    (not (evaluate comp175))
    (evaluate comp176)
    (one-off comp175)
  )
)
(:action evaluate-comp176-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp176)
    (rebooted comp176)
  )
  :effect (and
    (not (evaluate comp176))
    (evaluate comp177)
  )
)
(:action evaluate-comp176-all-on
  :parameters ()
  :precondition (and
    (evaluate comp176)
    (not (rebooted comp176))
    (running comp175)
  )
  :effect (and
    (not (evaluate comp176))
    (evaluate comp177)
    (all-on comp176)
  )
)
(:action evaluate-comp176-off-comp175
  :parameters ()
  :precondition (and
    (evaluate comp176)
    (not (rebooted comp176))
    (not (running comp175))
  )
  :effect (and
    (not (evaluate comp176))
    (evaluate comp177)
    (one-off comp176)
  )
)
(:action evaluate-comp177-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp177)
    (rebooted comp177)
  )
  :effect (and
    (not (evaluate comp177))
    (evaluate comp178)
  )
)
(:action evaluate-comp177-all-on
  :parameters ()
  :precondition (and
    (evaluate comp177)
    (not (rebooted comp177))
    (running comp176)
  )
  :effect (and
    (not (evaluate comp177))
    (evaluate comp178)
    (all-on comp177)
  )
)
(:action evaluate-comp177-off-comp176
  :parameters ()
  :precondition (and
    (evaluate comp177)
    (not (rebooted comp177))
    (not (running comp176))
  )
  :effect (and
    (not (evaluate comp177))
    (evaluate comp178)
    (one-off comp177)
  )
)
(:action evaluate-comp178-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp178)
    (rebooted comp178)
  )
  :effect (and
    (not (evaluate comp178))
    (evaluate comp179)
  )
)
(:action evaluate-comp178-all-on
  :parameters ()
  :precondition (and
    (evaluate comp178)
    (not (rebooted comp178))
    (running comp177)
  )
  :effect (and
    (not (evaluate comp178))
    (evaluate comp179)
    (all-on comp178)
  )
)
(:action evaluate-comp178-off-comp177
  :parameters ()
  :precondition (and
    (evaluate comp178)
    (not (rebooted comp178))
    (not (running comp177))
  )
  :effect (and
    (not (evaluate comp178))
    (evaluate comp179)
    (one-off comp178)
  )
)
(:action evaluate-comp179-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp179)
    (rebooted comp179)
  )
  :effect (and
    (not (evaluate comp179))
    (evaluate comp180)
  )
)
(:action evaluate-comp179-all-on
  :parameters ()
  :precondition (and
    (evaluate comp179)
    (not (rebooted comp179))
    (running comp178)
    (running comp635)
  )
  :effect (and
    (not (evaluate comp179))
    (evaluate comp180)
    (all-on comp179)
  )
)
(:action evaluate-comp179-off-comp178
  :parameters ()
  :precondition (and
    (evaluate comp179)
    (not (rebooted comp179))
    (not (running comp178))
  )
  :effect (and
    (not (evaluate comp179))
    (evaluate comp180)
    (one-off comp179)
  )
)
(:action evaluate-comp179-off-comp635
  :parameters ()
  :precondition (and
    (evaluate comp179)
    (not (rebooted comp179))
    (not (running comp635))
  )
  :effect (and
    (not (evaluate comp179))
    (evaluate comp180)
    (one-off comp179)
  )
)
(:action evaluate-comp180-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (rebooted comp180)
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
  )
)
(:action evaluate-comp180-all-on
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (not (rebooted comp180))
    (running comp179)
    (running comp511)
    (running comp603)
    (running comp671)
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
    (all-on comp180)
  )
)
(:action evaluate-comp180-off-comp179
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (not (rebooted comp180))
    (not (running comp179))
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
    (one-off comp180)
  )
)
(:action evaluate-comp180-off-comp511
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (not (rebooted comp180))
    (not (running comp511))
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
    (one-off comp180)
  )
)
(:action evaluate-comp180-off-comp603
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (not (rebooted comp180))
    (not (running comp603))
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
    (one-off comp180)
  )
)
(:action evaluate-comp180-off-comp671
  :parameters ()
  :precondition (and
    (evaluate comp180)
    (not (rebooted comp180))
    (not (running comp671))
  )
  :effect (and
    (not (evaluate comp180))
    (evaluate comp181)
    (one-off comp180)
  )
)
(:action evaluate-comp181-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (rebooted comp181)
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
  )
)
(:action evaluate-comp181-all-on
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (not (rebooted comp181))
    (running comp180)
    (running comp266)
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
    (all-on comp181)
  )
)
(:action evaluate-comp181-off-comp180
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (not (rebooted comp181))
    (not (running comp180))
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
    (one-off comp181)
  )
)
(:action evaluate-comp181-off-comp266
  :parameters ()
  :precondition (and
    (evaluate comp181)
    (not (rebooted comp181))
    (not (running comp266))
  )
  :effect (and
    (not (evaluate comp181))
    (evaluate comp182)
    (one-off comp181)
  )
)
(:action evaluate-comp182-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (rebooted comp182)
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
  )
)
(:action evaluate-comp182-all-on
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (not (rebooted comp182))
    (running comp4)
    (running comp181)
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
    (all-on comp182)
  )
)
(:action evaluate-comp182-off-comp4
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (not (rebooted comp182))
    (not (running comp4))
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
    (one-off comp182)
  )
)
(:action evaluate-comp182-off-comp181
  :parameters ()
  :precondition (and
    (evaluate comp182)
    (not (rebooted comp182))
    (not (running comp181))
  )
  :effect (and
    (not (evaluate comp182))
    (evaluate comp183)
    (one-off comp182)
  )
)
(:action evaluate-comp183-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp183)
    (rebooted comp183)
  )
  :effect (and
    (not (evaluate comp183))
    (evaluate comp184)
  )
)
(:action evaluate-comp183-all-on
  :parameters ()
  :precondition (and
    (evaluate comp183)
    (not (rebooted comp183))
    (running comp182)
  )
  :effect (and
    (not (evaluate comp183))
    (evaluate comp184)
    (all-on comp183)
  )
)
(:action evaluate-comp183-off-comp182
  :parameters ()
  :precondition (and
    (evaluate comp183)
    (not (rebooted comp183))
    (not (running comp182))
  )
  :effect (and
    (not (evaluate comp183))
    (evaluate comp184)
    (one-off comp183)
  )
)
(:action evaluate-comp184-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (rebooted comp184)
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
  )
)
(:action evaluate-comp184-all-on
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (not (rebooted comp184))
    (running comp141)
    (running comp183)
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
    (all-on comp184)
  )
)
(:action evaluate-comp184-off-comp141
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (not (rebooted comp184))
    (not (running comp141))
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
    (one-off comp184)
  )
)
(:action evaluate-comp184-off-comp183
  :parameters ()
  :precondition (and
    (evaluate comp184)
    (not (rebooted comp184))
    (not (running comp183))
  )
  :effect (and
    (not (evaluate comp184))
    (evaluate comp185)
    (one-off comp184)
  )
)
(:action evaluate-comp185-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp185)
    (rebooted comp185)
  )
  :effect (and
    (not (evaluate comp185))
    (evaluate comp186)
  )
)
(:action evaluate-comp185-all-on
  :parameters ()
  :precondition (and
    (evaluate comp185)
    (not (rebooted comp185))
    (running comp184)
  )
  :effect (and
    (not (evaluate comp185))
    (evaluate comp186)
    (all-on comp185)
  )
)
(:action evaluate-comp185-off-comp184
  :parameters ()
  :precondition (and
    (evaluate comp185)
    (not (rebooted comp185))
    (not (running comp184))
  )
  :effect (and
    (not (evaluate comp185))
    (evaluate comp186)
    (one-off comp185)
  )
)
(:action evaluate-comp186-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (rebooted comp186)
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
  )
)
(:action evaluate-comp186-all-on
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (not (rebooted comp186))
    (running comp185)
    (running comp230)
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
    (all-on comp186)
  )
)
(:action evaluate-comp186-off-comp185
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (not (rebooted comp186))
    (not (running comp185))
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
    (one-off comp186)
  )
)
(:action evaluate-comp186-off-comp230
  :parameters ()
  :precondition (and
    (evaluate comp186)
    (not (rebooted comp186))
    (not (running comp230))
  )
  :effect (and
    (not (evaluate comp186))
    (evaluate comp187)
    (one-off comp186)
  )
)
(:action evaluate-comp187-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (rebooted comp187)
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
  )
)
(:action evaluate-comp187-all-on
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (not (rebooted comp187))
    (running comp186)
    (running comp356)
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
    (all-on comp187)
  )
)
(:action evaluate-comp187-off-comp186
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (not (rebooted comp187))
    (not (running comp186))
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
    (one-off comp187)
  )
)
(:action evaluate-comp187-off-comp356
  :parameters ()
  :precondition (and
    (evaluate comp187)
    (not (rebooted comp187))
    (not (running comp356))
  )
  :effect (and
    (not (evaluate comp187))
    (evaluate comp188)
    (one-off comp187)
  )
)
(:action evaluate-comp188-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp188)
    (rebooted comp188)
  )
  :effect (and
    (not (evaluate comp188))
    (evaluate comp189)
  )
)
(:action evaluate-comp188-all-on
  :parameters ()
  :precondition (and
    (evaluate comp188)
    (not (rebooted comp188))
    (running comp187)
  )
  :effect (and
    (not (evaluate comp188))
    (evaluate comp189)
    (all-on comp188)
  )
)
(:action evaluate-comp188-off-comp187
  :parameters ()
  :precondition (and
    (evaluate comp188)
    (not (rebooted comp188))
    (not (running comp187))
  )
  :effect (and
    (not (evaluate comp188))
    (evaluate comp189)
    (one-off comp188)
  )
)
(:action evaluate-comp189-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp189)
    (rebooted comp189)
  )
  :effect (and
    (not (evaluate comp189))
    (evaluate comp190)
  )
)
(:action evaluate-comp189-all-on
  :parameters ()
  :precondition (and
    (evaluate comp189)
    (not (rebooted comp189))
    (running comp188)
  )
  :effect (and
    (not (evaluate comp189))
    (evaluate comp190)
    (all-on comp189)
  )
)
(:action evaluate-comp189-off-comp188
  :parameters ()
  :precondition (and
    (evaluate comp189)
    (not (rebooted comp189))
    (not (running comp188))
  )
  :effect (and
    (not (evaluate comp189))
    (evaluate comp190)
    (one-off comp189)
  )
)
(:action evaluate-comp190-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp190)
    (rebooted comp190)
  )
  :effect (and
    (not (evaluate comp190))
    (evaluate comp191)
  )
)
(:action evaluate-comp190-all-on
  :parameters ()
  :precondition (and
    (evaluate comp190)
    (not (rebooted comp190))
    (running comp189)
  )
  :effect (and
    (not (evaluate comp190))
    (evaluate comp191)
    (all-on comp190)
  )
)
(:action evaluate-comp190-off-comp189
  :parameters ()
  :precondition (and
    (evaluate comp190)
    (not (rebooted comp190))
    (not (running comp189))
  )
  :effect (and
    (not (evaluate comp190))
    (evaluate comp191)
    (one-off comp190)
  )
)
(:action evaluate-comp191-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp191)
    (rebooted comp191)
  )
  :effect (and
    (not (evaluate comp191))
    (evaluate comp192)
  )
)
(:action evaluate-comp191-all-on
  :parameters ()
  :precondition (and
    (evaluate comp191)
    (not (rebooted comp191))
    (running comp190)
  )
  :effect (and
    (not (evaluate comp191))
    (evaluate comp192)
    (all-on comp191)
  )
)
(:action evaluate-comp191-off-comp190
  :parameters ()
  :precondition (and
    (evaluate comp191)
    (not (rebooted comp191))
    (not (running comp190))
  )
  :effect (and
    (not (evaluate comp191))
    (evaluate comp192)
    (one-off comp191)
  )
)
(:action evaluate-comp192-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (rebooted comp192)
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
  )
)
(:action evaluate-comp192-all-on
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (not (rebooted comp192))
    (running comp191)
    (running comp866)
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
    (all-on comp192)
  )
)
(:action evaluate-comp192-off-comp191
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (not (rebooted comp192))
    (not (running comp191))
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
    (one-off comp192)
  )
)
(:action evaluate-comp192-off-comp866
  :parameters ()
  :precondition (and
    (evaluate comp192)
    (not (rebooted comp192))
    (not (running comp866))
  )
  :effect (and
    (not (evaluate comp192))
    (evaluate comp193)
    (one-off comp192)
  )
)
(:action evaluate-comp193-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp193)
    (rebooted comp193)
  )
  :effect (and
    (not (evaluate comp193))
    (evaluate comp194)
  )
)
(:action evaluate-comp193-all-on
  :parameters ()
  :precondition (and
    (evaluate comp193)
    (not (rebooted comp193))
    (running comp192)
  )
  :effect (and
    (not (evaluate comp193))
    (evaluate comp194)
    (all-on comp193)
  )
)
(:action evaluate-comp193-off-comp192
  :parameters ()
  :precondition (and
    (evaluate comp193)
    (not (rebooted comp193))
    (not (running comp192))
  )
  :effect (and
    (not (evaluate comp193))
    (evaluate comp194)
    (one-off comp193)
  )
)
(:action evaluate-comp194-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp194)
    (rebooted comp194)
  )
  :effect (and
    (not (evaluate comp194))
    (evaluate comp195)
  )
)
(:action evaluate-comp194-all-on
  :parameters ()
  :precondition (and
    (evaluate comp194)
    (not (rebooted comp194))
    (running comp193)
    (running comp497)
  )
  :effect (and
    (not (evaluate comp194))
    (evaluate comp195)
    (all-on comp194)
  )
)
(:action evaluate-comp194-off-comp193
  :parameters ()
  :precondition (and
    (evaluate comp194)
    (not (rebooted comp194))
    (not (running comp193))
  )
  :effect (and
    (not (evaluate comp194))
    (evaluate comp195)
    (one-off comp194)
  )
)
(:action evaluate-comp194-off-comp497
  :parameters ()
  :precondition (and
    (evaluate comp194)
    (not (rebooted comp194))
    (not (running comp497))
  )
  :effect (and
    (not (evaluate comp194))
    (evaluate comp195)
    (one-off comp194)
  )
)
(:action evaluate-comp195-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp195)
    (rebooted comp195)
  )
  :effect (and
    (not (evaluate comp195))
    (evaluate comp196)
  )
)
(:action evaluate-comp195-all-on
  :parameters ()
  :precondition (and
    (evaluate comp195)
    (not (rebooted comp195))
    (running comp68)
    (running comp194)
  )
  :effect (and
    (not (evaluate comp195))
    (evaluate comp196)
    (all-on comp195)
  )
)
(:action evaluate-comp195-off-comp68
  :parameters ()
  :precondition (and
    (evaluate comp195)
    (not (rebooted comp195))
    (not (running comp68))
  )
  :effect (and
    (not (evaluate comp195))
    (evaluate comp196)
    (one-off comp195)
  )
)
(:action evaluate-comp195-off-comp194
  :parameters ()
  :precondition (and
    (evaluate comp195)
    (not (rebooted comp195))
    (not (running comp194))
  )
  :effect (and
    (not (evaluate comp195))
    (evaluate comp196)
    (one-off comp195)
  )
)
(:action evaluate-comp196-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (rebooted comp196)
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
  )
)
(:action evaluate-comp196-all-on
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (not (rebooted comp196))
    (running comp195)
    (running comp647)
    (running comp910)
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
    (all-on comp196)
  )
)
(:action evaluate-comp196-off-comp195
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (not (rebooted comp196))
    (not (running comp195))
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
    (one-off comp196)
  )
)
(:action evaluate-comp196-off-comp647
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (not (rebooted comp196))
    (not (running comp647))
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
    (one-off comp196)
  )
)
(:action evaluate-comp196-off-comp910
  :parameters ()
  :precondition (and
    (evaluate comp196)
    (not (rebooted comp196))
    (not (running comp910))
  )
  :effect (and
    (not (evaluate comp196))
    (evaluate comp197)
    (one-off comp196)
  )
)
(:action evaluate-comp197-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp197)
    (rebooted comp197)
  )
  :effect (and
    (not (evaluate comp197))
    (evaluate comp198)
  )
)
(:action evaluate-comp197-all-on
  :parameters ()
  :precondition (and
    (evaluate comp197)
    (not (rebooted comp197))
    (running comp196)
  )
  :effect (and
    (not (evaluate comp197))
    (evaluate comp198)
    (all-on comp197)
  )
)
(:action evaluate-comp197-off-comp196
  :parameters ()
  :precondition (and
    (evaluate comp197)
    (not (rebooted comp197))
    (not (running comp196))
  )
  :effect (and
    (not (evaluate comp197))
    (evaluate comp198)
    (one-off comp197)
  )
)
(:action evaluate-comp198-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp198)
    (rebooted comp198)
  )
  :effect (and
    (not (evaluate comp198))
    (evaluate comp199)
  )
)
(:action evaluate-comp198-all-on
  :parameters ()
  :precondition (and
    (evaluate comp198)
    (not (rebooted comp198))
    (running comp197)
  )
  :effect (and
    (not (evaluate comp198))
    (evaluate comp199)
    (all-on comp198)
  )
)
(:action evaluate-comp198-off-comp197
  :parameters ()
  :precondition (and
    (evaluate comp198)
    (not (rebooted comp198))
    (not (running comp197))
  )
  :effect (and
    (not (evaluate comp198))
    (evaluate comp199)
    (one-off comp198)
  )
)
(:action evaluate-comp199-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (rebooted comp199)
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
  )
)
(:action evaluate-comp199-all-on
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (not (rebooted comp199))
    (running comp198)
    (running comp436)
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
    (all-on comp199)
  )
)
(:action evaluate-comp199-off-comp198
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (not (rebooted comp199))
    (not (running comp198))
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
    (one-off comp199)
  )
)
(:action evaluate-comp199-off-comp436
  :parameters ()
  :precondition (and
    (evaluate comp199)
    (not (rebooted comp199))
    (not (running comp436))
  )
  :effect (and
    (not (evaluate comp199))
    (evaluate comp200)
    (one-off comp199)
  )
)
(:action evaluate-comp200-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp200)
    (rebooted comp200)
  )
  :effect (and
    (not (evaluate comp200))
    (evaluate comp201)
  )
)
(:action evaluate-comp200-all-on
  :parameters ()
  :precondition (and
    (evaluate comp200)
    (not (rebooted comp200))
    (running comp199)
  )
  :effect (and
    (not (evaluate comp200))
    (evaluate comp201)
    (all-on comp200)
  )
)
(:action evaluate-comp200-off-comp199
  :parameters ()
  :precondition (and
    (evaluate comp200)
    (not (rebooted comp200))
    (not (running comp199))
  )
  :effect (and
    (not (evaluate comp200))
    (evaluate comp201)
    (one-off comp200)
  )
)
(:action evaluate-comp201-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp201)
    (rebooted comp201)
  )
  :effect (and
    (not (evaluate comp201))
    (evaluate comp202)
  )
)
(:action evaluate-comp201-all-on
  :parameters ()
  :precondition (and
    (evaluate comp201)
    (not (rebooted comp201))
    (running comp200)
  )
  :effect (and
    (not (evaluate comp201))
    (evaluate comp202)
    (all-on comp201)
  )
)
(:action evaluate-comp201-off-comp200
  :parameters ()
  :precondition (and
    (evaluate comp201)
    (not (rebooted comp201))
    (not (running comp200))
  )
  :effect (and
    (not (evaluate comp201))
    (evaluate comp202)
    (one-off comp201)
  )
)
(:action evaluate-comp202-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp202)
    (rebooted comp202)
  )
  :effect (and
    (not (evaluate comp202))
    (evaluate comp203)
  )
)
(:action evaluate-comp202-all-on
  :parameters ()
  :precondition (and
    (evaluate comp202)
    (not (rebooted comp202))
    (running comp201)
  )
  :effect (and
    (not (evaluate comp202))
    (evaluate comp203)
    (all-on comp202)
  )
)
(:action evaluate-comp202-off-comp201
  :parameters ()
  :precondition (and
    (evaluate comp202)
    (not (rebooted comp202))
    (not (running comp201))
  )
  :effect (and
    (not (evaluate comp202))
    (evaluate comp203)
    (one-off comp202)
  )
)
(:action evaluate-comp203-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp203)
    (rebooted comp203)
  )
  :effect (and
    (not (evaluate comp203))
    (evaluate comp204)
  )
)
(:action evaluate-comp203-all-on
  :parameters ()
  :precondition (and
    (evaluate comp203)
    (not (rebooted comp203))
    (running comp202)
  )
  :effect (and
    (not (evaluate comp203))
    (evaluate comp204)
    (all-on comp203)
  )
)
(:action evaluate-comp203-off-comp202
  :parameters ()
  :precondition (and
    (evaluate comp203)
    (not (rebooted comp203))
    (not (running comp202))
  )
  :effect (and
    (not (evaluate comp203))
    (evaluate comp204)
    (one-off comp203)
  )
)
(:action evaluate-comp204-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp204)
    (rebooted comp204)
  )
  :effect (and
    (not (evaluate comp204))
    (evaluate comp205)
  )
)
(:action evaluate-comp204-all-on
  :parameters ()
  :precondition (and
    (evaluate comp204)
    (not (rebooted comp204))
    (running comp203)
    (running comp484)
  )
  :effect (and
    (not (evaluate comp204))
    (evaluate comp205)
    (all-on comp204)
  )
)
(:action evaluate-comp204-off-comp203
  :parameters ()
  :precondition (and
    (evaluate comp204)
    (not (rebooted comp204))
    (not (running comp203))
  )
  :effect (and
    (not (evaluate comp204))
    (evaluate comp205)
    (one-off comp204)
  )
)
(:action evaluate-comp204-off-comp484
  :parameters ()
  :precondition (and
    (evaluate comp204)
    (not (rebooted comp204))
    (not (running comp484))
  )
  :effect (and
    (not (evaluate comp204))
    (evaluate comp205)
    (one-off comp204)
  )
)
(:action evaluate-comp205-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp205)
    (rebooted comp205)
  )
  :effect (and
    (not (evaluate comp205))
    (evaluate comp206)
  )
)
(:action evaluate-comp205-all-on
  :parameters ()
  :precondition (and
    (evaluate comp205)
    (not (rebooted comp205))
    (running comp204)
  )
  :effect (and
    (not (evaluate comp205))
    (evaluate comp206)
    (all-on comp205)
  )
)
(:action evaluate-comp205-off-comp204
  :parameters ()
  :precondition (and
    (evaluate comp205)
    (not (rebooted comp205))
    (not (running comp204))
  )
  :effect (and
    (not (evaluate comp205))
    (evaluate comp206)
    (one-off comp205)
  )
)
(:action evaluate-comp206-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp206)
    (rebooted comp206)
  )
  :effect (and
    (not (evaluate comp206))
    (evaluate comp207)
  )
)
(:action evaluate-comp206-all-on
  :parameters ()
  :precondition (and
    (evaluate comp206)
    (not (rebooted comp206))
    (running comp205)
    (running comp291)
  )
  :effect (and
    (not (evaluate comp206))
    (evaluate comp207)
    (all-on comp206)
  )
)
(:action evaluate-comp206-off-comp205
  :parameters ()
  :precondition (and
    (evaluate comp206)
    (not (rebooted comp206))
    (not (running comp205))
  )
  :effect (and
    (not (evaluate comp206))
    (evaluate comp207)
    (one-off comp206)
  )
)
(:action evaluate-comp206-off-comp291
  :parameters ()
  :precondition (and
    (evaluate comp206)
    (not (rebooted comp206))
    (not (running comp291))
  )
  :effect (and
    (not (evaluate comp206))
    (evaluate comp207)
    (one-off comp206)
  )
)
(:action evaluate-comp207-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp207)
    (rebooted comp207)
  )
  :effect (and
    (not (evaluate comp207))
    (evaluate comp208)
  )
)
(:action evaluate-comp207-all-on
  :parameters ()
  :precondition (and
    (evaluate comp207)
    (not (rebooted comp207))
    (running comp206)
  )
  :effect (and
    (not (evaluate comp207))
    (evaluate comp208)
    (all-on comp207)
  )
)
(:action evaluate-comp207-off-comp206
  :parameters ()
  :precondition (and
    (evaluate comp207)
    (not (rebooted comp207))
    (not (running comp206))
  )
  :effect (and
    (not (evaluate comp207))
    (evaluate comp208)
    (one-off comp207)
  )
)
(:action evaluate-comp208-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp208)
    (rebooted comp208)
  )
  :effect (and
    (not (evaluate comp208))
    (evaluate comp209)
  )
)
(:action evaluate-comp208-all-on
  :parameters ()
  :precondition (and
    (evaluate comp208)
    (not (rebooted comp208))
    (running comp207)
  )
  :effect (and
    (not (evaluate comp208))
    (evaluate comp209)
    (all-on comp208)
  )
)
(:action evaluate-comp208-off-comp207
  :parameters ()
  :precondition (and
    (evaluate comp208)
    (not (rebooted comp208))
    (not (running comp207))
  )
  :effect (and
    (not (evaluate comp208))
    (evaluate comp209)
    (one-off comp208)
  )
)
(:action evaluate-comp209-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (rebooted comp209)
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
  )
)
(:action evaluate-comp209-all-on
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (not (rebooted comp209))
    (running comp180)
    (running comp208)
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
    (all-on comp209)
  )
)
(:action evaluate-comp209-off-comp180
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (not (rebooted comp209))
    (not (running comp180))
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
    (one-off comp209)
  )
)
(:action evaluate-comp209-off-comp208
  :parameters ()
  :precondition (and
    (evaluate comp209)
    (not (rebooted comp209))
    (not (running comp208))
  )
  :effect (and
    (not (evaluate comp209))
    (evaluate comp210)
    (one-off comp209)
  )
)
(:action evaluate-comp210-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp210)
    (rebooted comp210)
  )
  :effect (and
    (not (evaluate comp210))
    (evaluate comp211)
  )
)
(:action evaluate-comp210-all-on
  :parameters ()
  :precondition (and
    (evaluate comp210)
    (not (rebooted comp210))
    (running comp209)
    (running comp452)
  )
  :effect (and
    (not (evaluate comp210))
    (evaluate comp211)
    (all-on comp210)
  )
)
(:action evaluate-comp210-off-comp209
  :parameters ()
  :precondition (and
    (evaluate comp210)
    (not (rebooted comp210))
    (not (running comp209))
  )
  :effect (and
    (not (evaluate comp210))
    (evaluate comp211)
    (one-off comp210)
  )
)
(:action evaluate-comp210-off-comp452
  :parameters ()
  :precondition (and
    (evaluate comp210)
    (not (rebooted comp210))
    (not (running comp452))
  )
  :effect (and
    (not (evaluate comp210))
    (evaluate comp211)
    (one-off comp210)
  )
)
(:action evaluate-comp211-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (rebooted comp211)
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
  )
)
(:action evaluate-comp211-all-on
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (running comp71)
    (running comp210)
    (running comp431)
    (running comp732)
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (all-on comp211)
  )
)
(:action evaluate-comp211-off-comp71
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (not (running comp71))
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (one-off comp211)
  )
)
(:action evaluate-comp211-off-comp210
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (not (running comp210))
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (one-off comp211)
  )
)
(:action evaluate-comp211-off-comp431
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (not (running comp431))
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (one-off comp211)
  )
)
(:action evaluate-comp211-off-comp732
  :parameters ()
  :precondition (and
    (evaluate comp211)
    (not (rebooted comp211))
    (not (running comp732))
  )
  :effect (and
    (not (evaluate comp211))
    (evaluate comp212)
    (one-off comp211)
  )
)
(:action evaluate-comp212-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (rebooted comp212)
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
  )
)
(:action evaluate-comp212-all-on
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (not (rebooted comp212))
    (running comp211)
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
    (all-on comp212)
  )
)
(:action evaluate-comp212-off-comp211
  :parameters ()
  :precondition (and
    (evaluate comp212)
    (not (rebooted comp212))
    (not (running comp211))
  )
  :effect (and
    (not (evaluate comp212))
    (evaluate comp213)
    (one-off comp212)
  )
)
(:action evaluate-comp213-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp213)
    (rebooted comp213)
  )
  :effect (and
    (not (evaluate comp213))
    (evaluate comp214)
  )
)
(:action evaluate-comp213-all-on
  :parameters ()
  :precondition (and
    (evaluate comp213)
    (not (rebooted comp213))
    (running comp212)
    (running comp337)
  )
  :effect (and
    (not (evaluate comp213))
    (evaluate comp214)
    (all-on comp213)
  )
)
(:action evaluate-comp213-off-comp212
  :parameters ()
  :precondition (and
    (evaluate comp213)
    (not (rebooted comp213))
    (not (running comp212))
  )
  :effect (and
    (not (evaluate comp213))
    (evaluate comp214)
    (one-off comp213)
  )
)
(:action evaluate-comp213-off-comp337
  :parameters ()
  :precondition (and
    (evaluate comp213)
    (not (rebooted comp213))
    (not (running comp337))
  )
  :effect (and
    (not (evaluate comp213))
    (evaluate comp214)
    (one-off comp213)
  )
)
(:action evaluate-comp214-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp214)
    (rebooted comp214)
  )
  :effect (and
    (not (evaluate comp214))
    (evaluate comp215)
  )
)
(:action evaluate-comp214-all-on
  :parameters ()
  :precondition (and
    (evaluate comp214)
    (not (rebooted comp214))
    (running comp213)
  )
  :effect (and
    (not (evaluate comp214))
    (evaluate comp215)
    (all-on comp214)
  )
)
(:action evaluate-comp214-off-comp213
  :parameters ()
  :precondition (and
    (evaluate comp214)
    (not (rebooted comp214))
    (not (running comp213))
  )
  :effect (and
    (not (evaluate comp214))
    (evaluate comp215)
    (one-off comp214)
  )
)
(:action evaluate-comp215-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (rebooted comp215)
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
  )
)
(:action evaluate-comp215-all-on
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (not (rebooted comp215))
    (running comp214)
    (running comp318)
    (running comp697)
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
    (all-on comp215)
  )
)
(:action evaluate-comp215-off-comp214
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (not (rebooted comp215))
    (not (running comp214))
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
    (one-off comp215)
  )
)
(:action evaluate-comp215-off-comp318
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (not (rebooted comp215))
    (not (running comp318))
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
    (one-off comp215)
  )
)
(:action evaluate-comp215-off-comp697
  :parameters ()
  :precondition (and
    (evaluate comp215)
    (not (rebooted comp215))
    (not (running comp697))
  )
  :effect (and
    (not (evaluate comp215))
    (evaluate comp216)
    (one-off comp215)
  )
)
(:action evaluate-comp216-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (rebooted comp216)
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
  )
)
(:action evaluate-comp216-all-on
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (not (rebooted comp216))
    (running comp215)
    (running comp820)
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
    (all-on comp216)
  )
)
(:action evaluate-comp216-off-comp215
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (not (rebooted comp216))
    (not (running comp215))
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
    (one-off comp216)
  )
)
(:action evaluate-comp216-off-comp820
  :parameters ()
  :precondition (and
    (evaluate comp216)
    (not (rebooted comp216))
    (not (running comp820))
  )
  :effect (and
    (not (evaluate comp216))
    (evaluate comp217)
    (one-off comp216)
  )
)
(:action evaluate-comp217-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp217)
    (rebooted comp217)
  )
  :effect (and
    (not (evaluate comp217))
    (evaluate comp218)
  )
)
(:action evaluate-comp217-all-on
  :parameters ()
  :precondition (and
    (evaluate comp217)
    (not (rebooted comp217))
    (running comp216)
  )
  :effect (and
    (not (evaluate comp217))
    (evaluate comp218)
    (all-on comp217)
  )
)
(:action evaluate-comp217-off-comp216
  :parameters ()
  :precondition (and
    (evaluate comp217)
    (not (rebooted comp217))
    (not (running comp216))
  )
  :effect (and
    (not (evaluate comp217))
    (evaluate comp218)
    (one-off comp217)
  )
)
(:action evaluate-comp218-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (rebooted comp218)
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
  )
)
(:action evaluate-comp218-all-on
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (not (rebooted comp218))
    (running comp217)
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
    (all-on comp218)
  )
)
(:action evaluate-comp218-off-comp217
  :parameters ()
  :precondition (and
    (evaluate comp218)
    (not (rebooted comp218))
    (not (running comp217))
  )
  :effect (and
    (not (evaluate comp218))
    (evaluate comp219)
    (one-off comp218)
  )
)
(:action evaluate-comp219-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp219)
    (rebooted comp219)
  )
  :effect (and
    (not (evaluate comp219))
    (evaluate comp220)
  )
)
(:action evaluate-comp219-all-on
  :parameters ()
  :precondition (and
    (evaluate comp219)
    (not (rebooted comp219))
    (running comp3)
    (running comp218)
  )
  :effect (and
    (not (evaluate comp219))
    (evaluate comp220)
    (all-on comp219)
  )
)
(:action evaluate-comp219-off-comp3
  :parameters ()
  :precondition (and
    (evaluate comp219)
    (not (rebooted comp219))
    (not (running comp3))
  )
  :effect (and
    (not (evaluate comp219))
    (evaluate comp220)
    (one-off comp219)
  )
)
(:action evaluate-comp219-off-comp218
  :parameters ()
  :precondition (and
    (evaluate comp219)
    (not (rebooted comp219))
    (not (running comp218))
  )
  :effect (and
    (not (evaluate comp219))
    (evaluate comp220)
    (one-off comp219)
  )
)
(:action evaluate-comp220-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp220)
    (rebooted comp220)
  )
  :effect (and
    (not (evaluate comp220))
    (evaluate comp221)
  )
)
(:action evaluate-comp220-all-on
  :parameters ()
  :precondition (and
    (evaluate comp220)
    (not (rebooted comp220))
    (running comp219)
  )
  :effect (and
    (not (evaluate comp220))
    (evaluate comp221)
    (all-on comp220)
  )
)
(:action evaluate-comp220-off-comp219
  :parameters ()
  :precondition (and
    (evaluate comp220)
    (not (rebooted comp220))
    (not (running comp219))
  )
  :effect (and
    (not (evaluate comp220))
    (evaluate comp221)
    (one-off comp220)
  )
)
(:action evaluate-comp221-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp221)
    (rebooted comp221)
  )
  :effect (and
    (not (evaluate comp221))
    (evaluate comp222)
  )
)
(:action evaluate-comp221-all-on
  :parameters ()
  :precondition (and
    (evaluate comp221)
    (not (rebooted comp221))
    (running comp220)
  )
  :effect (and
    (not (evaluate comp221))
    (evaluate comp222)
    (all-on comp221)
  )
)
(:action evaluate-comp221-off-comp220
  :parameters ()
  :precondition (and
    (evaluate comp221)
    (not (rebooted comp221))
    (not (running comp220))
  )
  :effect (and
    (not (evaluate comp221))
    (evaluate comp222)
    (one-off comp221)
  )
)
(:action evaluate-comp222-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp222)
    (rebooted comp222)
  )
  :effect (and
    (not (evaluate comp222))
    (evaluate comp223)
  )
)
(:action evaluate-comp222-all-on
  :parameters ()
  :precondition (and
    (evaluate comp222)
    (not (rebooted comp222))
    (running comp221)
    (running comp892)
  )
  :effect (and
    (not (evaluate comp222))
    (evaluate comp223)
    (all-on comp222)
  )
)
(:action evaluate-comp222-off-comp221
  :parameters ()
  :precondition (and
    (evaluate comp222)
    (not (rebooted comp222))
    (not (running comp221))
  )
  :effect (and
    (not (evaluate comp222))
    (evaluate comp223)
    (one-off comp222)
  )
)
(:action evaluate-comp222-off-comp892
  :parameters ()
  :precondition (and
    (evaluate comp222)
    (not (rebooted comp222))
    (not (running comp892))
  )
  :effect (and
    (not (evaluate comp222))
    (evaluate comp223)
    (one-off comp222)
  )
)
(:action evaluate-comp223-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (rebooted comp223)
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
  )
)
(:action evaluate-comp223-all-on
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (not (rebooted comp223))
    (running comp222)
    (running comp742)
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
    (all-on comp223)
  )
)
(:action evaluate-comp223-off-comp222
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (not (rebooted comp223))
    (not (running comp222))
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
    (one-off comp223)
  )
)
(:action evaluate-comp223-off-comp742
  :parameters ()
  :precondition (and
    (evaluate comp223)
    (not (rebooted comp223))
    (not (running comp742))
  )
  :effect (and
    (not (evaluate comp223))
    (evaluate comp224)
    (one-off comp223)
  )
)
(:action evaluate-comp224-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (rebooted comp224)
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
  )
)
(:action evaluate-comp224-all-on
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (not (rebooted comp224))
    (running comp223)
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
    (all-on comp224)
  )
)
(:action evaluate-comp224-off-comp223
  :parameters ()
  :precondition (and
    (evaluate comp224)
    (not (rebooted comp224))
    (not (running comp223))
  )
  :effect (and
    (not (evaluate comp224))
    (evaluate comp225)
    (one-off comp224)
  )
)
(:action evaluate-comp225-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (rebooted comp225)
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
  )
)
(:action evaluate-comp225-all-on
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (not (rebooted comp225))
    (running comp224)
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
    (all-on comp225)
  )
)
(:action evaluate-comp225-off-comp224
  :parameters ()
  :precondition (and
    (evaluate comp225)
    (not (rebooted comp225))
    (not (running comp224))
  )
  :effect (and
    (not (evaluate comp225))
    (evaluate comp226)
    (one-off comp225)
  )
)
(:action evaluate-comp226-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp226)
    (rebooted comp226)
  )
  :effect (and
    (not (evaluate comp226))
    (evaluate comp227)
  )
)
(:action evaluate-comp226-all-on
  :parameters ()
  :precondition (and
    (evaluate comp226)
    (not (rebooted comp226))
    (running comp225)
  )
  :effect (and
    (not (evaluate comp226))
    (evaluate comp227)
    (all-on comp226)
  )
)
(:action evaluate-comp226-off-comp225
  :parameters ()
  :precondition (and
    (evaluate comp226)
    (not (rebooted comp226))
    (not (running comp225))
  )
  :effect (and
    (not (evaluate comp226))
    (evaluate comp227)
    (one-off comp226)
  )
)
(:action evaluate-comp227-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp227)
    (rebooted comp227)
  )
  :effect (and
    (not (evaluate comp227))
    (evaluate comp228)
  )
)
(:action evaluate-comp227-all-on
  :parameters ()
  :precondition (and
    (evaluate comp227)
    (not (rebooted comp227))
    (running comp226)
  )
  :effect (and
    (not (evaluate comp227))
    (evaluate comp228)
    (all-on comp227)
  )
)
(:action evaluate-comp227-off-comp226
  :parameters ()
  :precondition (and
    (evaluate comp227)
    (not (rebooted comp227))
    (not (running comp226))
  )
  :effect (and
    (not (evaluate comp227))
    (evaluate comp228)
    (one-off comp227)
  )
)
(:action evaluate-comp228-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp228)
    (rebooted comp228)
  )
  :effect (and
    (not (evaluate comp228))
    (evaluate comp229)
  )
)
(:action evaluate-comp228-all-on
  :parameters ()
  :precondition (and
    (evaluate comp228)
    (not (rebooted comp228))
    (running comp227)
  )
  :effect (and
    (not (evaluate comp228))
    (evaluate comp229)
    (all-on comp228)
  )
)
(:action evaluate-comp228-off-comp227
  :parameters ()
  :precondition (and
    (evaluate comp228)
    (not (rebooted comp228))
    (not (running comp227))
  )
  :effect (and
    (not (evaluate comp228))
    (evaluate comp229)
    (one-off comp228)
  )
)
(:action evaluate-comp229-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (rebooted comp229)
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
  )
)
(:action evaluate-comp229-all-on
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (not (rebooted comp229))
    (running comp228)
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
    (all-on comp229)
  )
)
(:action evaluate-comp229-off-comp228
  :parameters ()
  :precondition (and
    (evaluate comp229)
    (not (rebooted comp229))
    (not (running comp228))
  )
  :effect (and
    (not (evaluate comp229))
    (evaluate comp230)
    (one-off comp229)
  )
)
(:action evaluate-comp230-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp230)
    (rebooted comp230)
  )
  :effect (and
    (not (evaluate comp230))
    (evaluate comp231)
  )
)
(:action evaluate-comp230-all-on
  :parameters ()
  :precondition (and
    (evaluate comp230)
    (not (rebooted comp230))
    (running comp229)
    (running comp483)
  )
  :effect (and
    (not (evaluate comp230))
    (evaluate comp231)
    (all-on comp230)
  )
)
(:action evaluate-comp230-off-comp229
  :parameters ()
  :precondition (and
    (evaluate comp230)
    (not (rebooted comp230))
    (not (running comp229))
  )
  :effect (and
    (not (evaluate comp230))
    (evaluate comp231)
    (one-off comp230)
  )
)
(:action evaluate-comp230-off-comp483
  :parameters ()
  :precondition (and
    (evaluate comp230)
    (not (rebooted comp230))
    (not (running comp483))
  )
  :effect (and
    (not (evaluate comp230))
    (evaluate comp231)
    (one-off comp230)
  )
)
(:action evaluate-comp231-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (rebooted comp231)
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
  )
)
(:action evaluate-comp231-all-on
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (not (rebooted comp231))
    (running comp230)
    (running comp612)
    (running comp804)
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
    (all-on comp231)
  )
)
(:action evaluate-comp231-off-comp230
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (not (rebooted comp231))
    (not (running comp230))
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
    (one-off comp231)
  )
)
(:action evaluate-comp231-off-comp612
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (not (rebooted comp231))
    (not (running comp612))
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
    (one-off comp231)
  )
)
(:action evaluate-comp231-off-comp804
  :parameters ()
  :precondition (and
    (evaluate comp231)
    (not (rebooted comp231))
    (not (running comp804))
  )
  :effect (and
    (not (evaluate comp231))
    (evaluate comp232)
    (one-off comp231)
  )
)
(:action evaluate-comp232-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (rebooted comp232)
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
  )
)
(:action evaluate-comp232-all-on
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (running comp231)
    (running comp764)
    (running comp773)
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (all-on comp232)
  )
)
(:action evaluate-comp232-off-comp231
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (not (running comp231))
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (one-off comp232)
  )
)
(:action evaluate-comp232-off-comp764
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (not (running comp764))
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (one-off comp232)
  )
)
(:action evaluate-comp232-off-comp773
  :parameters ()
  :precondition (and
    (evaluate comp232)
    (not (rebooted comp232))
    (not (running comp773))
  )
  :effect (and
    (not (evaluate comp232))
    (evaluate comp233)
    (one-off comp232)
  )
)
(:action evaluate-comp233-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (rebooted comp233)
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
  )
)
(:action evaluate-comp233-all-on
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (not (rebooted comp233))
    (running comp232)
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
    (all-on comp233)
  )
)
(:action evaluate-comp233-off-comp232
  :parameters ()
  :precondition (and
    (evaluate comp233)
    (not (rebooted comp233))
    (not (running comp232))
  )
  :effect (and
    (not (evaluate comp233))
    (evaluate comp234)
    (one-off comp233)
  )
)
(:action evaluate-comp234-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp234)
    (rebooted comp234)
  )
  :effect (and
    (not (evaluate comp234))
    (evaluate comp235)
  )
)
(:action evaluate-comp234-all-on
  :parameters ()
  :precondition (and
    (evaluate comp234)
    (not (rebooted comp234))
    (running comp233)
  )
  :effect (and
    (not (evaluate comp234))
    (evaluate comp235)
    (all-on comp234)
  )
)
(:action evaluate-comp234-off-comp233
  :parameters ()
  :precondition (and
    (evaluate comp234)
    (not (rebooted comp234))
    (not (running comp233))
  )
  :effect (and
    (not (evaluate comp234))
    (evaluate comp235)
    (one-off comp234)
  )
)
(:action evaluate-comp235-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (rebooted comp235)
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
  )
)
(:action evaluate-comp235-all-on
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (not (rebooted comp235))
    (running comp234)
    (running comp445)
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
    (all-on comp235)
  )
)
(:action evaluate-comp235-off-comp234
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (not (rebooted comp235))
    (not (running comp234))
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
    (one-off comp235)
  )
)
(:action evaluate-comp235-off-comp445
  :parameters ()
  :precondition (and
    (evaluate comp235)
    (not (rebooted comp235))
    (not (running comp445))
  )
  :effect (and
    (not (evaluate comp235))
    (evaluate comp236)
    (one-off comp235)
  )
)
(:action evaluate-comp236-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (rebooted comp236)
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
  )
)
(:action evaluate-comp236-all-on
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (not (rebooted comp236))
    (running comp216)
    (running comp235)
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
    (all-on comp236)
  )
)
(:action evaluate-comp236-off-comp216
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (not (rebooted comp236))
    (not (running comp216))
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
    (one-off comp236)
  )
)
(:action evaluate-comp236-off-comp235
  :parameters ()
  :precondition (and
    (evaluate comp236)
    (not (rebooted comp236))
    (not (running comp235))
  )
  :effect (and
    (not (evaluate comp236))
    (evaluate comp237)
    (one-off comp236)
  )
)
(:action evaluate-comp237-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp237)
    (rebooted comp237)
  )
  :effect (and
    (not (evaluate comp237))
    (evaluate comp238)
  )
)
(:action evaluate-comp237-all-on
  :parameters ()
  :precondition (and
    (evaluate comp237)
    (not (rebooted comp237))
    (running comp236)
  )
  :effect (and
    (not (evaluate comp237))
    (evaluate comp238)
    (all-on comp237)
  )
)
(:action evaluate-comp237-off-comp236
  :parameters ()
  :precondition (and
    (evaluate comp237)
    (not (rebooted comp237))
    (not (running comp236))
  )
  :effect (and
    (not (evaluate comp237))
    (evaluate comp238)
    (one-off comp237)
  )
)
(:action evaluate-comp238-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp238)
    (rebooted comp238)
  )
  :effect (and
    (not (evaluate comp238))
    (evaluate comp239)
  )
)
(:action evaluate-comp238-all-on
  :parameters ()
  :precondition (and
    (evaluate comp238)
    (not (rebooted comp238))
    (running comp237)
    (running comp701)
  )
  :effect (and
    (not (evaluate comp238))
    (evaluate comp239)
    (all-on comp238)
  )
)
(:action evaluate-comp238-off-comp237
  :parameters ()
  :precondition (and
    (evaluate comp238)
    (not (rebooted comp238))
    (not (running comp237))
  )
  :effect (and
    (not (evaluate comp238))
    (evaluate comp239)
    (one-off comp238)
  )
)
(:action evaluate-comp238-off-comp701
  :parameters ()
  :precondition (and
    (evaluate comp238)
    (not (rebooted comp238))
    (not (running comp701))
  )
  :effect (and
    (not (evaluate comp238))
    (evaluate comp239)
    (one-off comp238)
  )
)
(:action evaluate-comp239-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp239)
    (rebooted comp239)
  )
  :effect (and
    (not (evaluate comp239))
    (evaluate comp240)
  )
)
(:action evaluate-comp239-all-on
  :parameters ()
  :precondition (and
    (evaluate comp239)
    (not (rebooted comp239))
    (running comp238)
    (running comp916)
  )
  :effect (and
    (not (evaluate comp239))
    (evaluate comp240)
    (all-on comp239)
  )
)
(:action evaluate-comp239-off-comp238
  :parameters ()
  :precondition (and
    (evaluate comp239)
    (not (rebooted comp239))
    (not (running comp238))
  )
  :effect (and
    (not (evaluate comp239))
    (evaluate comp240)
    (one-off comp239)
  )
)
(:action evaluate-comp239-off-comp916
  :parameters ()
  :precondition (and
    (evaluate comp239)
    (not (rebooted comp239))
    (not (running comp916))
  )
  :effect (and
    (not (evaluate comp239))
    (evaluate comp240)
    (one-off comp239)
  )
)
(:action evaluate-comp240-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp240)
    (rebooted comp240)
  )
  :effect (and
    (not (evaluate comp240))
    (evaluate comp241)
  )
)
(:action evaluate-comp240-all-on
  :parameters ()
  :precondition (and
    (evaluate comp240)
    (not (rebooted comp240))
    (running comp239)
    (running comp833)
  )
  :effect (and
    (not (evaluate comp240))
    (evaluate comp241)
    (all-on comp240)
  )
)
(:action evaluate-comp240-off-comp239
  :parameters ()
  :precondition (and
    (evaluate comp240)
    (not (rebooted comp240))
    (not (running comp239))
  )
  :effect (and
    (not (evaluate comp240))
    (evaluate comp241)
    (one-off comp240)
  )
)
(:action evaluate-comp240-off-comp833
  :parameters ()
  :precondition (and
    (evaluate comp240)
    (not (rebooted comp240))
    (not (running comp833))
  )
  :effect (and
    (not (evaluate comp240))
    (evaluate comp241)
    (one-off comp240)
  )
)
(:action evaluate-comp241-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp241)
    (rebooted comp241)
  )
  :effect (and
    (not (evaluate comp241))
    (evaluate comp242)
  )
)
(:action evaluate-comp241-all-on
  :parameters ()
  :precondition (and
    (evaluate comp241)
    (not (rebooted comp241))
    (running comp240)
    (running comp943)
  )
  :effect (and
    (not (evaluate comp241))
    (evaluate comp242)
    (all-on comp241)
  )
)
(:action evaluate-comp241-off-comp240
  :parameters ()
  :precondition (and
    (evaluate comp241)
    (not (rebooted comp241))
    (not (running comp240))
  )
  :effect (and
    (not (evaluate comp241))
    (evaluate comp242)
    (one-off comp241)
  )
)
(:action evaluate-comp241-off-comp943
  :parameters ()
  :precondition (and
    (evaluate comp241)
    (not (rebooted comp241))
    (not (running comp943))
  )
  :effect (and
    (not (evaluate comp241))
    (evaluate comp242)
    (one-off comp241)
  )
)
(:action evaluate-comp242-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp242)
    (rebooted comp242)
  )
  :effect (and
    (not (evaluate comp242))
    (evaluate comp243)
  )
)
(:action evaluate-comp242-all-on
  :parameters ()
  :precondition (and
    (evaluate comp242)
    (not (rebooted comp242))
    (running comp241)
  )
  :effect (and
    (not (evaluate comp242))
    (evaluate comp243)
    (all-on comp242)
  )
)
(:action evaluate-comp242-off-comp241
  :parameters ()
  :precondition (and
    (evaluate comp242)
    (not (rebooted comp242))
    (not (running comp241))
  )
  :effect (and
    (not (evaluate comp242))
    (evaluate comp243)
    (one-off comp242)
  )
)
(:action evaluate-comp243-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp243)
    (rebooted comp243)
  )
  :effect (and
    (not (evaluate comp243))
    (evaluate comp244)
  )
)
(:action evaluate-comp243-all-on
  :parameters ()
  :precondition (and
    (evaluate comp243)
    (not (rebooted comp243))
    (running comp242)
  )
  :effect (and
    (not (evaluate comp243))
    (evaluate comp244)
    (all-on comp243)
  )
)
(:action evaluate-comp243-off-comp242
  :parameters ()
  :precondition (and
    (evaluate comp243)
    (not (rebooted comp243))
    (not (running comp242))
  )
  :effect (and
    (not (evaluate comp243))
    (evaluate comp244)
    (one-off comp243)
  )
)
(:action evaluate-comp244-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (rebooted comp244)
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
  )
)
(:action evaluate-comp244-all-on
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (not (rebooted comp244))
    (running comp243)
    (running comp265)
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
    (all-on comp244)
  )
)
(:action evaluate-comp244-off-comp243
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (not (rebooted comp244))
    (not (running comp243))
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
    (one-off comp244)
  )
)
(:action evaluate-comp244-off-comp265
  :parameters ()
  :precondition (and
    (evaluate comp244)
    (not (rebooted comp244))
    (not (running comp265))
  )
  :effect (and
    (not (evaluate comp244))
    (evaluate comp245)
    (one-off comp244)
  )
)
(:action evaluate-comp245-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp245)
    (rebooted comp245)
  )
  :effect (and
    (not (evaluate comp245))
    (evaluate comp246)
  )
)
(:action evaluate-comp245-all-on
  :parameters ()
  :precondition (and
    (evaluate comp245)
    (not (rebooted comp245))
    (running comp244)
    (running comp337)
  )
  :effect (and
    (not (evaluate comp245))
    (evaluate comp246)
    (all-on comp245)
  )
)
(:action evaluate-comp245-off-comp244
  :parameters ()
  :precondition (and
    (evaluate comp245)
    (not (rebooted comp245))
    (not (running comp244))
  )
  :effect (and
    (not (evaluate comp245))
    (evaluate comp246)
    (one-off comp245)
  )
)
(:action evaluate-comp245-off-comp337
  :parameters ()
  :precondition (and
    (evaluate comp245)
    (not (rebooted comp245))
    (not (running comp337))
  )
  :effect (and
    (not (evaluate comp245))
    (evaluate comp246)
    (one-off comp245)
  )
)
(:action evaluate-comp246-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp246)
    (rebooted comp246)
  )
  :effect (and
    (not (evaluate comp246))
    (evaluate comp247)
  )
)
(:action evaluate-comp246-all-on
  :parameters ()
  :precondition (and
    (evaluate comp246)
    (not (rebooted comp246))
    (running comp245)
  )
  :effect (and
    (not (evaluate comp246))
    (evaluate comp247)
    (all-on comp246)
  )
)
(:action evaluate-comp246-off-comp245
  :parameters ()
  :precondition (and
    (evaluate comp246)
    (not (rebooted comp246))
    (not (running comp245))
  )
  :effect (and
    (not (evaluate comp246))
    (evaluate comp247)
    (one-off comp246)
  )
)
(:action evaluate-comp247-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp247)
    (rebooted comp247)
  )
  :effect (and
    (not (evaluate comp247))
    (evaluate comp248)
  )
)
(:action evaluate-comp247-all-on
  :parameters ()
  :precondition (and
    (evaluate comp247)
    (not (rebooted comp247))
    (running comp246)
    (running comp644)
  )
  :effect (and
    (not (evaluate comp247))
    (evaluate comp248)
    (all-on comp247)
  )
)
(:action evaluate-comp247-off-comp246
  :parameters ()
  :precondition (and
    (evaluate comp247)
    (not (rebooted comp247))
    (not (running comp246))
  )
  :effect (and
    (not (evaluate comp247))
    (evaluate comp248)
    (one-off comp247)
  )
)
(:action evaluate-comp247-off-comp644
  :parameters ()
  :precondition (and
    (evaluate comp247)
    (not (rebooted comp247))
    (not (running comp644))
  )
  :effect (and
    (not (evaluate comp247))
    (evaluate comp248)
    (one-off comp247)
  )
)
(:action evaluate-comp248-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (rebooted comp248)
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
  )
)
(:action evaluate-comp248-all-on
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (not (rebooted comp248))
    (running comp247)
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
    (all-on comp248)
  )
)
(:action evaluate-comp248-off-comp247
  :parameters ()
  :precondition (and
    (evaluate comp248)
    (not (rebooted comp248))
    (not (running comp247))
  )
  :effect (and
    (not (evaluate comp248))
    (evaluate comp249)
    (one-off comp248)
  )
)
(:action evaluate-comp249-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (rebooted comp249)
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
  )
)
(:action evaluate-comp249-all-on
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (not (rebooted comp249))
    (running comp248)
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
    (all-on comp249)
  )
)
(:action evaluate-comp249-off-comp248
  :parameters ()
  :precondition (and
    (evaluate comp249)
    (not (rebooted comp249))
    (not (running comp248))
  )
  :effect (and
    (not (evaluate comp249))
    (evaluate comp250)
    (one-off comp249)
  )
)
(:action evaluate-comp250-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (rebooted comp250)
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
  )
)
(:action evaluate-comp250-all-on
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (not (rebooted comp250))
    (running comp249)
    (running comp413)
    (running comp900)
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
    (all-on comp250)
  )
)
(:action evaluate-comp250-off-comp249
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (not (rebooted comp250))
    (not (running comp249))
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
    (one-off comp250)
  )
)
(:action evaluate-comp250-off-comp413
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (not (rebooted comp250))
    (not (running comp413))
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
    (one-off comp250)
  )
)
(:action evaluate-comp250-off-comp900
  :parameters ()
  :precondition (and
    (evaluate comp250)
    (not (rebooted comp250))
    (not (running comp900))
  )
  :effect (and
    (not (evaluate comp250))
    (evaluate comp251)
    (one-off comp250)
  )
)
(:action evaluate-comp251-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (rebooted comp251)
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
  )
)
(:action evaluate-comp251-all-on
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (not (rebooted comp251))
    (running comp250)
    (running comp828)
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
    (all-on comp251)
  )
)
(:action evaluate-comp251-off-comp250
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (not (rebooted comp251))
    (not (running comp250))
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
    (one-off comp251)
  )
)
(:action evaluate-comp251-off-comp828
  :parameters ()
  :precondition (and
    (evaluate comp251)
    (not (rebooted comp251))
    (not (running comp828))
  )
  :effect (and
    (not (evaluate comp251))
    (evaluate comp252)
    (one-off comp251)
  )
)
(:action evaluate-comp252-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp252)
    (rebooted comp252)
  )
  :effect (and
    (not (evaluate comp252))
    (evaluate comp253)
  )
)
(:action evaluate-comp252-all-on
  :parameters ()
  :precondition (and
    (evaluate comp252)
    (not (rebooted comp252))
    (running comp251)
    (running comp681)
  )
  :effect (and
    (not (evaluate comp252))
    (evaluate comp253)
    (all-on comp252)
  )
)
(:action evaluate-comp252-off-comp251
  :parameters ()
  :precondition (and
    (evaluate comp252)
    (not (rebooted comp252))
    (not (running comp251))
  )
  :effect (and
    (not (evaluate comp252))
    (evaluate comp253)
    (one-off comp252)
  )
)
(:action evaluate-comp252-off-comp681
  :parameters ()
  :precondition (and
    (evaluate comp252)
    (not (rebooted comp252))
    (not (running comp681))
  )
  :effect (and
    (not (evaluate comp252))
    (evaluate comp253)
    (one-off comp252)
  )
)
(:action evaluate-comp253-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp253)
    (rebooted comp253)
  )
  :effect (and
    (not (evaluate comp253))
    (evaluate comp254)
  )
)
(:action evaluate-comp253-all-on
  :parameters ()
  :precondition (and
    (evaluate comp253)
    (not (rebooted comp253))
    (running comp252)
  )
  :effect (and
    (not (evaluate comp253))
    (evaluate comp254)
    (all-on comp253)
  )
)
(:action evaluate-comp253-off-comp252
  :parameters ()
  :precondition (and
    (evaluate comp253)
    (not (rebooted comp253))
    (not (running comp252))
  )
  :effect (and
    (not (evaluate comp253))
    (evaluate comp254)
    (one-off comp253)
  )
)
(:action evaluate-comp254-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp254)
    (rebooted comp254)
  )
  :effect (and
    (not (evaluate comp254))
    (evaluate comp255)
  )
)
(:action evaluate-comp254-all-on
  :parameters ()
  :precondition (and
    (evaluate comp254)
    (not (rebooted comp254))
    (running comp253)
    (running comp796)
  )
  :effect (and
    (not (evaluate comp254))
    (evaluate comp255)
    (all-on comp254)
  )
)
(:action evaluate-comp254-off-comp253
  :parameters ()
  :precondition (and
    (evaluate comp254)
    (not (rebooted comp254))
    (not (running comp253))
  )
  :effect (and
    (not (evaluate comp254))
    (evaluate comp255)
    (one-off comp254)
  )
)
(:action evaluate-comp254-off-comp796
  :parameters ()
  :precondition (and
    (evaluate comp254)
    (not (rebooted comp254))
    (not (running comp796))
  )
  :effect (and
    (not (evaluate comp254))
    (evaluate comp255)
    (one-off comp254)
  )
)
(:action evaluate-comp255-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (rebooted comp255)
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
  )
)
(:action evaluate-comp255-all-on
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (not (rebooted comp255))
    (running comp20)
    (running comp254)
    (running comp719)
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
    (all-on comp255)
  )
)
(:action evaluate-comp255-off-comp20
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (not (rebooted comp255))
    (not (running comp20))
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
    (one-off comp255)
  )
)
(:action evaluate-comp255-off-comp254
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (not (rebooted comp255))
    (not (running comp254))
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
    (one-off comp255)
  )
)
(:action evaluate-comp255-off-comp719
  :parameters ()
  :precondition (and
    (evaluate comp255)
    (not (rebooted comp255))
    (not (running comp719))
  )
  :effect (and
    (not (evaluate comp255))
    (evaluate comp256)
    (one-off comp255)
  )
)
(:action evaluate-comp256-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp256)
    (rebooted comp256)
  )
  :effect (and
    (not (evaluate comp256))
    (evaluate comp257)
  )
)
(:action evaluate-comp256-all-on
  :parameters ()
  :precondition (and
    (evaluate comp256)
    (not (rebooted comp256))
    (running comp255)
    (running comp317)
  )
  :effect (and
    (not (evaluate comp256))
    (evaluate comp257)
    (all-on comp256)
  )
)
(:action evaluate-comp256-off-comp255
  :parameters ()
  :precondition (and
    (evaluate comp256)
    (not (rebooted comp256))
    (not (running comp255))
  )
  :effect (and
    (not (evaluate comp256))
    (evaluate comp257)
    (one-off comp256)
  )
)
(:action evaluate-comp256-off-comp317
  :parameters ()
  :precondition (and
    (evaluate comp256)
    (not (rebooted comp256))
    (not (running comp317))
  )
  :effect (and
    (not (evaluate comp256))
    (evaluate comp257)
    (one-off comp256)
  )
)
(:action evaluate-comp257-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp257)
    (rebooted comp257)
  )
  :effect (and
    (not (evaluate comp257))
    (evaluate comp258)
  )
)
(:action evaluate-comp257-all-on
  :parameters ()
  :precondition (and
    (evaluate comp257)
    (not (rebooted comp257))
    (running comp256)
  )
  :effect (and
    (not (evaluate comp257))
    (evaluate comp258)
    (all-on comp257)
  )
)
(:action evaluate-comp257-off-comp256
  :parameters ()
  :precondition (and
    (evaluate comp257)
    (not (rebooted comp257))
    (not (running comp256))
  )
  :effect (and
    (not (evaluate comp257))
    (evaluate comp258)
    (one-off comp257)
  )
)
(:action evaluate-comp258-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (rebooted comp258)
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
  )
)
(:action evaluate-comp258-all-on
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (not (rebooted comp258))
    (running comp257)
    (running comp509)
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
    (all-on comp258)
  )
)
(:action evaluate-comp258-off-comp257
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (not (rebooted comp258))
    (not (running comp257))
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
    (one-off comp258)
  )
)
(:action evaluate-comp258-off-comp509
  :parameters ()
  :precondition (and
    (evaluate comp258)
    (not (rebooted comp258))
    (not (running comp509))
  )
  :effect (and
    (not (evaluate comp258))
    (evaluate comp259)
    (one-off comp258)
  )
)
(:action evaluate-comp259-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (rebooted comp259)
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
  )
)
(:action evaluate-comp259-all-on
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (not (rebooted comp259))
    (running comp107)
    (running comp258)
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
    (all-on comp259)
  )
)
(:action evaluate-comp259-off-comp107
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (not (rebooted comp259))
    (not (running comp107))
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
    (one-off comp259)
  )
)
(:action evaluate-comp259-off-comp258
  :parameters ()
  :precondition (and
    (evaluate comp259)
    (not (rebooted comp259))
    (not (running comp258))
  )
  :effect (and
    (not (evaluate comp259))
    (evaluate comp260)
    (one-off comp259)
  )
)
(:action evaluate-comp260-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (rebooted comp260)
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
  )
)
(:action evaluate-comp260-all-on
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (not (rebooted comp260))
    (running comp259)
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
    (all-on comp260)
  )
)
(:action evaluate-comp260-off-comp259
  :parameters ()
  :precondition (and
    (evaluate comp260)
    (not (rebooted comp260))
    (not (running comp259))
  )
  :effect (and
    (not (evaluate comp260))
    (evaluate comp261)
    (one-off comp260)
  )
)
(:action evaluate-comp261-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp261)
    (rebooted comp261)
  )
  :effect (and
    (not (evaluate comp261))
    (evaluate comp262)
  )
)
(:action evaluate-comp261-all-on
  :parameters ()
  :precondition (and
    (evaluate comp261)
    (not (rebooted comp261))
    (running comp260)
  )
  :effect (and
    (not (evaluate comp261))
    (evaluate comp262)
    (all-on comp261)
  )
)
(:action evaluate-comp261-off-comp260
  :parameters ()
  :precondition (and
    (evaluate comp261)
    (not (rebooted comp261))
    (not (running comp260))
  )
  :effect (and
    (not (evaluate comp261))
    (evaluate comp262)
    (one-off comp261)
  )
)
(:action evaluate-comp262-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp262)
    (rebooted comp262)
  )
  :effect (and
    (not (evaluate comp262))
    (evaluate comp263)
  )
)
(:action evaluate-comp262-all-on
  :parameters ()
  :precondition (and
    (evaluate comp262)
    (not (rebooted comp262))
    (running comp261)
  )
  :effect (and
    (not (evaluate comp262))
    (evaluate comp263)
    (all-on comp262)
  )
)
(:action evaluate-comp262-off-comp261
  :parameters ()
  :precondition (and
    (evaluate comp262)
    (not (rebooted comp262))
    (not (running comp261))
  )
  :effect (and
    (not (evaluate comp262))
    (evaluate comp263)
    (one-off comp262)
  )
)
(:action evaluate-comp263-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp263)
    (rebooted comp263)
  )
  :effect (and
    (not (evaluate comp263))
    (evaluate comp264)
  )
)
(:action evaluate-comp263-all-on
  :parameters ()
  :precondition (and
    (evaluate comp263)
    (not (rebooted comp263))
    (running comp262)
  )
  :effect (and
    (not (evaluate comp263))
    (evaluate comp264)
    (all-on comp263)
  )
)
(:action evaluate-comp263-off-comp262
  :parameters ()
  :precondition (and
    (evaluate comp263)
    (not (rebooted comp263))
    (not (running comp262))
  )
  :effect (and
    (not (evaluate comp263))
    (evaluate comp264)
    (one-off comp263)
  )
)
(:action evaluate-comp264-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp264)
    (rebooted comp264)
  )
  :effect (and
    (not (evaluate comp264))
    (evaluate comp265)
  )
)
(:action evaluate-comp264-all-on
  :parameters ()
  :precondition (and
    (evaluate comp264)
    (not (rebooted comp264))
    (running comp263)
  )
  :effect (and
    (not (evaluate comp264))
    (evaluate comp265)
    (all-on comp264)
  )
)
(:action evaluate-comp264-off-comp263
  :parameters ()
  :precondition (and
    (evaluate comp264)
    (not (rebooted comp264))
    (not (running comp263))
  )
  :effect (and
    (not (evaluate comp264))
    (evaluate comp265)
    (one-off comp264)
  )
)
(:action evaluate-comp265-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp265)
    (rebooted comp265)
  )
  :effect (and
    (not (evaluate comp265))
    (evaluate comp266)
  )
)
(:action evaluate-comp265-all-on
  :parameters ()
  :precondition (and
    (evaluate comp265)
    (not (rebooted comp265))
    (running comp264)
    (running comp576)
  )
  :effect (and
    (not (evaluate comp265))
    (evaluate comp266)
    (all-on comp265)
  )
)
(:action evaluate-comp265-off-comp264
  :parameters ()
  :precondition (and
    (evaluate comp265)
    (not (rebooted comp265))
    (not (running comp264))
  )
  :effect (and
    (not (evaluate comp265))
    (evaluate comp266)
    (one-off comp265)
  )
)
(:action evaluate-comp265-off-comp576
  :parameters ()
  :precondition (and
    (evaluate comp265)
    (not (rebooted comp265))
    (not (running comp576))
  )
  :effect (and
    (not (evaluate comp265))
    (evaluate comp266)
    (one-off comp265)
  )
)
(:action evaluate-comp266-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp266)
    (rebooted comp266)
  )
  :effect (and
    (not (evaluate comp266))
    (evaluate comp267)
  )
)
(:action evaluate-comp266-all-on
  :parameters ()
  :precondition (and
    (evaluate comp266)
    (not (rebooted comp266))
    (running comp265)
  )
  :effect (and
    (not (evaluate comp266))
    (evaluate comp267)
    (all-on comp266)
  )
)
(:action evaluate-comp266-off-comp265
  :parameters ()
  :precondition (and
    (evaluate comp266)
    (not (rebooted comp266))
    (not (running comp265))
  )
  :effect (and
    (not (evaluate comp266))
    (evaluate comp267)
    (one-off comp266)
  )
)
(:action evaluate-comp267-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp267)
    (rebooted comp267)
  )
  :effect (and
    (not (evaluate comp267))
    (evaluate comp268)
  )
)
(:action evaluate-comp267-all-on
  :parameters ()
  :precondition (and
    (evaluate comp267)
    (not (rebooted comp267))
    (running comp175)
    (running comp266)
  )
  :effect (and
    (not (evaluate comp267))
    (evaluate comp268)
    (all-on comp267)
  )
)
(:action evaluate-comp267-off-comp175
  :parameters ()
  :precondition (and
    (evaluate comp267)
    (not (rebooted comp267))
    (not (running comp175))
  )
  :effect (and
    (not (evaluate comp267))
    (evaluate comp268)
    (one-off comp267)
  )
)
(:action evaluate-comp267-off-comp266
  :parameters ()
  :precondition (and
    (evaluate comp267)
    (not (rebooted comp267))
    (not (running comp266))
  )
  :effect (and
    (not (evaluate comp267))
    (evaluate comp268)
    (one-off comp267)
  )
)
(:action evaluate-comp268-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (rebooted comp268)
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
  )
)
(:action evaluate-comp268-all-on
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (not (rebooted comp268))
    (running comp255)
    (running comp267)
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
    (all-on comp268)
  )
)
(:action evaluate-comp268-off-comp255
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (not (rebooted comp268))
    (not (running comp255))
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
    (one-off comp268)
  )
)
(:action evaluate-comp268-off-comp267
  :parameters ()
  :precondition (and
    (evaluate comp268)
    (not (rebooted comp268))
    (not (running comp267))
  )
  :effect (and
    (not (evaluate comp268))
    (evaluate comp269)
    (one-off comp268)
  )
)
(:action evaluate-comp269-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (rebooted comp269)
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
  )
)
(:action evaluate-comp269-all-on
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (not (rebooted comp269))
    (running comp268)
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
    (all-on comp269)
  )
)
(:action evaluate-comp269-off-comp268
  :parameters ()
  :precondition (and
    (evaluate comp269)
    (not (rebooted comp269))
    (not (running comp268))
  )
  :effect (and
    (not (evaluate comp269))
    (evaluate comp270)
    (one-off comp269)
  )
)
(:action evaluate-comp270-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp270)
    (rebooted comp270)
  )
  :effect (and
    (not (evaluate comp270))
    (evaluate comp271)
  )
)
(:action evaluate-comp270-all-on
  :parameters ()
  :precondition (and
    (evaluate comp270)
    (not (rebooted comp270))
    (running comp269)
  )
  :effect (and
    (not (evaluate comp270))
    (evaluate comp271)
    (all-on comp270)
  )
)
(:action evaluate-comp270-off-comp269
  :parameters ()
  :precondition (and
    (evaluate comp270)
    (not (rebooted comp270))
    (not (running comp269))
  )
  :effect (and
    (not (evaluate comp270))
    (evaluate comp271)
    (one-off comp270)
  )
)
(:action evaluate-comp271-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp271)
    (rebooted comp271)
  )
  :effect (and
    (not (evaluate comp271))
    (evaluate comp272)
  )
)
(:action evaluate-comp271-all-on
  :parameters ()
  :precondition (and
    (evaluate comp271)
    (not (rebooted comp271))
    (running comp270)
  )
  :effect (and
    (not (evaluate comp271))
    (evaluate comp272)
    (all-on comp271)
  )
)
(:action evaluate-comp271-off-comp270
  :parameters ()
  :precondition (and
    (evaluate comp271)
    (not (rebooted comp271))
    (not (running comp270))
  )
  :effect (and
    (not (evaluate comp271))
    (evaluate comp272)
    (one-off comp271)
  )
)
(:action evaluate-comp272-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (rebooted comp272)
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
  )
)
(:action evaluate-comp272-all-on
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (not (rebooted comp272))
    (running comp271)
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
    (all-on comp272)
  )
)
(:action evaluate-comp272-off-comp271
  :parameters ()
  :precondition (and
    (evaluate comp272)
    (not (rebooted comp272))
    (not (running comp271))
  )
  :effect (and
    (not (evaluate comp272))
    (evaluate comp273)
    (one-off comp272)
  )
)
(:action evaluate-comp273-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp273)
    (rebooted comp273)
  )
  :effect (and
    (not (evaluate comp273))
    (evaluate comp274)
  )
)
(:action evaluate-comp273-all-on
  :parameters ()
  :precondition (and
    (evaluate comp273)
    (not (rebooted comp273))
    (running comp272)
  )
  :effect (and
    (not (evaluate comp273))
    (evaluate comp274)
    (all-on comp273)
  )
)
(:action evaluate-comp273-off-comp272
  :parameters ()
  :precondition (and
    (evaluate comp273)
    (not (rebooted comp273))
    (not (running comp272))
  )
  :effect (and
    (not (evaluate comp273))
    (evaluate comp274)
    (one-off comp273)
  )
)
(:action evaluate-comp274-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp274)
    (rebooted comp274)
  )
  :effect (and
    (not (evaluate comp274))
    (evaluate comp275)
  )
)
(:action evaluate-comp274-all-on
  :parameters ()
  :precondition (and
    (evaluate comp274)
    (not (rebooted comp274))
    (running comp161)
    (running comp273)
  )
  :effect (and
    (not (evaluate comp274))
    (evaluate comp275)
    (all-on comp274)
  )
)
(:action evaluate-comp274-off-comp161
  :parameters ()
  :precondition (and
    (evaluate comp274)
    (not (rebooted comp274))
    (not (running comp161))
  )
  :effect (and
    (not (evaluate comp274))
    (evaluate comp275)
    (one-off comp274)
  )
)
(:action evaluate-comp274-off-comp273
  :parameters ()
  :precondition (and
    (evaluate comp274)
    (not (rebooted comp274))
    (not (running comp273))
  )
  :effect (and
    (not (evaluate comp274))
    (evaluate comp275)
    (one-off comp274)
  )
)
(:action evaluate-comp275-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp275)
    (rebooted comp275)
  )
  :effect (and
    (not (evaluate comp275))
    (evaluate comp276)
  )
)
(:action evaluate-comp275-all-on
  :parameters ()
  :precondition (and
    (evaluate comp275)
    (not (rebooted comp275))
    (running comp274)
    (running comp401)
  )
  :effect (and
    (not (evaluate comp275))
    (evaluate comp276)
    (all-on comp275)
  )
)
(:action evaluate-comp275-off-comp274
  :parameters ()
  :precondition (and
    (evaluate comp275)
    (not (rebooted comp275))
    (not (running comp274))
  )
  :effect (and
    (not (evaluate comp275))
    (evaluate comp276)
    (one-off comp275)
  )
)
(:action evaluate-comp275-off-comp401
  :parameters ()
  :precondition (and
    (evaluate comp275)
    (not (rebooted comp275))
    (not (running comp401))
  )
  :effect (and
    (not (evaluate comp275))
    (evaluate comp276)
    (one-off comp275)
  )
)
(:action evaluate-comp276-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp276)
    (rebooted comp276)
  )
  :effect (and
    (not (evaluate comp276))
    (evaluate comp277)
  )
)
(:action evaluate-comp276-all-on
  :parameters ()
  :precondition (and
    (evaluate comp276)
    (not (rebooted comp276))
    (running comp275)
  )
  :effect (and
    (not (evaluate comp276))
    (evaluate comp277)
    (all-on comp276)
  )
)
(:action evaluate-comp276-off-comp275
  :parameters ()
  :precondition (and
    (evaluate comp276)
    (not (rebooted comp276))
    (not (running comp275))
  )
  :effect (and
    (not (evaluate comp276))
    (evaluate comp277)
    (one-off comp276)
  )
)
(:action evaluate-comp277-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp277)
    (rebooted comp277)
  )
  :effect (and
    (not (evaluate comp277))
    (evaluate comp278)
  )
)
(:action evaluate-comp277-all-on
  :parameters ()
  :precondition (and
    (evaluate comp277)
    (not (rebooted comp277))
    (running comp276)
  )
  :effect (and
    (not (evaluate comp277))
    (evaluate comp278)
    (all-on comp277)
  )
)
(:action evaluate-comp277-off-comp276
  :parameters ()
  :precondition (and
    (evaluate comp277)
    (not (rebooted comp277))
    (not (running comp276))
  )
  :effect (and
    (not (evaluate comp277))
    (evaluate comp278)
    (one-off comp277)
  )
)
(:action evaluate-comp278-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (rebooted comp278)
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
  )
)
(:action evaluate-comp278-all-on
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (not (rebooted comp278))
    (running comp277)
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
    (all-on comp278)
  )
)
(:action evaluate-comp278-off-comp277
  :parameters ()
  :precondition (and
    (evaluate comp278)
    (not (rebooted comp278))
    (not (running comp277))
  )
  :effect (and
    (not (evaluate comp278))
    (evaluate comp279)
    (one-off comp278)
  )
)
(:action evaluate-comp279-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp279)
    (rebooted comp279)
  )
  :effect (and
    (not (evaluate comp279))
    (evaluate comp280)
  )
)
(:action evaluate-comp279-all-on
  :parameters ()
  :precondition (and
    (evaluate comp279)
    (not (rebooted comp279))
    (running comp278)
    (running comp723)
  )
  :effect (and
    (not (evaluate comp279))
    (evaluate comp280)
    (all-on comp279)
  )
)
(:action evaluate-comp279-off-comp278
  :parameters ()
  :precondition (and
    (evaluate comp279)
    (not (rebooted comp279))
    (not (running comp278))
  )
  :effect (and
    (not (evaluate comp279))
    (evaluate comp280)
    (one-off comp279)
  )
)
(:action evaluate-comp279-off-comp723
  :parameters ()
  :precondition (and
    (evaluate comp279)
    (not (rebooted comp279))
    (not (running comp723))
  )
  :effect (and
    (not (evaluate comp279))
    (evaluate comp280)
    (one-off comp279)
  )
)
(:action evaluate-comp280-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp280)
    (rebooted comp280)
  )
  :effect (and
    (not (evaluate comp280))
    (evaluate comp281)
  )
)
(:action evaluate-comp280-all-on
  :parameters ()
  :precondition (and
    (evaluate comp280)
    (not (rebooted comp280))
    (running comp279)
  )
  :effect (and
    (not (evaluate comp280))
    (evaluate comp281)
    (all-on comp280)
  )
)
(:action evaluate-comp280-off-comp279
  :parameters ()
  :precondition (and
    (evaluate comp280)
    (not (rebooted comp280))
    (not (running comp279))
  )
  :effect (and
    (not (evaluate comp280))
    (evaluate comp281)
    (one-off comp280)
  )
)
(:action evaluate-comp281-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp281)
    (rebooted comp281)
  )
  :effect (and
    (not (evaluate comp281))
    (evaluate comp282)
  )
)
(:action evaluate-comp281-all-on
  :parameters ()
  :precondition (and
    (evaluate comp281)
    (not (rebooted comp281))
    (running comp280)
  )
  :effect (and
    (not (evaluate comp281))
    (evaluate comp282)
    (all-on comp281)
  )
)
(:action evaluate-comp281-off-comp280
  :parameters ()
  :precondition (and
    (evaluate comp281)
    (not (rebooted comp281))
    (not (running comp280))
  )
  :effect (and
    (not (evaluate comp281))
    (evaluate comp282)
    (one-off comp281)
  )
)
(:action evaluate-comp282-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp282)
    (rebooted comp282)
  )
  :effect (and
    (not (evaluate comp282))
    (evaluate comp283)
  )
)
(:action evaluate-comp282-all-on
  :parameters ()
  :precondition (and
    (evaluate comp282)
    (not (rebooted comp282))
    (running comp281)
  )
  :effect (and
    (not (evaluate comp282))
    (evaluate comp283)
    (all-on comp282)
  )
)
(:action evaluate-comp282-off-comp281
  :parameters ()
  :precondition (and
    (evaluate comp282)
    (not (rebooted comp282))
    (not (running comp281))
  )
  :effect (and
    (not (evaluate comp282))
    (evaluate comp283)
    (one-off comp282)
  )
)
(:action evaluate-comp283-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (rebooted comp283)
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
  )
)
(:action evaluate-comp283-all-on
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (not (rebooted comp283))
    (running comp118)
    (running comp282)
    (running comp829)
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
    (all-on comp283)
  )
)
(:action evaluate-comp283-off-comp118
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (not (rebooted comp283))
    (not (running comp118))
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
    (one-off comp283)
  )
)
(:action evaluate-comp283-off-comp282
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (not (rebooted comp283))
    (not (running comp282))
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
    (one-off comp283)
  )
)
(:action evaluate-comp283-off-comp829
  :parameters ()
  :precondition (and
    (evaluate comp283)
    (not (rebooted comp283))
    (not (running comp829))
  )
  :effect (and
    (not (evaluate comp283))
    (evaluate comp284)
    (one-off comp283)
  )
)
(:action evaluate-comp284-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp284)
    (rebooted comp284)
  )
  :effect (and
    (not (evaluate comp284))
    (evaluate comp285)
  )
)
(:action evaluate-comp284-all-on
  :parameters ()
  :precondition (and
    (evaluate comp284)
    (not (rebooted comp284))
    (running comp283)
  )
  :effect (and
    (not (evaluate comp284))
    (evaluate comp285)
    (all-on comp284)
  )
)
(:action evaluate-comp284-off-comp283
  :parameters ()
  :precondition (and
    (evaluate comp284)
    (not (rebooted comp284))
    (not (running comp283))
  )
  :effect (and
    (not (evaluate comp284))
    (evaluate comp285)
    (one-off comp284)
  )
)
(:action evaluate-comp285-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp285)
    (rebooted comp285)
  )
  :effect (and
    (not (evaluate comp285))
    (evaluate comp286)
  )
)
(:action evaluate-comp285-all-on
  :parameters ()
  :precondition (and
    (evaluate comp285)
    (not (rebooted comp285))
    (running comp284)
    (running comp678)
  )
  :effect (and
    (not (evaluate comp285))
    (evaluate comp286)
    (all-on comp285)
  )
)
(:action evaluate-comp285-off-comp284
  :parameters ()
  :precondition (and
    (evaluate comp285)
    (not (rebooted comp285))
    (not (running comp284))
  )
  :effect (and
    (not (evaluate comp285))
    (evaluate comp286)
    (one-off comp285)
  )
)
(:action evaluate-comp285-off-comp678
  :parameters ()
  :precondition (and
    (evaluate comp285)
    (not (rebooted comp285))
    (not (running comp678))
  )
  :effect (and
    (not (evaluate comp285))
    (evaluate comp286)
    (one-off comp285)
  )
)
(:action evaluate-comp286-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (rebooted comp286)
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
  )
)
(:action evaluate-comp286-all-on
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (running comp120)
    (running comp283)
    (running comp285)
    (running comp719)
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (all-on comp286)
  )
)
(:action evaluate-comp286-off-comp120
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (not (running comp120))
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (one-off comp286)
  )
)
(:action evaluate-comp286-off-comp283
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (not (running comp283))
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (one-off comp286)
  )
)
(:action evaluate-comp286-off-comp285
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (not (running comp285))
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (one-off comp286)
  )
)
(:action evaluate-comp286-off-comp719
  :parameters ()
  :precondition (and
    (evaluate comp286)
    (not (rebooted comp286))
    (not (running comp719))
  )
  :effect (and
    (not (evaluate comp286))
    (evaluate comp287)
    (one-off comp286)
  )
)
(:action evaluate-comp287-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (rebooted comp287)
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
  )
)
(:action evaluate-comp287-all-on
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (not (rebooted comp287))
    (running comp85)
    (running comp286)
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
    (all-on comp287)
  )
)
(:action evaluate-comp287-off-comp85
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (not (rebooted comp287))
    (not (running comp85))
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
    (one-off comp287)
  )
)
(:action evaluate-comp287-off-comp286
  :parameters ()
  :precondition (and
    (evaluate comp287)
    (not (rebooted comp287))
    (not (running comp286))
  )
  :effect (and
    (not (evaluate comp287))
    (evaluate comp288)
    (one-off comp287)
  )
)
(:action evaluate-comp288-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp288)
    (rebooted comp288)
  )
  :effect (and
    (not (evaluate comp288))
    (evaluate comp289)
  )
)
(:action evaluate-comp288-all-on
  :parameters ()
  :precondition (and
    (evaluate comp288)
    (not (rebooted comp288))
    (running comp287)
  )
  :effect (and
    (not (evaluate comp288))
    (evaluate comp289)
    (all-on comp288)
  )
)
(:action evaluate-comp288-off-comp287
  :parameters ()
  :precondition (and
    (evaluate comp288)
    (not (rebooted comp288))
    (not (running comp287))
  )
  :effect (and
    (not (evaluate comp288))
    (evaluate comp289)
    (one-off comp288)
  )
)
(:action evaluate-comp289-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (rebooted comp289)
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
  )
)
(:action evaluate-comp289-all-on
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (not (rebooted comp289))
    (running comp288)
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
    (all-on comp289)
  )
)
(:action evaluate-comp289-off-comp288
  :parameters ()
  :precondition (and
    (evaluate comp289)
    (not (rebooted comp289))
    (not (running comp288))
  )
  :effect (and
    (not (evaluate comp289))
    (evaluate comp290)
    (one-off comp289)
  )
)
(:action evaluate-comp290-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp290)
    (rebooted comp290)
  )
  :effect (and
    (not (evaluate comp290))
    (evaluate comp291)
  )
)
(:action evaluate-comp290-all-on
  :parameters ()
  :precondition (and
    (evaluate comp290)
    (not (rebooted comp290))
    (running comp289)
  )
  :effect (and
    (not (evaluate comp290))
    (evaluate comp291)
    (all-on comp290)
  )
)
(:action evaluate-comp290-off-comp289
  :parameters ()
  :precondition (and
    (evaluate comp290)
    (not (rebooted comp290))
    (not (running comp289))
  )
  :effect (and
    (not (evaluate comp290))
    (evaluate comp291)
    (one-off comp290)
  )
)
(:action evaluate-comp291-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp291)
    (rebooted comp291)
  )
  :effect (and
    (not (evaluate comp291))
    (evaluate comp292)
  )
)
(:action evaluate-comp291-all-on
  :parameters ()
  :precondition (and
    (evaluate comp291)
    (not (rebooted comp291))
    (running comp290)
  )
  :effect (and
    (not (evaluate comp291))
    (evaluate comp292)
    (all-on comp291)
  )
)
(:action evaluate-comp291-off-comp290
  :parameters ()
  :precondition (and
    (evaluate comp291)
    (not (rebooted comp291))
    (not (running comp290))
  )
  :effect (and
    (not (evaluate comp291))
    (evaluate comp292)
    (one-off comp291)
  )
)
(:action evaluate-comp292-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp292)
    (rebooted comp292)
  )
  :effect (and
    (not (evaluate comp292))
    (evaluate comp293)
  )
)
(:action evaluate-comp292-all-on
  :parameters ()
  :precondition (and
    (evaluate comp292)
    (not (rebooted comp292))
    (running comp291)
  )
  :effect (and
    (not (evaluate comp292))
    (evaluate comp293)
    (all-on comp292)
  )
)
(:action evaluate-comp292-off-comp291
  :parameters ()
  :precondition (and
    (evaluate comp292)
    (not (rebooted comp292))
    (not (running comp291))
  )
  :effect (and
    (not (evaluate comp292))
    (evaluate comp293)
    (one-off comp292)
  )
)
(:action evaluate-comp293-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp293)
    (rebooted comp293)
  )
  :effect (and
    (not (evaluate comp293))
    (evaluate comp294)
  )
)
(:action evaluate-comp293-all-on
  :parameters ()
  :precondition (and
    (evaluate comp293)
    (not (rebooted comp293))
    (running comp292)
  )
  :effect (and
    (not (evaluate comp293))
    (evaluate comp294)
    (all-on comp293)
  )
)
(:action evaluate-comp293-off-comp292
  :parameters ()
  :precondition (and
    (evaluate comp293)
    (not (rebooted comp293))
    (not (running comp292))
  )
  :effect (and
    (not (evaluate comp293))
    (evaluate comp294)
    (one-off comp293)
  )
)
(:action evaluate-comp294-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp294)
    (rebooted comp294)
  )
  :effect (and
    (not (evaluate comp294))
    (evaluate comp295)
  )
)
(:action evaluate-comp294-all-on
  :parameters ()
  :precondition (and
    (evaluate comp294)
    (not (rebooted comp294))
    (running comp293)
    (running comp462)
  )
  :effect (and
    (not (evaluate comp294))
    (evaluate comp295)
    (all-on comp294)
  )
)
(:action evaluate-comp294-off-comp293
  :parameters ()
  :precondition (and
    (evaluate comp294)
    (not (rebooted comp294))
    (not (running comp293))
  )
  :effect (and
    (not (evaluate comp294))
    (evaluate comp295)
    (one-off comp294)
  )
)
(:action evaluate-comp294-off-comp462
  :parameters ()
  :precondition (and
    (evaluate comp294)
    (not (rebooted comp294))
    (not (running comp462))
  )
  :effect (and
    (not (evaluate comp294))
    (evaluate comp295)
    (one-off comp294)
  )
)
(:action evaluate-comp295-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp295)
    (rebooted comp295)
  )
  :effect (and
    (not (evaluate comp295))
    (evaluate comp296)
  )
)
(:action evaluate-comp295-all-on
  :parameters ()
  :precondition (and
    (evaluate comp295)
    (not (rebooted comp295))
    (running comp294)
    (running comp318)
  )
  :effect (and
    (not (evaluate comp295))
    (evaluate comp296)
    (all-on comp295)
  )
)
(:action evaluate-comp295-off-comp294
  :parameters ()
  :precondition (and
    (evaluate comp295)
    (not (rebooted comp295))
    (not (running comp294))
  )
  :effect (and
    (not (evaluate comp295))
    (evaluate comp296)
    (one-off comp295)
  )
)
(:action evaluate-comp295-off-comp318
  :parameters ()
  :precondition (and
    (evaluate comp295)
    (not (rebooted comp295))
    (not (running comp318))
  )
  :effect (and
    (not (evaluate comp295))
    (evaluate comp296)
    (one-off comp295)
  )
)
(:action evaluate-comp296-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp296)
    (rebooted comp296)
  )
  :effect (and
    (not (evaluate comp296))
    (evaluate comp297)
  )
)
(:action evaluate-comp296-all-on
  :parameters ()
  :precondition (and
    (evaluate comp296)
    (not (rebooted comp296))
    (running comp295)
  )
  :effect (and
    (not (evaluate comp296))
    (evaluate comp297)
    (all-on comp296)
  )
)
(:action evaluate-comp296-off-comp295
  :parameters ()
  :precondition (and
    (evaluate comp296)
    (not (rebooted comp296))
    (not (running comp295))
  )
  :effect (and
    (not (evaluate comp296))
    (evaluate comp297)
    (one-off comp296)
  )
)
(:action evaluate-comp297-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp297)
    (rebooted comp297)
  )
  :effect (and
    (not (evaluate comp297))
    (evaluate comp298)
  )
)
(:action evaluate-comp297-all-on
  :parameters ()
  :precondition (and
    (evaluate comp297)
    (not (rebooted comp297))
    (running comp296)
  )
  :effect (and
    (not (evaluate comp297))
    (evaluate comp298)
    (all-on comp297)
  )
)
(:action evaluate-comp297-off-comp296
  :parameters ()
  :precondition (and
    (evaluate comp297)
    (not (rebooted comp297))
    (not (running comp296))
  )
  :effect (and
    (not (evaluate comp297))
    (evaluate comp298)
    (one-off comp297)
  )
)
(:action evaluate-comp298-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (rebooted comp298)
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
  )
)
(:action evaluate-comp298-all-on
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (not (rebooted comp298))
    (running comp126)
    (running comp297)
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
    (all-on comp298)
  )
)
(:action evaluate-comp298-off-comp126
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (not (rebooted comp298))
    (not (running comp126))
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
    (one-off comp298)
  )
)
(:action evaluate-comp298-off-comp297
  :parameters ()
  :precondition (and
    (evaluate comp298)
    (not (rebooted comp298))
    (not (running comp297))
  )
  :effect (and
    (not (evaluate comp298))
    (evaluate comp299)
    (one-off comp298)
  )
)
(:action evaluate-comp299-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (rebooted comp299)
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
  )
)
(:action evaluate-comp299-all-on
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (not (rebooted comp299))
    (running comp230)
    (running comp298)
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
    (all-on comp299)
  )
)
(:action evaluate-comp299-off-comp230
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (not (rebooted comp299))
    (not (running comp230))
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
    (one-off comp299)
  )
)
(:action evaluate-comp299-off-comp298
  :parameters ()
  :precondition (and
    (evaluate comp299)
    (not (rebooted comp299))
    (not (running comp298))
  )
  :effect (and
    (not (evaluate comp299))
    (evaluate comp300)
    (one-off comp299)
  )
)
(:action evaluate-comp300-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp300)
    (rebooted comp300)
  )
  :effect (and
    (not (evaluate comp300))
    (evaluate comp301)
  )
)
(:action evaluate-comp300-all-on
  :parameters ()
  :precondition (and
    (evaluate comp300)
    (not (rebooted comp300))
    (running comp299)
  )
  :effect (and
    (not (evaluate comp300))
    (evaluate comp301)
    (all-on comp300)
  )
)
(:action evaluate-comp300-off-comp299
  :parameters ()
  :precondition (and
    (evaluate comp300)
    (not (rebooted comp300))
    (not (running comp299))
  )
  :effect (and
    (not (evaluate comp300))
    (evaluate comp301)
    (one-off comp300)
  )
)
(:action evaluate-comp301-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp301)
    (rebooted comp301)
  )
  :effect (and
    (not (evaluate comp301))
    (evaluate comp302)
  )
)
(:action evaluate-comp301-all-on
  :parameters ()
  :precondition (and
    (evaluate comp301)
    (not (rebooted comp301))
    (running comp300)
  )
  :effect (and
    (not (evaluate comp301))
    (evaluate comp302)
    (all-on comp301)
  )
)
(:action evaluate-comp301-off-comp300
  :parameters ()
  :precondition (and
    (evaluate comp301)
    (not (rebooted comp301))
    (not (running comp300))
  )
  :effect (and
    (not (evaluate comp301))
    (evaluate comp302)
    (one-off comp301)
  )
)
(:action evaluate-comp302-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp302)
    (rebooted comp302)
  )
  :effect (and
    (not (evaluate comp302))
    (evaluate comp303)
  )
)
(:action evaluate-comp302-all-on
  :parameters ()
  :precondition (and
    (evaluate comp302)
    (not (rebooted comp302))
    (running comp301)
  )
  :effect (and
    (not (evaluate comp302))
    (evaluate comp303)
    (all-on comp302)
  )
)
(:action evaluate-comp302-off-comp301
  :parameters ()
  :precondition (and
    (evaluate comp302)
    (not (rebooted comp302))
    (not (running comp301))
  )
  :effect (and
    (not (evaluate comp302))
    (evaluate comp303)
    (one-off comp302)
  )
)
(:action evaluate-comp303-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp303)
    (rebooted comp303)
  )
  :effect (and
    (not (evaluate comp303))
    (evaluate comp304)
  )
)
(:action evaluate-comp303-all-on
  :parameters ()
  :precondition (and
    (evaluate comp303)
    (not (rebooted comp303))
    (running comp302)
  )
  :effect (and
    (not (evaluate comp303))
    (evaluate comp304)
    (all-on comp303)
  )
)
(:action evaluate-comp303-off-comp302
  :parameters ()
  :precondition (and
    (evaluate comp303)
    (not (rebooted comp303))
    (not (running comp302))
  )
  :effect (and
    (not (evaluate comp303))
    (evaluate comp304)
    (one-off comp303)
  )
)
(:action evaluate-comp304-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (rebooted comp304)
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
  )
)
(:action evaluate-comp304-all-on
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (not (rebooted comp304))
    (running comp303)
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
    (all-on comp304)
  )
)
(:action evaluate-comp304-off-comp303
  :parameters ()
  :precondition (and
    (evaluate comp304)
    (not (rebooted comp304))
    (not (running comp303))
  )
  :effect (and
    (not (evaluate comp304))
    (evaluate comp305)
    (one-off comp304)
  )
)
(:action evaluate-comp305-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp305)
    (rebooted comp305)
  )
  :effect (and
    (not (evaluate comp305))
    (evaluate comp306)
  )
)
(:action evaluate-comp305-all-on
  :parameters ()
  :precondition (and
    (evaluate comp305)
    (not (rebooted comp305))
    (running comp304)
  )
  :effect (and
    (not (evaluate comp305))
    (evaluate comp306)
    (all-on comp305)
  )
)
(:action evaluate-comp305-off-comp304
  :parameters ()
  :precondition (and
    (evaluate comp305)
    (not (rebooted comp305))
    (not (running comp304))
  )
  :effect (and
    (not (evaluate comp305))
    (evaluate comp306)
    (one-off comp305)
  )
)
(:action evaluate-comp306-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (rebooted comp306)
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
  )
)
(:action evaluate-comp306-all-on
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (not (rebooted comp306))
    (running comp305)
    (running comp539)
    (running comp751)
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
    (all-on comp306)
  )
)
(:action evaluate-comp306-off-comp305
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (not (rebooted comp306))
    (not (running comp305))
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
    (one-off comp306)
  )
)
(:action evaluate-comp306-off-comp539
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (not (rebooted comp306))
    (not (running comp539))
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
    (one-off comp306)
  )
)
(:action evaluate-comp306-off-comp751
  :parameters ()
  :precondition (and
    (evaluate comp306)
    (not (rebooted comp306))
    (not (running comp751))
  )
  :effect (and
    (not (evaluate comp306))
    (evaluate comp307)
    (one-off comp306)
  )
)
(:action evaluate-comp307-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp307)
    (rebooted comp307)
  )
  :effect (and
    (not (evaluate comp307))
    (evaluate comp308)
  )
)
(:action evaluate-comp307-all-on
  :parameters ()
  :precondition (and
    (evaluate comp307)
    (not (rebooted comp307))
    (running comp306)
  )
  :effect (and
    (not (evaluate comp307))
    (evaluate comp308)
    (all-on comp307)
  )
)
(:action evaluate-comp307-off-comp306
  :parameters ()
  :precondition (and
    (evaluate comp307)
    (not (rebooted comp307))
    (not (running comp306))
  )
  :effect (and
    (not (evaluate comp307))
    (evaluate comp308)
    (one-off comp307)
  )
)
(:action evaluate-comp308-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp308)
    (rebooted comp308)
  )
  :effect (and
    (not (evaluate comp308))
    (evaluate comp309)
  )
)
(:action evaluate-comp308-all-on
  :parameters ()
  :precondition (and
    (evaluate comp308)
    (not (rebooted comp308))
    (running comp307)
  )
  :effect (and
    (not (evaluate comp308))
    (evaluate comp309)
    (all-on comp308)
  )
)
(:action evaluate-comp308-off-comp307
  :parameters ()
  :precondition (and
    (evaluate comp308)
    (not (rebooted comp308))
    (not (running comp307))
  )
  :effect (and
    (not (evaluate comp308))
    (evaluate comp309)
    (one-off comp308)
  )
)
(:action evaluate-comp309-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp309)
    (rebooted comp309)
  )
  :effect (and
    (not (evaluate comp309))
    (evaluate comp310)
  )
)
(:action evaluate-comp309-all-on
  :parameters ()
  :precondition (and
    (evaluate comp309)
    (not (rebooted comp309))
    (running comp308)
  )
  :effect (and
    (not (evaluate comp309))
    (evaluate comp310)
    (all-on comp309)
  )
)
(:action evaluate-comp309-off-comp308
  :parameters ()
  :precondition (and
    (evaluate comp309)
    (not (rebooted comp309))
    (not (running comp308))
  )
  :effect (and
    (not (evaluate comp309))
    (evaluate comp310)
    (one-off comp309)
  )
)
(:action evaluate-comp310-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp310)
    (rebooted comp310)
  )
  :effect (and
    (not (evaluate comp310))
    (evaluate comp311)
  )
)
(:action evaluate-comp310-all-on
  :parameters ()
  :precondition (and
    (evaluate comp310)
    (not (rebooted comp310))
    (running comp2)
    (running comp309)
  )
  :effect (and
    (not (evaluate comp310))
    (evaluate comp311)
    (all-on comp310)
  )
)
(:action evaluate-comp310-off-comp2
  :parameters ()
  :precondition (and
    (evaluate comp310)
    (not (rebooted comp310))
    (not (running comp2))
  )
  :effect (and
    (not (evaluate comp310))
    (evaluate comp311)
    (one-off comp310)
  )
)
(:action evaluate-comp310-off-comp309
  :parameters ()
  :precondition (and
    (evaluate comp310)
    (not (rebooted comp310))
    (not (running comp309))
  )
  :effect (and
    (not (evaluate comp310))
    (evaluate comp311)
    (one-off comp310)
  )
)
(:action evaluate-comp311-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp311)
    (rebooted comp311)
  )
  :effect (and
    (not (evaluate comp311))
    (evaluate comp312)
  )
)
(:action evaluate-comp311-all-on
  :parameters ()
  :precondition (and
    (evaluate comp311)
    (not (rebooted comp311))
    (running comp310)
  )
  :effect (and
    (not (evaluate comp311))
    (evaluate comp312)
    (all-on comp311)
  )
)
(:action evaluate-comp311-off-comp310
  :parameters ()
  :precondition (and
    (evaluate comp311)
    (not (rebooted comp311))
    (not (running comp310))
  )
  :effect (and
    (not (evaluate comp311))
    (evaluate comp312)
    (one-off comp311)
  )
)
(:action evaluate-comp312-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp312)
    (rebooted comp312)
  )
  :effect (and
    (not (evaluate comp312))
    (evaluate comp313)
  )
)
(:action evaluate-comp312-all-on
  :parameters ()
  :precondition (and
    (evaluate comp312)
    (not (rebooted comp312))
    (running comp311)
  )
  :effect (and
    (not (evaluate comp312))
    (evaluate comp313)
    (all-on comp312)
  )
)
(:action evaluate-comp312-off-comp311
  :parameters ()
  :precondition (and
    (evaluate comp312)
    (not (rebooted comp312))
    (not (running comp311))
  )
  :effect (and
    (not (evaluate comp312))
    (evaluate comp313)
    (one-off comp312)
  )
)
(:action evaluate-comp313-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp313)
    (rebooted comp313)
  )
  :effect (and
    (not (evaluate comp313))
    (evaluate comp314)
  )
)
(:action evaluate-comp313-all-on
  :parameters ()
  :precondition (and
    (evaluate comp313)
    (not (rebooted comp313))
    (running comp312)
  )
  :effect (and
    (not (evaluate comp313))
    (evaluate comp314)
    (all-on comp313)
  )
)
(:action evaluate-comp313-off-comp312
  :parameters ()
  :precondition (and
    (evaluate comp313)
    (not (rebooted comp313))
    (not (running comp312))
  )
  :effect (and
    (not (evaluate comp313))
    (evaluate comp314)
    (one-off comp313)
  )
)
(:action evaluate-comp314-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (rebooted comp314)
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
  )
)
(:action evaluate-comp314-all-on
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (not (rebooted comp314))
    (running comp313)
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
    (all-on comp314)
  )
)
(:action evaluate-comp314-off-comp313
  :parameters ()
  :precondition (and
    (evaluate comp314)
    (not (rebooted comp314))
    (not (running comp313))
  )
  :effect (and
    (not (evaluate comp314))
    (evaluate comp315)
    (one-off comp314)
  )
)
(:action evaluate-comp315-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp315)
    (rebooted comp315)
  )
  :effect (and
    (not (evaluate comp315))
    (evaluate comp316)
  )
)
(:action evaluate-comp315-all-on
  :parameters ()
  :precondition (and
    (evaluate comp315)
    (not (rebooted comp315))
    (running comp314)
  )
  :effect (and
    (not (evaluate comp315))
    (evaluate comp316)
    (all-on comp315)
  )
)
(:action evaluate-comp315-off-comp314
  :parameters ()
  :precondition (and
    (evaluate comp315)
    (not (rebooted comp315))
    (not (running comp314))
  )
  :effect (and
    (not (evaluate comp315))
    (evaluate comp316)
    (one-off comp315)
  )
)
(:action evaluate-comp316-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp316)
    (rebooted comp316)
  )
  :effect (and
    (not (evaluate comp316))
    (evaluate comp317)
  )
)
(:action evaluate-comp316-all-on
  :parameters ()
  :precondition (and
    (evaluate comp316)
    (not (rebooted comp316))
    (running comp315)
  )
  :effect (and
    (not (evaluate comp316))
    (evaluate comp317)
    (all-on comp316)
  )
)
(:action evaluate-comp316-off-comp315
  :parameters ()
  :precondition (and
    (evaluate comp316)
    (not (rebooted comp316))
    (not (running comp315))
  )
  :effect (and
    (not (evaluate comp316))
    (evaluate comp317)
    (one-off comp316)
  )
)
(:action evaluate-comp317-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (rebooted comp317)
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
  )
)
(:action evaluate-comp317-all-on
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (not (rebooted comp317))
    (running comp316)
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
    (all-on comp317)
  )
)
(:action evaluate-comp317-off-comp316
  :parameters ()
  :precondition (and
    (evaluate comp317)
    (not (rebooted comp317))
    (not (running comp316))
  )
  :effect (and
    (not (evaluate comp317))
    (evaluate comp318)
    (one-off comp317)
  )
)
(:action evaluate-comp318-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp318)
    (rebooted comp318)
  )
  :effect (and
    (not (evaluate comp318))
    (evaluate comp319)
  )
)
(:action evaluate-comp318-all-on
  :parameters ()
  :precondition (and
    (evaluate comp318)
    (not (rebooted comp318))
    (running comp317)
  )
  :effect (and
    (not (evaluate comp318))
    (evaluate comp319)
    (all-on comp318)
  )
)
(:action evaluate-comp318-off-comp317
  :parameters ()
  :precondition (and
    (evaluate comp318)
    (not (rebooted comp318))
    (not (running comp317))
  )
  :effect (and
    (not (evaluate comp318))
    (evaluate comp319)
    (one-off comp318)
  )
)
(:action evaluate-comp319-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp319)
    (rebooted comp319)
  )
  :effect (and
    (not (evaluate comp319))
    (evaluate comp320)
  )
)
(:action evaluate-comp319-all-on
  :parameters ()
  :precondition (and
    (evaluate comp319)
    (not (rebooted comp319))
    (running comp318)
    (running comp676)
  )
  :effect (and
    (not (evaluate comp319))
    (evaluate comp320)
    (all-on comp319)
  )
)
(:action evaluate-comp319-off-comp318
  :parameters ()
  :precondition (and
    (evaluate comp319)
    (not (rebooted comp319))
    (not (running comp318))
  )
  :effect (and
    (not (evaluate comp319))
    (evaluate comp320)
    (one-off comp319)
  )
)
(:action evaluate-comp319-off-comp676
  :parameters ()
  :precondition (and
    (evaluate comp319)
    (not (rebooted comp319))
    (not (running comp676))
  )
  :effect (and
    (not (evaluate comp319))
    (evaluate comp320)
    (one-off comp319)
  )
)
(:action evaluate-comp320-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp320)
    (rebooted comp320)
  )
  :effect (and
    (not (evaluate comp320))
    (evaluate comp321)
  )
)
(:action evaluate-comp320-all-on
  :parameters ()
  :precondition (and
    (evaluate comp320)
    (not (rebooted comp320))
    (running comp319)
  )
  :effect (and
    (not (evaluate comp320))
    (evaluate comp321)
    (all-on comp320)
  )
)
(:action evaluate-comp320-off-comp319
  :parameters ()
  :precondition (and
    (evaluate comp320)
    (not (rebooted comp320))
    (not (running comp319))
  )
  :effect (and
    (not (evaluate comp320))
    (evaluate comp321)
    (one-off comp320)
  )
)
(:action evaluate-comp321-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp321)
    (rebooted comp321)
  )
  :effect (and
    (not (evaluate comp321))
    (evaluate comp322)
  )
)
(:action evaluate-comp321-all-on
  :parameters ()
  :precondition (and
    (evaluate comp321)
    (not (rebooted comp321))
    (running comp320)
  )
  :effect (and
    (not (evaluate comp321))
    (evaluate comp322)
    (all-on comp321)
  )
)
(:action evaluate-comp321-off-comp320
  :parameters ()
  :precondition (and
    (evaluate comp321)
    (not (rebooted comp321))
    (not (running comp320))
  )
  :effect (and
    (not (evaluate comp321))
    (evaluate comp322)
    (one-off comp321)
  )
)
(:action evaluate-comp322-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp322)
    (rebooted comp322)
  )
  :effect (and
    (not (evaluate comp322))
    (evaluate comp323)
  )
)
(:action evaluate-comp322-all-on
  :parameters ()
  :precondition (and
    (evaluate comp322)
    (not (rebooted comp322))
    (running comp321)
  )
  :effect (and
    (not (evaluate comp322))
    (evaluate comp323)
    (all-on comp322)
  )
)
(:action evaluate-comp322-off-comp321
  :parameters ()
  :precondition (and
    (evaluate comp322)
    (not (rebooted comp322))
    (not (running comp321))
  )
  :effect (and
    (not (evaluate comp322))
    (evaluate comp323)
    (one-off comp322)
  )
)
(:action evaluate-comp323-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp323)
    (rebooted comp323)
  )
  :effect (and
    (not (evaluate comp323))
    (evaluate comp324)
  )
)
(:action evaluate-comp323-all-on
  :parameters ()
  :precondition (and
    (evaluate comp323)
    (not (rebooted comp323))
    (running comp127)
    (running comp322)
  )
  :effect (and
    (not (evaluate comp323))
    (evaluate comp324)
    (all-on comp323)
  )
)
(:action evaluate-comp323-off-comp127
  :parameters ()
  :precondition (and
    (evaluate comp323)
    (not (rebooted comp323))
    (not (running comp127))
  )
  :effect (and
    (not (evaluate comp323))
    (evaluate comp324)
    (one-off comp323)
  )
)
(:action evaluate-comp323-off-comp322
  :parameters ()
  :precondition (and
    (evaluate comp323)
    (not (rebooted comp323))
    (not (running comp322))
  )
  :effect (and
    (not (evaluate comp323))
    (evaluate comp324)
    (one-off comp323)
  )
)
(:action evaluate-comp324-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (rebooted comp324)
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
  )
)
(:action evaluate-comp324-all-on
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (not (rebooted comp324))
    (running comp274)
    (running comp323)
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
    (all-on comp324)
  )
)
(:action evaluate-comp324-off-comp274
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (not (rebooted comp324))
    (not (running comp274))
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
    (one-off comp324)
  )
)
(:action evaluate-comp324-off-comp323
  :parameters ()
  :precondition (and
    (evaluate comp324)
    (not (rebooted comp324))
    (not (running comp323))
  )
  :effect (and
    (not (evaluate comp324))
    (evaluate comp325)
    (one-off comp324)
  )
)
(:action evaluate-comp325-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp325)
    (rebooted comp325)
  )
  :effect (and
    (not (evaluate comp325))
    (evaluate comp326)
  )
)
(:action evaluate-comp325-all-on
  :parameters ()
  :precondition (and
    (evaluate comp325)
    (not (rebooted comp325))
    (running comp324)
  )
  :effect (and
    (not (evaluate comp325))
    (evaluate comp326)
    (all-on comp325)
  )
)
(:action evaluate-comp325-off-comp324
  :parameters ()
  :precondition (and
    (evaluate comp325)
    (not (rebooted comp325))
    (not (running comp324))
  )
  :effect (and
    (not (evaluate comp325))
    (evaluate comp326)
    (one-off comp325)
  )
)
(:action evaluate-comp326-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (rebooted comp326)
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
  )
)
(:action evaluate-comp326-all-on
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (not (rebooted comp326))
    (running comp325)
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
    (all-on comp326)
  )
)
(:action evaluate-comp326-off-comp325
  :parameters ()
  :precondition (and
    (evaluate comp326)
    (not (rebooted comp326))
    (not (running comp325))
  )
  :effect (and
    (not (evaluate comp326))
    (evaluate comp327)
    (one-off comp326)
  )
)
(:action evaluate-comp327-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp327)
    (rebooted comp327)
  )
  :effect (and
    (not (evaluate comp327))
    (evaluate comp328)
  )
)
(:action evaluate-comp327-all-on
  :parameters ()
  :precondition (and
    (evaluate comp327)
    (not (rebooted comp327))
    (running comp326)
    (running comp937)
  )
  :effect (and
    (not (evaluate comp327))
    (evaluate comp328)
    (all-on comp327)
  )
)
(:action evaluate-comp327-off-comp326
  :parameters ()
  :precondition (and
    (evaluate comp327)
    (not (rebooted comp327))
    (not (running comp326))
  )
  :effect (and
    (not (evaluate comp327))
    (evaluate comp328)
    (one-off comp327)
  )
)
(:action evaluate-comp327-off-comp937
  :parameters ()
  :precondition (and
    (evaluate comp327)
    (not (rebooted comp327))
    (not (running comp937))
  )
  :effect (and
    (not (evaluate comp327))
    (evaluate comp328)
    (one-off comp327)
  )
)
(:action evaluate-comp328-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp328)
    (rebooted comp328)
  )
  :effect (and
    (not (evaluate comp328))
    (evaluate comp329)
  )
)
(:action evaluate-comp328-all-on
  :parameters ()
  :precondition (and
    (evaluate comp328)
    (not (rebooted comp328))
    (running comp327)
  )
  :effect (and
    (not (evaluate comp328))
    (evaluate comp329)
    (all-on comp328)
  )
)
(:action evaluate-comp328-off-comp327
  :parameters ()
  :precondition (and
    (evaluate comp328)
    (not (rebooted comp328))
    (not (running comp327))
  )
  :effect (and
    (not (evaluate comp328))
    (evaluate comp329)
    (one-off comp328)
  )
)
(:action evaluate-comp329-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (rebooted comp329)
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
  )
)
(:action evaluate-comp329-all-on
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (not (rebooted comp329))
    (running comp58)
    (running comp328)
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
    (all-on comp329)
  )
)
(:action evaluate-comp329-off-comp58
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (not (rebooted comp329))
    (not (running comp58))
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
    (one-off comp329)
  )
)
(:action evaluate-comp329-off-comp328
  :parameters ()
  :precondition (and
    (evaluate comp329)
    (not (rebooted comp329))
    (not (running comp328))
  )
  :effect (and
    (not (evaluate comp329))
    (evaluate comp330)
    (one-off comp329)
  )
)
(:action evaluate-comp330-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp330)
    (rebooted comp330)
  )
  :effect (and
    (not (evaluate comp330))
    (evaluate comp331)
  )
)
(:action evaluate-comp330-all-on
  :parameters ()
  :precondition (and
    (evaluate comp330)
    (not (rebooted comp330))
    (running comp56)
    (running comp329)
  )
  :effect (and
    (not (evaluate comp330))
    (evaluate comp331)
    (all-on comp330)
  )
)
(:action evaluate-comp330-off-comp56
  :parameters ()
  :precondition (and
    (evaluate comp330)
    (not (rebooted comp330))
    (not (running comp56))
  )
  :effect (and
    (not (evaluate comp330))
    (evaluate comp331)
    (one-off comp330)
  )
)
(:action evaluate-comp330-off-comp329
  :parameters ()
  :precondition (and
    (evaluate comp330)
    (not (rebooted comp330))
    (not (running comp329))
  )
  :effect (and
    (not (evaluate comp330))
    (evaluate comp331)
    (one-off comp330)
  )
)
(:action evaluate-comp331-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (rebooted comp331)
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
  )
)
(:action evaluate-comp331-all-on
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (not (rebooted comp331))
    (running comp101)
    (running comp174)
    (running comp330)
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
    (all-on comp331)
  )
)
(:action evaluate-comp331-off-comp101
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (not (rebooted comp331))
    (not (running comp101))
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
    (one-off comp331)
  )
)
(:action evaluate-comp331-off-comp174
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (not (rebooted comp331))
    (not (running comp174))
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
    (one-off comp331)
  )
)
(:action evaluate-comp331-off-comp330
  :parameters ()
  :precondition (and
    (evaluate comp331)
    (not (rebooted comp331))
    (not (running comp330))
  )
  :effect (and
    (not (evaluate comp331))
    (evaluate comp332)
    (one-off comp331)
  )
)
(:action evaluate-comp332-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp332)
    (rebooted comp332)
  )
  :effect (and
    (not (evaluate comp332))
    (evaluate comp333)
  )
)
(:action evaluate-comp332-all-on
  :parameters ()
  :precondition (and
    (evaluate comp332)
    (not (rebooted comp332))
    (running comp331)
  )
  :effect (and
    (not (evaluate comp332))
    (evaluate comp333)
    (all-on comp332)
  )
)
(:action evaluate-comp332-off-comp331
  :parameters ()
  :precondition (and
    (evaluate comp332)
    (not (rebooted comp332))
    (not (running comp331))
  )
  :effect (and
    (not (evaluate comp332))
    (evaluate comp333)
    (one-off comp332)
  )
)
(:action evaluate-comp333-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp333)
    (rebooted comp333)
  )
  :effect (and
    (not (evaluate comp333))
    (evaluate comp334)
  )
)
(:action evaluate-comp333-all-on
  :parameters ()
  :precondition (and
    (evaluate comp333)
    (not (rebooted comp333))
    (running comp332)
  )
  :effect (and
    (not (evaluate comp333))
    (evaluate comp334)
    (all-on comp333)
  )
)
(:action evaluate-comp333-off-comp332
  :parameters ()
  :precondition (and
    (evaluate comp333)
    (not (rebooted comp333))
    (not (running comp332))
  )
  :effect (and
    (not (evaluate comp333))
    (evaluate comp334)
    (one-off comp333)
  )
)
(:action evaluate-comp334-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (rebooted comp334)
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
  )
)
(:action evaluate-comp334-all-on
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (not (rebooted comp334))
    (running comp309)
    (running comp333)
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
    (all-on comp334)
  )
)
(:action evaluate-comp334-off-comp309
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (not (rebooted comp334))
    (not (running comp309))
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
    (one-off comp334)
  )
)
(:action evaluate-comp334-off-comp333
  :parameters ()
  :precondition (and
    (evaluate comp334)
    (not (rebooted comp334))
    (not (running comp333))
  )
  :effect (and
    (not (evaluate comp334))
    (evaluate comp335)
    (one-off comp334)
  )
)
(:action evaluate-comp335-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (rebooted comp335)
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
  )
)
(:action evaluate-comp335-all-on
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (not (rebooted comp335))
    (running comp334)
    (running comp668)
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
    (all-on comp335)
  )
)
(:action evaluate-comp335-off-comp334
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (not (rebooted comp335))
    (not (running comp334))
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
    (one-off comp335)
  )
)
(:action evaluate-comp335-off-comp668
  :parameters ()
  :precondition (and
    (evaluate comp335)
    (not (rebooted comp335))
    (not (running comp668))
  )
  :effect (and
    (not (evaluate comp335))
    (evaluate comp336)
    (one-off comp335)
  )
)
(:action evaluate-comp336-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp336)
    (rebooted comp336)
  )
  :effect (and
    (not (evaluate comp336))
    (evaluate comp337)
  )
)
(:action evaluate-comp336-all-on
  :parameters ()
  :precondition (and
    (evaluate comp336)
    (not (rebooted comp336))
    (running comp335)
  )
  :effect (and
    (not (evaluate comp336))
    (evaluate comp337)
    (all-on comp336)
  )
)
(:action evaluate-comp336-off-comp335
  :parameters ()
  :precondition (and
    (evaluate comp336)
    (not (rebooted comp336))
    (not (running comp335))
  )
  :effect (and
    (not (evaluate comp336))
    (evaluate comp337)
    (one-off comp336)
  )
)
(:action evaluate-comp337-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp337)
    (rebooted comp337)
  )
  :effect (and
    (not (evaluate comp337))
    (evaluate comp338)
  )
)
(:action evaluate-comp337-all-on
  :parameters ()
  :precondition (and
    (evaluate comp337)
    (not (rebooted comp337))
    (running comp336)
  )
  :effect (and
    (not (evaluate comp337))
    (evaluate comp338)
    (all-on comp337)
  )
)
(:action evaluate-comp337-off-comp336
  :parameters ()
  :precondition (and
    (evaluate comp337)
    (not (rebooted comp337))
    (not (running comp336))
  )
  :effect (and
    (not (evaluate comp337))
    (evaluate comp338)
    (one-off comp337)
  )
)
(:action evaluate-comp338-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp338)
    (rebooted comp338)
  )
  :effect (and
    (not (evaluate comp338))
    (evaluate comp339)
  )
)
(:action evaluate-comp338-all-on
  :parameters ()
  :precondition (and
    (evaluate comp338)
    (not (rebooted comp338))
    (running comp337)
  )
  :effect (and
    (not (evaluate comp338))
    (evaluate comp339)
    (all-on comp338)
  )
)
(:action evaluate-comp338-off-comp337
  :parameters ()
  :precondition (and
    (evaluate comp338)
    (not (rebooted comp338))
    (not (running comp337))
  )
  :effect (and
    (not (evaluate comp338))
    (evaluate comp339)
    (one-off comp338)
  )
)
(:action evaluate-comp339-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp339)
    (rebooted comp339)
  )
  :effect (and
    (not (evaluate comp339))
    (evaluate comp340)
  )
)
(:action evaluate-comp339-all-on
  :parameters ()
  :precondition (and
    (evaluate comp339)
    (not (rebooted comp339))
    (running comp338)
  )
  :effect (and
    (not (evaluate comp339))
    (evaluate comp340)
    (all-on comp339)
  )
)
(:action evaluate-comp339-off-comp338
  :parameters ()
  :precondition (and
    (evaluate comp339)
    (not (rebooted comp339))
    (not (running comp338))
  )
  :effect (and
    (not (evaluate comp339))
    (evaluate comp340)
    (one-off comp339)
  )
)
(:action evaluate-comp340-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (rebooted comp340)
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
  )
)
(:action evaluate-comp340-all-on
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (not (rebooted comp340))
    (running comp133)
    (running comp339)
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
    (all-on comp340)
  )
)
(:action evaluate-comp340-off-comp133
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (not (rebooted comp340))
    (not (running comp133))
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
    (one-off comp340)
  )
)
(:action evaluate-comp340-off-comp339
  :parameters ()
  :precondition (and
    (evaluate comp340)
    (not (rebooted comp340))
    (not (running comp339))
  )
  :effect (and
    (not (evaluate comp340))
    (evaluate comp341)
    (one-off comp340)
  )
)
(:action evaluate-comp341-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp341)
    (rebooted comp341)
  )
  :effect (and
    (not (evaluate comp341))
    (evaluate comp342)
  )
)
(:action evaluate-comp341-all-on
  :parameters ()
  :precondition (and
    (evaluate comp341)
    (not (rebooted comp341))
    (running comp340)
  )
  :effect (and
    (not (evaluate comp341))
    (evaluate comp342)
    (all-on comp341)
  )
)
(:action evaluate-comp341-off-comp340
  :parameters ()
  :precondition (and
    (evaluate comp341)
    (not (rebooted comp341))
    (not (running comp340))
  )
  :effect (and
    (not (evaluate comp341))
    (evaluate comp342)
    (one-off comp341)
  )
)
(:action evaluate-comp342-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp342)
    (rebooted comp342)
  )
  :effect (and
    (not (evaluate comp342))
    (evaluate comp343)
  )
)
(:action evaluate-comp342-all-on
  :parameters ()
  :precondition (and
    (evaluate comp342)
    (not (rebooted comp342))
    (running comp341)
  )
  :effect (and
    (not (evaluate comp342))
    (evaluate comp343)
    (all-on comp342)
  )
)
(:action evaluate-comp342-off-comp341
  :parameters ()
  :precondition (and
    (evaluate comp342)
    (not (rebooted comp342))
    (not (running comp341))
  )
  :effect (and
    (not (evaluate comp342))
    (evaluate comp343)
    (one-off comp342)
  )
)
(:action evaluate-comp343-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp343)
    (rebooted comp343)
  )
  :effect (and
    (not (evaluate comp343))
    (evaluate comp344)
  )
)
(:action evaluate-comp343-all-on
  :parameters ()
  :precondition (and
    (evaluate comp343)
    (not (rebooted comp343))
    (running comp342)
  )
  :effect (and
    (not (evaluate comp343))
    (evaluate comp344)
    (all-on comp343)
  )
)
(:action evaluate-comp343-off-comp342
  :parameters ()
  :precondition (and
    (evaluate comp343)
    (not (rebooted comp343))
    (not (running comp342))
  )
  :effect (and
    (not (evaluate comp343))
    (evaluate comp344)
    (one-off comp343)
  )
)
(:action evaluate-comp344-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp344)
    (rebooted comp344)
  )
  :effect (and
    (not (evaluate comp344))
    (evaluate comp345)
  )
)
(:action evaluate-comp344-all-on
  :parameters ()
  :precondition (and
    (evaluate comp344)
    (not (rebooted comp344))
    (running comp343)
  )
  :effect (and
    (not (evaluate comp344))
    (evaluate comp345)
    (all-on comp344)
  )
)
(:action evaluate-comp344-off-comp343
  :parameters ()
  :precondition (and
    (evaluate comp344)
    (not (rebooted comp344))
    (not (running comp343))
  )
  :effect (and
    (not (evaluate comp344))
    (evaluate comp345)
    (one-off comp344)
  )
)
(:action evaluate-comp345-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp345)
    (rebooted comp345)
  )
  :effect (and
    (not (evaluate comp345))
    (evaluate comp346)
  )
)
(:action evaluate-comp345-all-on
  :parameters ()
  :precondition (and
    (evaluate comp345)
    (not (rebooted comp345))
    (running comp344)
    (running comp414)
  )
  :effect (and
    (not (evaluate comp345))
    (evaluate comp346)
    (all-on comp345)
  )
)
(:action evaluate-comp345-off-comp344
  :parameters ()
  :precondition (and
    (evaluate comp345)
    (not (rebooted comp345))
    (not (running comp344))
  )
  :effect (and
    (not (evaluate comp345))
    (evaluate comp346)
    (one-off comp345)
  )
)
(:action evaluate-comp345-off-comp414
  :parameters ()
  :precondition (and
    (evaluate comp345)
    (not (rebooted comp345))
    (not (running comp414))
  )
  :effect (and
    (not (evaluate comp345))
    (evaluate comp346)
    (one-off comp345)
  )
)
(:action evaluate-comp346-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp346)
    (rebooted comp346)
  )
  :effect (and
    (not (evaluate comp346))
    (evaluate comp347)
  )
)
(:action evaluate-comp346-all-on
  :parameters ()
  :precondition (and
    (evaluate comp346)
    (not (rebooted comp346))
    (running comp345)
  )
  :effect (and
    (not (evaluate comp346))
    (evaluate comp347)
    (all-on comp346)
  )
)
(:action evaluate-comp346-off-comp345
  :parameters ()
  :precondition (and
    (evaluate comp346)
    (not (rebooted comp346))
    (not (running comp345))
  )
  :effect (and
    (not (evaluate comp346))
    (evaluate comp347)
    (one-off comp346)
  )
)
(:action evaluate-comp347-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp347)
    (rebooted comp347)
  )
  :effect (and
    (not (evaluate comp347))
    (evaluate comp348)
  )
)
(:action evaluate-comp347-all-on
  :parameters ()
  :precondition (and
    (evaluate comp347)
    (not (rebooted comp347))
    (running comp346)
  )
  :effect (and
    (not (evaluate comp347))
    (evaluate comp348)
    (all-on comp347)
  )
)
(:action evaluate-comp347-off-comp346
  :parameters ()
  :precondition (and
    (evaluate comp347)
    (not (rebooted comp347))
    (not (running comp346))
  )
  :effect (and
    (not (evaluate comp347))
    (evaluate comp348)
    (one-off comp347)
  )
)
(:action evaluate-comp348-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp348)
    (rebooted comp348)
  )
  :effect (and
    (not (evaluate comp348))
    (evaluate comp349)
  )
)
(:action evaluate-comp348-all-on
  :parameters ()
  :precondition (and
    (evaluate comp348)
    (not (rebooted comp348))
    (running comp347)
  )
  :effect (and
    (not (evaluate comp348))
    (evaluate comp349)
    (all-on comp348)
  )
)
(:action evaluate-comp348-off-comp347
  :parameters ()
  :precondition (and
    (evaluate comp348)
    (not (rebooted comp348))
    (not (running comp347))
  )
  :effect (and
    (not (evaluate comp348))
    (evaluate comp349)
    (one-off comp348)
  )
)
(:action evaluate-comp349-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp349)
    (rebooted comp349)
  )
  :effect (and
    (not (evaluate comp349))
    (evaluate comp350)
  )
)
(:action evaluate-comp349-all-on
  :parameters ()
  :precondition (and
    (evaluate comp349)
    (not (rebooted comp349))
    (running comp348)
  )
  :effect (and
    (not (evaluate comp349))
    (evaluate comp350)
    (all-on comp349)
  )
)
(:action evaluate-comp349-off-comp348
  :parameters ()
  :precondition (and
    (evaluate comp349)
    (not (rebooted comp349))
    (not (running comp348))
  )
  :effect (and
    (not (evaluate comp349))
    (evaluate comp350)
    (one-off comp349)
  )
)
(:action evaluate-comp350-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp350)
    (rebooted comp350)
  )
  :effect (and
    (not (evaluate comp350))
    (evaluate comp351)
  )
)
(:action evaluate-comp350-all-on
  :parameters ()
  :precondition (and
    (evaluate comp350)
    (not (rebooted comp350))
    (running comp189)
    (running comp349)
  )
  :effect (and
    (not (evaluate comp350))
    (evaluate comp351)
    (all-on comp350)
  )
)
(:action evaluate-comp350-off-comp189
  :parameters ()
  :precondition (and
    (evaluate comp350)
    (not (rebooted comp350))
    (not (running comp189))
  )
  :effect (and
    (not (evaluate comp350))
    (evaluate comp351)
    (one-off comp350)
  )
)
(:action evaluate-comp350-off-comp349
  :parameters ()
  :precondition (and
    (evaluate comp350)
    (not (rebooted comp350))
    (not (running comp349))
  )
  :effect (and
    (not (evaluate comp350))
    (evaluate comp351)
    (one-off comp350)
  )
)
(:action evaluate-comp351-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp351)
    (rebooted comp351)
  )
  :effect (and
    (not (evaluate comp351))
    (evaluate comp352)
  )
)
(:action evaluate-comp351-all-on
  :parameters ()
  :precondition (and
    (evaluate comp351)
    (not (rebooted comp351))
    (running comp350)
  )
  :effect (and
    (not (evaluate comp351))
    (evaluate comp352)
    (all-on comp351)
  )
)
(:action evaluate-comp351-off-comp350
  :parameters ()
  :precondition (and
    (evaluate comp351)
    (not (rebooted comp351))
    (not (running comp350))
  )
  :effect (and
    (not (evaluate comp351))
    (evaluate comp352)
    (one-off comp351)
  )
)
(:action evaluate-comp352-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp352)
    (rebooted comp352)
  )
  :effect (and
    (not (evaluate comp352))
    (evaluate comp353)
  )
)
(:action evaluate-comp352-all-on
  :parameters ()
  :precondition (and
    (evaluate comp352)
    (not (rebooted comp352))
    (running comp351)
    (running comp657)
  )
  :effect (and
    (not (evaluate comp352))
    (evaluate comp353)
    (all-on comp352)
  )
)
(:action evaluate-comp352-off-comp351
  :parameters ()
  :precondition (and
    (evaluate comp352)
    (not (rebooted comp352))
    (not (running comp351))
  )
  :effect (and
    (not (evaluate comp352))
    (evaluate comp353)
    (one-off comp352)
  )
)
(:action evaluate-comp352-off-comp657
  :parameters ()
  :precondition (and
    (evaluate comp352)
    (not (rebooted comp352))
    (not (running comp657))
  )
  :effect (and
    (not (evaluate comp352))
    (evaluate comp353)
    (one-off comp352)
  )
)
(:action evaluate-comp353-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp353)
    (rebooted comp353)
  )
  :effect (and
    (not (evaluate comp353))
    (evaluate comp354)
  )
)
(:action evaluate-comp353-all-on
  :parameters ()
  :precondition (and
    (evaluate comp353)
    (not (rebooted comp353))
    (running comp352)
    (running comp419)
  )
  :effect (and
    (not (evaluate comp353))
    (evaluate comp354)
    (all-on comp353)
  )
)
(:action evaluate-comp353-off-comp352
  :parameters ()
  :precondition (and
    (evaluate comp353)
    (not (rebooted comp353))
    (not (running comp352))
  )
  :effect (and
    (not (evaluate comp353))
    (evaluate comp354)
    (one-off comp353)
  )
)
(:action evaluate-comp353-off-comp419
  :parameters ()
  :precondition (and
    (evaluate comp353)
    (not (rebooted comp353))
    (not (running comp419))
  )
  :effect (and
    (not (evaluate comp353))
    (evaluate comp354)
    (one-off comp353)
  )
)
(:action evaluate-comp354-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp354)
    (rebooted comp354)
  )
  :effect (and
    (not (evaluate comp354))
    (evaluate comp355)
  )
)
(:action evaluate-comp354-all-on
  :parameters ()
  :precondition (and
    (evaluate comp354)
    (not (rebooted comp354))
    (running comp353)
  )
  :effect (and
    (not (evaluate comp354))
    (evaluate comp355)
    (all-on comp354)
  )
)
(:action evaluate-comp354-off-comp353
  :parameters ()
  :precondition (and
    (evaluate comp354)
    (not (rebooted comp354))
    (not (running comp353))
  )
  :effect (and
    (not (evaluate comp354))
    (evaluate comp355)
    (one-off comp354)
  )
)
(:action evaluate-comp355-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (rebooted comp355)
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
  )
)
(:action evaluate-comp355-all-on
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (not (rebooted comp355))
    (running comp12)
    (running comp354)
    (running comp521)
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
    (all-on comp355)
  )
)
(:action evaluate-comp355-off-comp12
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (not (rebooted comp355))
    (not (running comp12))
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
    (one-off comp355)
  )
)
(:action evaluate-comp355-off-comp354
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (not (rebooted comp355))
    (not (running comp354))
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
    (one-off comp355)
  )
)
(:action evaluate-comp355-off-comp521
  :parameters ()
  :precondition (and
    (evaluate comp355)
    (not (rebooted comp355))
    (not (running comp521))
  )
  :effect (and
    (not (evaluate comp355))
    (evaluate comp356)
    (one-off comp355)
  )
)
(:action evaluate-comp356-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp356)
    (rebooted comp356)
  )
  :effect (and
    (not (evaluate comp356))
    (evaluate comp357)
  )
)
(:action evaluate-comp356-all-on
  :parameters ()
  :precondition (and
    (evaluate comp356)
    (not (rebooted comp356))
    (running comp355)
  )
  :effect (and
    (not (evaluate comp356))
    (evaluate comp357)
    (all-on comp356)
  )
)
(:action evaluate-comp356-off-comp355
  :parameters ()
  :precondition (and
    (evaluate comp356)
    (not (rebooted comp356))
    (not (running comp355))
  )
  :effect (and
    (not (evaluate comp356))
    (evaluate comp357)
    (one-off comp356)
  )
)
(:action evaluate-comp357-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp357)
    (rebooted comp357)
  )
  :effect (and
    (not (evaluate comp357))
    (evaluate comp358)
  )
)
(:action evaluate-comp357-all-on
  :parameters ()
  :precondition (and
    (evaluate comp357)
    (not (rebooted comp357))
    (running comp64)
    (running comp356)
  )
  :effect (and
    (not (evaluate comp357))
    (evaluate comp358)
    (all-on comp357)
  )
)
(:action evaluate-comp357-off-comp64
  :parameters ()
  :precondition (and
    (evaluate comp357)
    (not (rebooted comp357))
    (not (running comp64))
  )
  :effect (and
    (not (evaluate comp357))
    (evaluate comp358)
    (one-off comp357)
  )
)
(:action evaluate-comp357-off-comp356
  :parameters ()
  :precondition (and
    (evaluate comp357)
    (not (rebooted comp357))
    (not (running comp356))
  )
  :effect (and
    (not (evaluate comp357))
    (evaluate comp358)
    (one-off comp357)
  )
)
(:action evaluate-comp358-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp358)
    (rebooted comp358)
  )
  :effect (and
    (not (evaluate comp358))
    (evaluate comp359)
  )
)
(:action evaluate-comp358-all-on
  :parameters ()
  :precondition (and
    (evaluate comp358)
    (not (rebooted comp358))
    (running comp357)
  )
  :effect (and
    (not (evaluate comp358))
    (evaluate comp359)
    (all-on comp358)
  )
)
(:action evaluate-comp358-off-comp357
  :parameters ()
  :precondition (and
    (evaluate comp358)
    (not (rebooted comp358))
    (not (running comp357))
  )
  :effect (and
    (not (evaluate comp358))
    (evaluate comp359)
    (one-off comp358)
  )
)
(:action evaluate-comp359-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (rebooted comp359)
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
  )
)
(:action evaluate-comp359-all-on
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (not (rebooted comp359))
    (running comp358)
    (running comp432)
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
    (all-on comp359)
  )
)
(:action evaluate-comp359-off-comp358
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (not (rebooted comp359))
    (not (running comp358))
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
    (one-off comp359)
  )
)
(:action evaluate-comp359-off-comp432
  :parameters ()
  :precondition (and
    (evaluate comp359)
    (not (rebooted comp359))
    (not (running comp432))
  )
  :effect (and
    (not (evaluate comp359))
    (evaluate comp360)
    (one-off comp359)
  )
)
(:action evaluate-comp360-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp360)
    (rebooted comp360)
  )
  :effect (and
    (not (evaluate comp360))
    (evaluate comp361)
  )
)
(:action evaluate-comp360-all-on
  :parameters ()
  :precondition (and
    (evaluate comp360)
    (not (rebooted comp360))
    (running comp359)
  )
  :effect (and
    (not (evaluate comp360))
    (evaluate comp361)
    (all-on comp360)
  )
)
(:action evaluate-comp360-off-comp359
  :parameters ()
  :precondition (and
    (evaluate comp360)
    (not (rebooted comp360))
    (not (running comp359))
  )
  :effect (and
    (not (evaluate comp360))
    (evaluate comp361)
    (one-off comp360)
  )
)
(:action evaluate-comp361-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp361)
    (rebooted comp361)
  )
  :effect (and
    (not (evaluate comp361))
    (evaluate comp362)
  )
)
(:action evaluate-comp361-all-on
  :parameters ()
  :precondition (and
    (evaluate comp361)
    (not (rebooted comp361))
    (running comp360)
  )
  :effect (and
    (not (evaluate comp361))
    (evaluate comp362)
    (all-on comp361)
  )
)
(:action evaluate-comp361-off-comp360
  :parameters ()
  :precondition (and
    (evaluate comp361)
    (not (rebooted comp361))
    (not (running comp360))
  )
  :effect (and
    (not (evaluate comp361))
    (evaluate comp362)
    (one-off comp361)
  )
)
(:action evaluate-comp362-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp362)
    (rebooted comp362)
  )
  :effect (and
    (not (evaluate comp362))
    (evaluate comp363)
  )
)
(:action evaluate-comp362-all-on
  :parameters ()
  :precondition (and
    (evaluate comp362)
    (not (rebooted comp362))
    (running comp361)
  )
  :effect (and
    (not (evaluate comp362))
    (evaluate comp363)
    (all-on comp362)
  )
)
(:action evaluate-comp362-off-comp361
  :parameters ()
  :precondition (and
    (evaluate comp362)
    (not (rebooted comp362))
    (not (running comp361))
  )
  :effect (and
    (not (evaluate comp362))
    (evaluate comp363)
    (one-off comp362)
  )
)
(:action evaluate-comp363-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp363)
    (rebooted comp363)
  )
  :effect (and
    (not (evaluate comp363))
    (evaluate comp364)
  )
)
(:action evaluate-comp363-all-on
  :parameters ()
  :precondition (and
    (evaluate comp363)
    (not (rebooted comp363))
    (running comp362)
  )
  :effect (and
    (not (evaluate comp363))
    (evaluate comp364)
    (all-on comp363)
  )
)
(:action evaluate-comp363-off-comp362
  :parameters ()
  :precondition (and
    (evaluate comp363)
    (not (rebooted comp363))
    (not (running comp362))
  )
  :effect (and
    (not (evaluate comp363))
    (evaluate comp364)
    (one-off comp363)
  )
)
(:action evaluate-comp364-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp364)
    (rebooted comp364)
  )
  :effect (and
    (not (evaluate comp364))
    (evaluate comp365)
  )
)
(:action evaluate-comp364-all-on
  :parameters ()
  :precondition (and
    (evaluate comp364)
    (not (rebooted comp364))
    (running comp363)
    (running comp461)
  )
  :effect (and
    (not (evaluate comp364))
    (evaluate comp365)
    (all-on comp364)
  )
)
(:action evaluate-comp364-off-comp363
  :parameters ()
  :precondition (and
    (evaluate comp364)
    (not (rebooted comp364))
    (not (running comp363))
  )
  :effect (and
    (not (evaluate comp364))
    (evaluate comp365)
    (one-off comp364)
  )
)
(:action evaluate-comp364-off-comp461
  :parameters ()
  :precondition (and
    (evaluate comp364)
    (not (rebooted comp364))
    (not (running comp461))
  )
  :effect (and
    (not (evaluate comp364))
    (evaluate comp365)
    (one-off comp364)
  )
)
(:action evaluate-comp365-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp365)
    (rebooted comp365)
  )
  :effect (and
    (not (evaluate comp365))
    (evaluate comp366)
  )
)
(:action evaluate-comp365-all-on
  :parameters ()
  :precondition (and
    (evaluate comp365)
    (not (rebooted comp365))
    (running comp364)
  )
  :effect (and
    (not (evaluate comp365))
    (evaluate comp366)
    (all-on comp365)
  )
)
(:action evaluate-comp365-off-comp364
  :parameters ()
  :precondition (and
    (evaluate comp365)
    (not (rebooted comp365))
    (not (running comp364))
  )
  :effect (and
    (not (evaluate comp365))
    (evaluate comp366)
    (one-off comp365)
  )
)
(:action evaluate-comp366-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp366)
    (rebooted comp366)
  )
  :effect (and
    (not (evaluate comp366))
    (evaluate comp367)
  )
)
(:action evaluate-comp366-all-on
  :parameters ()
  :precondition (and
    (evaluate comp366)
    (not (rebooted comp366))
    (running comp365)
    (running comp569)
  )
  :effect (and
    (not (evaluate comp366))
    (evaluate comp367)
    (all-on comp366)
  )
)
(:action evaluate-comp366-off-comp365
  :parameters ()
  :precondition (and
    (evaluate comp366)
    (not (rebooted comp366))
    (not (running comp365))
  )
  :effect (and
    (not (evaluate comp366))
    (evaluate comp367)
    (one-off comp366)
  )
)
(:action evaluate-comp366-off-comp569
  :parameters ()
  :precondition (and
    (evaluate comp366)
    (not (rebooted comp366))
    (not (running comp569))
  )
  :effect (and
    (not (evaluate comp366))
    (evaluate comp367)
    (one-off comp366)
  )
)
(:action evaluate-comp367-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (rebooted comp367)
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
  )
)
(:action evaluate-comp367-all-on
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (not (rebooted comp367))
    (running comp366)
    (running comp933)
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
    (all-on comp367)
  )
)
(:action evaluate-comp367-off-comp366
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (not (rebooted comp367))
    (not (running comp366))
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
    (one-off comp367)
  )
)
(:action evaluate-comp367-off-comp933
  :parameters ()
  :precondition (and
    (evaluate comp367)
    (not (rebooted comp367))
    (not (running comp933))
  )
  :effect (and
    (not (evaluate comp367))
    (evaluate comp368)
    (one-off comp367)
  )
)
(:action evaluate-comp368-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp368)
    (rebooted comp368)
  )
  :effect (and
    (not (evaluate comp368))
    (evaluate comp369)
  )
)
(:action evaluate-comp368-all-on
  :parameters ()
  :precondition (and
    (evaluate comp368)
    (not (rebooted comp368))
    (running comp367)
  )
  :effect (and
    (not (evaluate comp368))
    (evaluate comp369)
    (all-on comp368)
  )
)
(:action evaluate-comp368-off-comp367
  :parameters ()
  :precondition (and
    (evaluate comp368)
    (not (rebooted comp368))
    (not (running comp367))
  )
  :effect (and
    (not (evaluate comp368))
    (evaluate comp369)
    (one-off comp368)
  )
)
(:action evaluate-comp369-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp369)
    (rebooted comp369)
  )
  :effect (and
    (not (evaluate comp369))
    (evaluate comp370)
  )
)
(:action evaluate-comp369-all-on
  :parameters ()
  :precondition (and
    (evaluate comp369)
    (not (rebooted comp369))
    (running comp368)
  )
  :effect (and
    (not (evaluate comp369))
    (evaluate comp370)
    (all-on comp369)
  )
)
(:action evaluate-comp369-off-comp368
  :parameters ()
  :precondition (and
    (evaluate comp369)
    (not (rebooted comp369))
    (not (running comp368))
  )
  :effect (and
    (not (evaluate comp369))
    (evaluate comp370)
    (one-off comp369)
  )
)
(:action evaluate-comp370-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp370)
    (rebooted comp370)
  )
  :effect (and
    (not (evaluate comp370))
    (evaluate comp371)
  )
)
(:action evaluate-comp370-all-on
  :parameters ()
  :precondition (and
    (evaluate comp370)
    (not (rebooted comp370))
    (running comp369)
  )
  :effect (and
    (not (evaluate comp370))
    (evaluate comp371)
    (all-on comp370)
  )
)
(:action evaluate-comp370-off-comp369
  :parameters ()
  :precondition (and
    (evaluate comp370)
    (not (rebooted comp370))
    (not (running comp369))
  )
  :effect (and
    (not (evaluate comp370))
    (evaluate comp371)
    (one-off comp370)
  )
)
(:action evaluate-comp371-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (rebooted comp371)
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
  )
)
(:action evaluate-comp371-all-on
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (not (rebooted comp371))
    (running comp1)
    (running comp370)
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
    (all-on comp371)
  )
)
(:action evaluate-comp371-off-comp1
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (not (rebooted comp371))
    (not (running comp1))
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
    (one-off comp371)
  )
)
(:action evaluate-comp371-off-comp370
  :parameters ()
  :precondition (and
    (evaluate comp371)
    (not (rebooted comp371))
    (not (running comp370))
  )
  :effect (and
    (not (evaluate comp371))
    (evaluate comp372)
    (one-off comp371)
  )
)
(:action evaluate-comp372-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp372)
    (rebooted comp372)
  )
  :effect (and
    (not (evaluate comp372))
    (evaluate comp373)
  )
)
(:action evaluate-comp372-all-on
  :parameters ()
  :precondition (and
    (evaluate comp372)
    (not (rebooted comp372))
    (running comp371)
  )
  :effect (and
    (not (evaluate comp372))
    (evaluate comp373)
    (all-on comp372)
  )
)
(:action evaluate-comp372-off-comp371
  :parameters ()
  :precondition (and
    (evaluate comp372)
    (not (rebooted comp372))
    (not (running comp371))
  )
  :effect (and
    (not (evaluate comp372))
    (evaluate comp373)
    (one-off comp372)
  )
)
(:action evaluate-comp373-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (rebooted comp373)
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
  )
)
(:action evaluate-comp373-all-on
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (not (rebooted comp373))
    (running comp171)
    (running comp372)
    (running comp765)
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
    (all-on comp373)
  )
)
(:action evaluate-comp373-off-comp171
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (not (rebooted comp373))
    (not (running comp171))
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
    (one-off comp373)
  )
)
(:action evaluate-comp373-off-comp372
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (not (rebooted comp373))
    (not (running comp372))
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
    (one-off comp373)
  )
)
(:action evaluate-comp373-off-comp765
  :parameters ()
  :precondition (and
    (evaluate comp373)
    (not (rebooted comp373))
    (not (running comp765))
  )
  :effect (and
    (not (evaluate comp373))
    (evaluate comp374)
    (one-off comp373)
  )
)
(:action evaluate-comp374-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp374)
    (rebooted comp374)
  )
  :effect (and
    (not (evaluate comp374))
    (evaluate comp375)
  )
)
(:action evaluate-comp374-all-on
  :parameters ()
  :precondition (and
    (evaluate comp374)
    (not (rebooted comp374))
    (running comp373)
  )
  :effect (and
    (not (evaluate comp374))
    (evaluate comp375)
    (all-on comp374)
  )
)
(:action evaluate-comp374-off-comp373
  :parameters ()
  :precondition (and
    (evaluate comp374)
    (not (rebooted comp374))
    (not (running comp373))
  )
  :effect (and
    (not (evaluate comp374))
    (evaluate comp375)
    (one-off comp374)
  )
)
(:action evaluate-comp375-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp375)
    (rebooted comp375)
  )
  :effect (and
    (not (evaluate comp375))
    (evaluate comp376)
  )
)
(:action evaluate-comp375-all-on
  :parameters ()
  :precondition (and
    (evaluate comp375)
    (not (rebooted comp375))
    (running comp374)
  )
  :effect (and
    (not (evaluate comp375))
    (evaluate comp376)
    (all-on comp375)
  )
)
(:action evaluate-comp375-off-comp374
  :parameters ()
  :precondition (and
    (evaluate comp375)
    (not (rebooted comp375))
    (not (running comp374))
  )
  :effect (and
    (not (evaluate comp375))
    (evaluate comp376)
    (one-off comp375)
  )
)
(:action evaluate-comp376-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (rebooted comp376)
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
  )
)
(:action evaluate-comp376-all-on
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (not (rebooted comp376))
    (running comp375)
    (running comp839)
    (running comp853)
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
    (all-on comp376)
  )
)
(:action evaluate-comp376-off-comp375
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (not (rebooted comp376))
    (not (running comp375))
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
    (one-off comp376)
  )
)
(:action evaluate-comp376-off-comp839
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (not (rebooted comp376))
    (not (running comp839))
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
    (one-off comp376)
  )
)
(:action evaluate-comp376-off-comp853
  :parameters ()
  :precondition (and
    (evaluate comp376)
    (not (rebooted comp376))
    (not (running comp853))
  )
  :effect (and
    (not (evaluate comp376))
    (evaluate comp377)
    (one-off comp376)
  )
)
(:action evaluate-comp377-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp377)
    (rebooted comp377)
  )
  :effect (and
    (not (evaluate comp377))
    (evaluate comp378)
  )
)
(:action evaluate-comp377-all-on
  :parameters ()
  :precondition (and
    (evaluate comp377)
    (not (rebooted comp377))
    (running comp113)
    (running comp376)
  )
  :effect (and
    (not (evaluate comp377))
    (evaluate comp378)
    (all-on comp377)
  )
)
(:action evaluate-comp377-off-comp113
  :parameters ()
  :precondition (and
    (evaluate comp377)
    (not (rebooted comp377))
    (not (running comp113))
  )
  :effect (and
    (not (evaluate comp377))
    (evaluate comp378)
    (one-off comp377)
  )
)
(:action evaluate-comp377-off-comp376
  :parameters ()
  :precondition (and
    (evaluate comp377)
    (not (rebooted comp377))
    (not (running comp376))
  )
  :effect (and
    (not (evaluate comp377))
    (evaluate comp378)
    (one-off comp377)
  )
)
(:action evaluate-comp378-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (rebooted comp378)
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
  )
)
(:action evaluate-comp378-all-on
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (not (rebooted comp378))
    (running comp377)
    (running comp513)
    (running comp516)
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
    (all-on comp378)
  )
)
(:action evaluate-comp378-off-comp377
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (not (rebooted comp378))
    (not (running comp377))
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
    (one-off comp378)
  )
)
(:action evaluate-comp378-off-comp513
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (not (rebooted comp378))
    (not (running comp513))
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
    (one-off comp378)
  )
)
(:action evaluate-comp378-off-comp516
  :parameters ()
  :precondition (and
    (evaluate comp378)
    (not (rebooted comp378))
    (not (running comp516))
  )
  :effect (and
    (not (evaluate comp378))
    (evaluate comp379)
    (one-off comp378)
  )
)
(:action evaluate-comp379-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp379)
    (rebooted comp379)
  )
  :effect (and
    (not (evaluate comp379))
    (evaluate comp380)
  )
)
(:action evaluate-comp379-all-on
  :parameters ()
  :precondition (and
    (evaluate comp379)
    (not (rebooted comp379))
    (running comp378)
  )
  :effect (and
    (not (evaluate comp379))
    (evaluate comp380)
    (all-on comp379)
  )
)
(:action evaluate-comp379-off-comp378
  :parameters ()
  :precondition (and
    (evaluate comp379)
    (not (rebooted comp379))
    (not (running comp378))
  )
  :effect (and
    (not (evaluate comp379))
    (evaluate comp380)
    (one-off comp379)
  )
)
(:action evaluate-comp380-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp380)
    (rebooted comp380)
  )
  :effect (and
    (not (evaluate comp380))
    (evaluate comp381)
  )
)
(:action evaluate-comp380-all-on
  :parameters ()
  :precondition (and
    (evaluate comp380)
    (not (rebooted comp380))
    (running comp379)
    (running comp653)
  )
  :effect (and
    (not (evaluate comp380))
    (evaluate comp381)
    (all-on comp380)
  )
)
(:action evaluate-comp380-off-comp379
  :parameters ()
  :precondition (and
    (evaluate comp380)
    (not (rebooted comp380))
    (not (running comp379))
  )
  :effect (and
    (not (evaluate comp380))
    (evaluate comp381)
    (one-off comp380)
  )
)
(:action evaluate-comp380-off-comp653
  :parameters ()
  :precondition (and
    (evaluate comp380)
    (not (rebooted comp380))
    (not (running comp653))
  )
  :effect (and
    (not (evaluate comp380))
    (evaluate comp381)
    (one-off comp380)
  )
)
(:action evaluate-comp381-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp381)
    (rebooted comp381)
  )
  :effect (and
    (not (evaluate comp381))
    (evaluate comp382)
  )
)
(:action evaluate-comp381-all-on
  :parameters ()
  :precondition (and
    (evaluate comp381)
    (not (rebooted comp381))
    (running comp380)
    (running comp943)
  )
  :effect (and
    (not (evaluate comp381))
    (evaluate comp382)
    (all-on comp381)
  )
)
(:action evaluate-comp381-off-comp380
  :parameters ()
  :precondition (and
    (evaluate comp381)
    (not (rebooted comp381))
    (not (running comp380))
  )
  :effect (and
    (not (evaluate comp381))
    (evaluate comp382)
    (one-off comp381)
  )
)
(:action evaluate-comp381-off-comp943
  :parameters ()
  :precondition (and
    (evaluate comp381)
    (not (rebooted comp381))
    (not (running comp943))
  )
  :effect (and
    (not (evaluate comp381))
    (evaluate comp382)
    (one-off comp381)
  )
)
(:action evaluate-comp382-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp382)
    (rebooted comp382)
  )
  :effect (and
    (not (evaluate comp382))
    (evaluate comp383)
  )
)
(:action evaluate-comp382-all-on
  :parameters ()
  :precondition (and
    (evaluate comp382)
    (not (rebooted comp382))
    (running comp381)
  )
  :effect (and
    (not (evaluate comp382))
    (evaluate comp383)
    (all-on comp382)
  )
)
(:action evaluate-comp382-off-comp381
  :parameters ()
  :precondition (and
    (evaluate comp382)
    (not (rebooted comp382))
    (not (running comp381))
  )
  :effect (and
    (not (evaluate comp382))
    (evaluate comp383)
    (one-off comp382)
  )
)
(:action evaluate-comp383-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp383)
    (rebooted comp383)
  )
  :effect (and
    (not (evaluate comp383))
    (evaluate comp384)
  )
)
(:action evaluate-comp383-all-on
  :parameters ()
  :precondition (and
    (evaluate comp383)
    (not (rebooted comp383))
    (running comp382)
  )
  :effect (and
    (not (evaluate comp383))
    (evaluate comp384)
    (all-on comp383)
  )
)
(:action evaluate-comp383-off-comp382
  :parameters ()
  :precondition (and
    (evaluate comp383)
    (not (rebooted comp383))
    (not (running comp382))
  )
  :effect (and
    (not (evaluate comp383))
    (evaluate comp384)
    (one-off comp383)
  )
)
(:action evaluate-comp384-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp384)
    (rebooted comp384)
  )
  :effect (and
    (not (evaluate comp384))
    (evaluate comp385)
  )
)
(:action evaluate-comp384-all-on
  :parameters ()
  :precondition (and
    (evaluate comp384)
    (not (rebooted comp384))
    (running comp64)
    (running comp383)
  )
  :effect (and
    (not (evaluate comp384))
    (evaluate comp385)
    (all-on comp384)
  )
)
(:action evaluate-comp384-off-comp64
  :parameters ()
  :precondition (and
    (evaluate comp384)
    (not (rebooted comp384))
    (not (running comp64))
  )
  :effect (and
    (not (evaluate comp384))
    (evaluate comp385)
    (one-off comp384)
  )
)
(:action evaluate-comp384-off-comp383
  :parameters ()
  :precondition (and
    (evaluate comp384)
    (not (rebooted comp384))
    (not (running comp383))
  )
  :effect (and
    (not (evaluate comp384))
    (evaluate comp385)
    (one-off comp384)
  )
)
(:action evaluate-comp385-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (rebooted comp385)
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
  )
)
(:action evaluate-comp385-all-on
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (not (rebooted comp385))
    (running comp384)
    (running comp611)
    (running comp847)
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
    (all-on comp385)
  )
)
(:action evaluate-comp385-off-comp384
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (not (rebooted comp385))
    (not (running comp384))
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
    (one-off comp385)
  )
)
(:action evaluate-comp385-off-comp611
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (not (rebooted comp385))
    (not (running comp611))
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
    (one-off comp385)
  )
)
(:action evaluate-comp385-off-comp847
  :parameters ()
  :precondition (and
    (evaluate comp385)
    (not (rebooted comp385))
    (not (running comp847))
  )
  :effect (and
    (not (evaluate comp385))
    (evaluate comp386)
    (one-off comp385)
  )
)
(:action evaluate-comp386-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp386)
    (rebooted comp386)
  )
  :effect (and
    (not (evaluate comp386))
    (evaluate comp387)
  )
)
(:action evaluate-comp386-all-on
  :parameters ()
  :precondition (and
    (evaluate comp386)
    (not (rebooted comp386))
    (running comp385)
  )
  :effect (and
    (not (evaluate comp386))
    (evaluate comp387)
    (all-on comp386)
  )
)
(:action evaluate-comp386-off-comp385
  :parameters ()
  :precondition (and
    (evaluate comp386)
    (not (rebooted comp386))
    (not (running comp385))
  )
  :effect (and
    (not (evaluate comp386))
    (evaluate comp387)
    (one-off comp386)
  )
)
(:action evaluate-comp387-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp387)
    (rebooted comp387)
  )
  :effect (and
    (not (evaluate comp387))
    (evaluate comp388)
  )
)
(:action evaluate-comp387-all-on
  :parameters ()
  :precondition (and
    (evaluate comp387)
    (not (rebooted comp387))
    (running comp386)
  )
  :effect (and
    (not (evaluate comp387))
    (evaluate comp388)
    (all-on comp387)
  )
)
(:action evaluate-comp387-off-comp386
  :parameters ()
  :precondition (and
    (evaluate comp387)
    (not (rebooted comp387))
    (not (running comp386))
  )
  :effect (and
    (not (evaluate comp387))
    (evaluate comp388)
    (one-off comp387)
  )
)
(:action evaluate-comp388-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp388)
    (rebooted comp388)
  )
  :effect (and
    (not (evaluate comp388))
    (evaluate comp389)
  )
)
(:action evaluate-comp388-all-on
  :parameters ()
  :precondition (and
    (evaluate comp388)
    (not (rebooted comp388))
    (running comp387)
  )
  :effect (and
    (not (evaluate comp388))
    (evaluate comp389)
    (all-on comp388)
  )
)
(:action evaluate-comp388-off-comp387
  :parameters ()
  :precondition (and
    (evaluate comp388)
    (not (rebooted comp388))
    (not (running comp387))
  )
  :effect (and
    (not (evaluate comp388))
    (evaluate comp389)
    (one-off comp388)
  )
)
(:action evaluate-comp389-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp389)
    (rebooted comp389)
  )
  :effect (and
    (not (evaluate comp389))
    (evaluate comp390)
  )
)
(:action evaluate-comp389-all-on
  :parameters ()
  :precondition (and
    (evaluate comp389)
    (not (rebooted comp389))
    (running comp388)
    (running comp732)
  )
  :effect (and
    (not (evaluate comp389))
    (evaluate comp390)
    (all-on comp389)
  )
)
(:action evaluate-comp389-off-comp388
  :parameters ()
  :precondition (and
    (evaluate comp389)
    (not (rebooted comp389))
    (not (running comp388))
  )
  :effect (and
    (not (evaluate comp389))
    (evaluate comp390)
    (one-off comp389)
  )
)
(:action evaluate-comp389-off-comp732
  :parameters ()
  :precondition (and
    (evaluate comp389)
    (not (rebooted comp389))
    (not (running comp732))
  )
  :effect (and
    (not (evaluate comp389))
    (evaluate comp390)
    (one-off comp389)
  )
)
(:action evaluate-comp390-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (rebooted comp390)
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
  )
)
(:action evaluate-comp390-all-on
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (not (rebooted comp390))
    (running comp389)
    (running comp573)
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
    (all-on comp390)
  )
)
(:action evaluate-comp390-off-comp389
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (not (rebooted comp390))
    (not (running comp389))
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
    (one-off comp390)
  )
)
(:action evaluate-comp390-off-comp573
  :parameters ()
  :precondition (and
    (evaluate comp390)
    (not (rebooted comp390))
    (not (running comp573))
  )
  :effect (and
    (not (evaluate comp390))
    (evaluate comp391)
    (one-off comp390)
  )
)
(:action evaluate-comp391-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (rebooted comp391)
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
  )
)
(:action evaluate-comp391-all-on
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (not (rebooted comp391))
    (running comp85)
    (running comp356)
    (running comp390)
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
    (all-on comp391)
  )
)
(:action evaluate-comp391-off-comp85
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (not (rebooted comp391))
    (not (running comp85))
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
    (one-off comp391)
  )
)
(:action evaluate-comp391-off-comp356
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (not (rebooted comp391))
    (not (running comp356))
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
    (one-off comp391)
  )
)
(:action evaluate-comp391-off-comp390
  :parameters ()
  :precondition (and
    (evaluate comp391)
    (not (rebooted comp391))
    (not (running comp390))
  )
  :effect (and
    (not (evaluate comp391))
    (evaluate comp392)
    (one-off comp391)
  )
)
(:action evaluate-comp392-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (rebooted comp392)
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
  )
)
(:action evaluate-comp392-all-on
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (not (rebooted comp392))
    (running comp391)
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
    (all-on comp392)
  )
)
(:action evaluate-comp392-off-comp391
  :parameters ()
  :precondition (and
    (evaluate comp392)
    (not (rebooted comp392))
    (not (running comp391))
  )
  :effect (and
    (not (evaluate comp392))
    (evaluate comp393)
    (one-off comp392)
  )
)
(:action evaluate-comp393-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp393)
    (rebooted comp393)
  )
  :effect (and
    (not (evaluate comp393))
    (evaluate comp394)
  )
)
(:action evaluate-comp393-all-on
  :parameters ()
  :precondition (and
    (evaluate comp393)
    (not (rebooted comp393))
    (running comp392)
  )
  :effect (and
    (not (evaluate comp393))
    (evaluate comp394)
    (all-on comp393)
  )
)
(:action evaluate-comp393-off-comp392
  :parameters ()
  :precondition (and
    (evaluate comp393)
    (not (rebooted comp393))
    (not (running comp392))
  )
  :effect (and
    (not (evaluate comp393))
    (evaluate comp394)
    (one-off comp393)
  )
)
(:action evaluate-comp394-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp394)
    (rebooted comp394)
  )
  :effect (and
    (not (evaluate comp394))
    (evaluate comp395)
  )
)
(:action evaluate-comp394-all-on
  :parameters ()
  :precondition (and
    (evaluate comp394)
    (not (rebooted comp394))
    (running comp10)
    (running comp393)
  )
  :effect (and
    (not (evaluate comp394))
    (evaluate comp395)
    (all-on comp394)
  )
)
(:action evaluate-comp394-off-comp10
  :parameters ()
  :precondition (and
    (evaluate comp394)
    (not (rebooted comp394))
    (not (running comp10))
  )
  :effect (and
    (not (evaluate comp394))
    (evaluate comp395)
    (one-off comp394)
  )
)
(:action evaluate-comp394-off-comp393
  :parameters ()
  :precondition (and
    (evaluate comp394)
    (not (rebooted comp394))
    (not (running comp393))
  )
  :effect (and
    (not (evaluate comp394))
    (evaluate comp395)
    (one-off comp394)
  )
)
(:action evaluate-comp395-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (rebooted comp395)
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
  )
)
(:action evaluate-comp395-all-on
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (not (rebooted comp395))
    (running comp193)
    (running comp394)
    (running comp453)
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
    (all-on comp395)
  )
)
(:action evaluate-comp395-off-comp193
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (not (rebooted comp395))
    (not (running comp193))
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
    (one-off comp395)
  )
)
(:action evaluate-comp395-off-comp394
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (not (rebooted comp395))
    (not (running comp394))
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
    (one-off comp395)
  )
)
(:action evaluate-comp395-off-comp453
  :parameters ()
  :precondition (and
    (evaluate comp395)
    (not (rebooted comp395))
    (not (running comp453))
  )
  :effect (and
    (not (evaluate comp395))
    (evaluate comp396)
    (one-off comp395)
  )
)
(:action evaluate-comp396-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp396)
    (rebooted comp396)
  )
  :effect (and
    (not (evaluate comp396))
    (evaluate comp397)
  )
)
(:action evaluate-comp396-all-on
  :parameters ()
  :precondition (and
    (evaluate comp396)
    (not (rebooted comp396))
    (running comp395)
  )
  :effect (and
    (not (evaluate comp396))
    (evaluate comp397)
    (all-on comp396)
  )
)
(:action evaluate-comp396-off-comp395
  :parameters ()
  :precondition (and
    (evaluate comp396)
    (not (rebooted comp396))
    (not (running comp395))
  )
  :effect (and
    (not (evaluate comp396))
    (evaluate comp397)
    (one-off comp396)
  )
)
(:action evaluate-comp397-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp397)
    (rebooted comp397)
  )
  :effect (and
    (not (evaluate comp397))
    (evaluate comp398)
  )
)
(:action evaluate-comp397-all-on
  :parameters ()
  :precondition (and
    (evaluate comp397)
    (not (rebooted comp397))
    (running comp396)
  )
  :effect (and
    (not (evaluate comp397))
    (evaluate comp398)
    (all-on comp397)
  )
)
(:action evaluate-comp397-off-comp396
  :parameters ()
  :precondition (and
    (evaluate comp397)
    (not (rebooted comp397))
    (not (running comp396))
  )
  :effect (and
    (not (evaluate comp397))
    (evaluate comp398)
    (one-off comp397)
  )
)
(:action evaluate-comp398-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp398)
    (rebooted comp398)
  )
  :effect (and
    (not (evaluate comp398))
    (evaluate comp399)
  )
)
(:action evaluate-comp398-all-on
  :parameters ()
  :precondition (and
    (evaluate comp398)
    (not (rebooted comp398))
    (running comp397)
  )
  :effect (and
    (not (evaluate comp398))
    (evaluate comp399)
    (all-on comp398)
  )
)
(:action evaluate-comp398-off-comp397
  :parameters ()
  :precondition (and
    (evaluate comp398)
    (not (rebooted comp398))
    (not (running comp397))
  )
  :effect (and
    (not (evaluate comp398))
    (evaluate comp399)
    (one-off comp398)
  )
)
(:action evaluate-comp399-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (rebooted comp399)
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
  )
)
(:action evaluate-comp399-all-on
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (not (rebooted comp399))
    (running comp398)
    (running comp405)
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
    (all-on comp399)
  )
)
(:action evaluate-comp399-off-comp398
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (not (rebooted comp399))
    (not (running comp398))
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
    (one-off comp399)
  )
)
(:action evaluate-comp399-off-comp405
  :parameters ()
  :precondition (and
    (evaluate comp399)
    (not (rebooted comp399))
    (not (running comp405))
  )
  :effect (and
    (not (evaluate comp399))
    (evaluate comp400)
    (one-off comp399)
  )
)
(:action evaluate-comp400-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp400)
    (rebooted comp400)
  )
  :effect (and
    (not (evaluate comp400))
    (evaluate comp401)
  )
)
(:action evaluate-comp400-all-on
  :parameters ()
  :precondition (and
    (evaluate comp400)
    (not (rebooted comp400))
    (running comp399)
    (running comp956)
  )
  :effect (and
    (not (evaluate comp400))
    (evaluate comp401)
    (all-on comp400)
  )
)
(:action evaluate-comp400-off-comp399
  :parameters ()
  :precondition (and
    (evaluate comp400)
    (not (rebooted comp400))
    (not (running comp399))
  )
  :effect (and
    (not (evaluate comp400))
    (evaluate comp401)
    (one-off comp400)
  )
)
(:action evaluate-comp400-off-comp956
  :parameters ()
  :precondition (and
    (evaluate comp400)
    (not (rebooted comp400))
    (not (running comp956))
  )
  :effect (and
    (not (evaluate comp400))
    (evaluate comp401)
    (one-off comp400)
  )
)
(:action evaluate-comp401-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (rebooted comp401)
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
  )
)
(:action evaluate-comp401-all-on
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (not (rebooted comp401))
    (running comp378)
    (running comp400)
    (running comp436)
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
    (all-on comp401)
  )
)
(:action evaluate-comp401-off-comp378
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (not (rebooted comp401))
    (not (running comp378))
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
    (one-off comp401)
  )
)
(:action evaluate-comp401-off-comp400
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (not (rebooted comp401))
    (not (running comp400))
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
    (one-off comp401)
  )
)
(:action evaluate-comp401-off-comp436
  :parameters ()
  :precondition (and
    (evaluate comp401)
    (not (rebooted comp401))
    (not (running comp436))
  )
  :effect (and
    (not (evaluate comp401))
    (evaluate comp402)
    (one-off comp401)
  )
)
(:action evaluate-comp402-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp402)
    (rebooted comp402)
  )
  :effect (and
    (not (evaluate comp402))
    (evaluate comp403)
  )
)
(:action evaluate-comp402-all-on
  :parameters ()
  :precondition (and
    (evaluate comp402)
    (not (rebooted comp402))
    (running comp401)
  )
  :effect (and
    (not (evaluate comp402))
    (evaluate comp403)
    (all-on comp402)
  )
)
(:action evaluate-comp402-off-comp401
  :parameters ()
  :precondition (and
    (evaluate comp402)
    (not (rebooted comp402))
    (not (running comp401))
  )
  :effect (and
    (not (evaluate comp402))
    (evaluate comp403)
    (one-off comp402)
  )
)
(:action evaluate-comp403-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp403)
    (rebooted comp403)
  )
  :effect (and
    (not (evaluate comp403))
    (evaluate comp404)
  )
)
(:action evaluate-comp403-all-on
  :parameters ()
  :precondition (and
    (evaluate comp403)
    (not (rebooted comp403))
    (running comp283)
    (running comp402)
  )
  :effect (and
    (not (evaluate comp403))
    (evaluate comp404)
    (all-on comp403)
  )
)
(:action evaluate-comp403-off-comp283
  :parameters ()
  :precondition (and
    (evaluate comp403)
    (not (rebooted comp403))
    (not (running comp283))
  )
  :effect (and
    (not (evaluate comp403))
    (evaluate comp404)
    (one-off comp403)
  )
)
(:action evaluate-comp403-off-comp402
  :parameters ()
  :precondition (and
    (evaluate comp403)
    (not (rebooted comp403))
    (not (running comp402))
  )
  :effect (and
    (not (evaluate comp403))
    (evaluate comp404)
    (one-off comp403)
  )
)
(:action evaluate-comp404-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp404)
    (rebooted comp404)
  )
  :effect (and
    (not (evaluate comp404))
    (evaluate comp405)
  )
)
(:action evaluate-comp404-all-on
  :parameters ()
  :precondition (and
    (evaluate comp404)
    (not (rebooted comp404))
    (running comp26)
    (running comp403)
  )
  :effect (and
    (not (evaluate comp404))
    (evaluate comp405)
    (all-on comp404)
  )
)
(:action evaluate-comp404-off-comp26
  :parameters ()
  :precondition (and
    (evaluate comp404)
    (not (rebooted comp404))
    (not (running comp26))
  )
  :effect (and
    (not (evaluate comp404))
    (evaluate comp405)
    (one-off comp404)
  )
)
(:action evaluate-comp404-off-comp403
  :parameters ()
  :precondition (and
    (evaluate comp404)
    (not (rebooted comp404))
    (not (running comp403))
  )
  :effect (and
    (not (evaluate comp404))
    (evaluate comp405)
    (one-off comp404)
  )
)
(:action evaluate-comp405-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp405)
    (rebooted comp405)
  )
  :effect (and
    (not (evaluate comp405))
    (evaluate comp406)
  )
)
(:action evaluate-comp405-all-on
  :parameters ()
  :precondition (and
    (evaluate comp405)
    (not (rebooted comp405))
    (running comp404)
  )
  :effect (and
    (not (evaluate comp405))
    (evaluate comp406)
    (all-on comp405)
  )
)
(:action evaluate-comp405-off-comp404
  :parameters ()
  :precondition (and
    (evaluate comp405)
    (not (rebooted comp405))
    (not (running comp404))
  )
  :effect (and
    (not (evaluate comp405))
    (evaluate comp406)
    (one-off comp405)
  )
)
(:action evaluate-comp406-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp406)
    (rebooted comp406)
  )
  :effect (and
    (not (evaluate comp406))
    (evaluate comp407)
  )
)
(:action evaluate-comp406-all-on
  :parameters ()
  :precondition (and
    (evaluate comp406)
    (not (rebooted comp406))
    (running comp405)
  )
  :effect (and
    (not (evaluate comp406))
    (evaluate comp407)
    (all-on comp406)
  )
)
(:action evaluate-comp406-off-comp405
  :parameters ()
  :precondition (and
    (evaluate comp406)
    (not (rebooted comp406))
    (not (running comp405))
  )
  :effect (and
    (not (evaluate comp406))
    (evaluate comp407)
    (one-off comp406)
  )
)
(:action evaluate-comp407-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp407)
    (rebooted comp407)
  )
  :effect (and
    (not (evaluate comp407))
    (evaluate comp408)
  )
)
(:action evaluate-comp407-all-on
  :parameters ()
  :precondition (and
    (evaluate comp407)
    (not (rebooted comp407))
    (running comp406)
  )
  :effect (and
    (not (evaluate comp407))
    (evaluate comp408)
    (all-on comp407)
  )
)
(:action evaluate-comp407-off-comp406
  :parameters ()
  :precondition (and
    (evaluate comp407)
    (not (rebooted comp407))
    (not (running comp406))
  )
  :effect (and
    (not (evaluate comp407))
    (evaluate comp408)
    (one-off comp407)
  )
)
(:action evaluate-comp408-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp408)
    (rebooted comp408)
  )
  :effect (and
    (not (evaluate comp408))
    (evaluate comp409)
  )
)
(:action evaluate-comp408-all-on
  :parameters ()
  :precondition (and
    (evaluate comp408)
    (not (rebooted comp408))
    (running comp407)
  )
  :effect (and
    (not (evaluate comp408))
    (evaluate comp409)
    (all-on comp408)
  )
)
(:action evaluate-comp408-off-comp407
  :parameters ()
  :precondition (and
    (evaluate comp408)
    (not (rebooted comp408))
    (not (running comp407))
  )
  :effect (and
    (not (evaluate comp408))
    (evaluate comp409)
    (one-off comp408)
  )
)
(:action evaluate-comp409-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp409)
    (rebooted comp409)
  )
  :effect (and
    (not (evaluate comp409))
    (evaluate comp410)
  )
)
(:action evaluate-comp409-all-on
  :parameters ()
  :precondition (and
    (evaluate comp409)
    (not (rebooted comp409))
    (running comp408)
  )
  :effect (and
    (not (evaluate comp409))
    (evaluate comp410)
    (all-on comp409)
  )
)
(:action evaluate-comp409-off-comp408
  :parameters ()
  :precondition (and
    (evaluate comp409)
    (not (rebooted comp409))
    (not (running comp408))
  )
  :effect (and
    (not (evaluate comp409))
    (evaluate comp410)
    (one-off comp409)
  )
)
(:action evaluate-comp410-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp410)
    (rebooted comp410)
  )
  :effect (and
    (not (evaluate comp410))
    (evaluate comp411)
  )
)
(:action evaluate-comp410-all-on
  :parameters ()
  :precondition (and
    (evaluate comp410)
    (not (rebooted comp410))
    (running comp409)
  )
  :effect (and
    (not (evaluate comp410))
    (evaluate comp411)
    (all-on comp410)
  )
)
(:action evaluate-comp410-off-comp409
  :parameters ()
  :precondition (and
    (evaluate comp410)
    (not (rebooted comp410))
    (not (running comp409))
  )
  :effect (and
    (not (evaluate comp410))
    (evaluate comp411)
    (one-off comp410)
  )
)
(:action evaluate-comp411-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp411)
    (rebooted comp411)
  )
  :effect (and
    (not (evaluate comp411))
    (evaluate comp412)
  )
)
(:action evaluate-comp411-all-on
  :parameters ()
  :precondition (and
    (evaluate comp411)
    (not (rebooted comp411))
    (running comp410)
  )
  :effect (and
    (not (evaluate comp411))
    (evaluate comp412)
    (all-on comp411)
  )
)
(:action evaluate-comp411-off-comp410
  :parameters ()
  :precondition (and
    (evaluate comp411)
    (not (rebooted comp411))
    (not (running comp410))
  )
  :effect (and
    (not (evaluate comp411))
    (evaluate comp412)
    (one-off comp411)
  )
)
(:action evaluate-comp412-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp412)
    (rebooted comp412)
  )
  :effect (and
    (not (evaluate comp412))
    (evaluate comp413)
  )
)
(:action evaluate-comp412-all-on
  :parameters ()
  :precondition (and
    (evaluate comp412)
    (not (rebooted comp412))
    (running comp411)
  )
  :effect (and
    (not (evaluate comp412))
    (evaluate comp413)
    (all-on comp412)
  )
)
(:action evaluate-comp412-off-comp411
  :parameters ()
  :precondition (and
    (evaluate comp412)
    (not (rebooted comp412))
    (not (running comp411))
  )
  :effect (and
    (not (evaluate comp412))
    (evaluate comp413)
    (one-off comp412)
  )
)
(:action evaluate-comp413-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp413)
    (rebooted comp413)
  )
  :effect (and
    (not (evaluate comp413))
    (evaluate comp414)
  )
)
(:action evaluate-comp413-all-on
  :parameters ()
  :precondition (and
    (evaluate comp413)
    (not (rebooted comp413))
    (running comp412)
  )
  :effect (and
    (not (evaluate comp413))
    (evaluate comp414)
    (all-on comp413)
  )
)
(:action evaluate-comp413-off-comp412
  :parameters ()
  :precondition (and
    (evaluate comp413)
    (not (rebooted comp413))
    (not (running comp412))
  )
  :effect (and
    (not (evaluate comp413))
    (evaluate comp414)
    (one-off comp413)
  )
)
(:action evaluate-comp414-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp414)
    (rebooted comp414)
  )
  :effect (and
    (not (evaluate comp414))
    (evaluate comp415)
  )
)
(:action evaluate-comp414-all-on
  :parameters ()
  :precondition (and
    (evaluate comp414)
    (not (rebooted comp414))
    (running comp413)
  )
  :effect (and
    (not (evaluate comp414))
    (evaluate comp415)
    (all-on comp414)
  )
)
(:action evaluate-comp414-off-comp413
  :parameters ()
  :precondition (and
    (evaluate comp414)
    (not (rebooted comp414))
    (not (running comp413))
  )
  :effect (and
    (not (evaluate comp414))
    (evaluate comp415)
    (one-off comp414)
  )
)
(:action evaluate-comp415-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (rebooted comp415)
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
  )
)
(:action evaluate-comp415-all-on
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (not (rebooted comp415))
    (running comp414)
    (running comp726)
    (running comp907)
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
    (all-on comp415)
  )
)
(:action evaluate-comp415-off-comp414
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (not (rebooted comp415))
    (not (running comp414))
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
    (one-off comp415)
  )
)
(:action evaluate-comp415-off-comp726
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (not (rebooted comp415))
    (not (running comp726))
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
    (one-off comp415)
  )
)
(:action evaluate-comp415-off-comp907
  :parameters ()
  :precondition (and
    (evaluate comp415)
    (not (rebooted comp415))
    (not (running comp907))
  )
  :effect (and
    (not (evaluate comp415))
    (evaluate comp416)
    (one-off comp415)
  )
)
(:action evaluate-comp416-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp416)
    (rebooted comp416)
  )
  :effect (and
    (not (evaluate comp416))
    (evaluate comp417)
  )
)
(:action evaluate-comp416-all-on
  :parameters ()
  :precondition (and
    (evaluate comp416)
    (not (rebooted comp416))
    (running comp415)
  )
  :effect (and
    (not (evaluate comp416))
    (evaluate comp417)
    (all-on comp416)
  )
)
(:action evaluate-comp416-off-comp415
  :parameters ()
  :precondition (and
    (evaluate comp416)
    (not (rebooted comp416))
    (not (running comp415))
  )
  :effect (and
    (not (evaluate comp416))
    (evaluate comp417)
    (one-off comp416)
  )
)
(:action evaluate-comp417-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (rebooted comp417)
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
  )
)
(:action evaluate-comp417-all-on
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (not (rebooted comp417))
    (running comp300)
    (running comp416)
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
    (all-on comp417)
  )
)
(:action evaluate-comp417-off-comp300
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (not (rebooted comp417))
    (not (running comp300))
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
    (one-off comp417)
  )
)
(:action evaluate-comp417-off-comp416
  :parameters ()
  :precondition (and
    (evaluate comp417)
    (not (rebooted comp417))
    (not (running comp416))
  )
  :effect (and
    (not (evaluate comp417))
    (evaluate comp418)
    (one-off comp417)
  )
)
(:action evaluate-comp418-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp418)
    (rebooted comp418)
  )
  :effect (and
    (not (evaluate comp418))
    (evaluate comp419)
  )
)
(:action evaluate-comp418-all-on
  :parameters ()
  :precondition (and
    (evaluate comp418)
    (not (rebooted comp418))
    (running comp417)
  )
  :effect (and
    (not (evaluate comp418))
    (evaluate comp419)
    (all-on comp418)
  )
)
(:action evaluate-comp418-off-comp417
  :parameters ()
  :precondition (and
    (evaluate comp418)
    (not (rebooted comp418))
    (not (running comp417))
  )
  :effect (and
    (not (evaluate comp418))
    (evaluate comp419)
    (one-off comp418)
  )
)
(:action evaluate-comp419-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (rebooted comp419)
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
  )
)
(:action evaluate-comp419-all-on
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (not (rebooted comp419))
    (running comp145)
    (running comp418)
    (running comp571)
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
    (all-on comp419)
  )
)
(:action evaluate-comp419-off-comp145
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (not (rebooted comp419))
    (not (running comp145))
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
    (one-off comp419)
  )
)
(:action evaluate-comp419-off-comp418
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (not (rebooted comp419))
    (not (running comp418))
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
    (one-off comp419)
  )
)
(:action evaluate-comp419-off-comp571
  :parameters ()
  :precondition (and
    (evaluate comp419)
    (not (rebooted comp419))
    (not (running comp571))
  )
  :effect (and
    (not (evaluate comp419))
    (evaluate comp420)
    (one-off comp419)
  )
)
(:action evaluate-comp420-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp420)
    (rebooted comp420)
  )
  :effect (and
    (not (evaluate comp420))
    (evaluate comp421)
  )
)
(:action evaluate-comp420-all-on
  :parameters ()
  :precondition (and
    (evaluate comp420)
    (not (rebooted comp420))
    (running comp419)
  )
  :effect (and
    (not (evaluate comp420))
    (evaluate comp421)
    (all-on comp420)
  )
)
(:action evaluate-comp420-off-comp419
  :parameters ()
  :precondition (and
    (evaluate comp420)
    (not (rebooted comp420))
    (not (running comp419))
  )
  :effect (and
    (not (evaluate comp420))
    (evaluate comp421)
    (one-off comp420)
  )
)
(:action evaluate-comp421-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (rebooted comp421)
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
  )
)
(:action evaluate-comp421-all-on
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (not (rebooted comp421))
    (running comp420)
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
    (all-on comp421)
  )
)
(:action evaluate-comp421-off-comp420
  :parameters ()
  :precondition (and
    (evaluate comp421)
    (not (rebooted comp421))
    (not (running comp420))
  )
  :effect (and
    (not (evaluate comp421))
    (evaluate comp422)
    (one-off comp421)
  )
)
(:action evaluate-comp422-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp422)
    (rebooted comp422)
  )
  :effect (and
    (not (evaluate comp422))
    (evaluate comp423)
  )
)
(:action evaluate-comp422-all-on
  :parameters ()
  :precondition (and
    (evaluate comp422)
    (not (rebooted comp422))
    (running comp421)
  )
  :effect (and
    (not (evaluate comp422))
    (evaluate comp423)
    (all-on comp422)
  )
)
(:action evaluate-comp422-off-comp421
  :parameters ()
  :precondition (and
    (evaluate comp422)
    (not (rebooted comp422))
    (not (running comp421))
  )
  :effect (and
    (not (evaluate comp422))
    (evaluate comp423)
    (one-off comp422)
  )
)
(:action evaluate-comp423-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp423)
    (rebooted comp423)
  )
  :effect (and
    (not (evaluate comp423))
    (evaluate comp424)
  )
)
(:action evaluate-comp423-all-on
  :parameters ()
  :precondition (and
    (evaluate comp423)
    (not (rebooted comp423))
    (running comp422)
    (running comp514)
  )
  :effect (and
    (not (evaluate comp423))
    (evaluate comp424)
    (all-on comp423)
  )
)
(:action evaluate-comp423-off-comp422
  :parameters ()
  :precondition (and
    (evaluate comp423)
    (not (rebooted comp423))
    (not (running comp422))
  )
  :effect (and
    (not (evaluate comp423))
    (evaluate comp424)
    (one-off comp423)
  )
)
(:action evaluate-comp423-off-comp514
  :parameters ()
  :precondition (and
    (evaluate comp423)
    (not (rebooted comp423))
    (not (running comp514))
  )
  :effect (and
    (not (evaluate comp423))
    (evaluate comp424)
    (one-off comp423)
  )
)
(:action evaluate-comp424-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp424)
    (rebooted comp424)
  )
  :effect (and
    (not (evaluate comp424))
    (evaluate comp425)
  )
)
(:action evaluate-comp424-all-on
  :parameters ()
  :precondition (and
    (evaluate comp424)
    (not (rebooted comp424))
    (running comp423)
  )
  :effect (and
    (not (evaluate comp424))
    (evaluate comp425)
    (all-on comp424)
  )
)
(:action evaluate-comp424-off-comp423
  :parameters ()
  :precondition (and
    (evaluate comp424)
    (not (rebooted comp424))
    (not (running comp423))
  )
  :effect (and
    (not (evaluate comp424))
    (evaluate comp425)
    (one-off comp424)
  )
)
(:action evaluate-comp425-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (rebooted comp425)
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
  )
)
(:action evaluate-comp425-all-on
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (not (rebooted comp425))
    (running comp424)
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
    (all-on comp425)
  )
)
(:action evaluate-comp425-off-comp424
  :parameters ()
  :precondition (and
    (evaluate comp425)
    (not (rebooted comp425))
    (not (running comp424))
  )
  :effect (and
    (not (evaluate comp425))
    (evaluate comp426)
    (one-off comp425)
  )
)
(:action evaluate-comp426-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp426)
    (rebooted comp426)
  )
  :effect (and
    (not (evaluate comp426))
    (evaluate comp427)
  )
)
(:action evaluate-comp426-all-on
  :parameters ()
  :precondition (and
    (evaluate comp426)
    (not (rebooted comp426))
    (running comp425)
  )
  :effect (and
    (not (evaluate comp426))
    (evaluate comp427)
    (all-on comp426)
  )
)
(:action evaluate-comp426-off-comp425
  :parameters ()
  :precondition (and
    (evaluate comp426)
    (not (rebooted comp426))
    (not (running comp425))
  )
  :effect (and
    (not (evaluate comp426))
    (evaluate comp427)
    (one-off comp426)
  )
)
(:action evaluate-comp427-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp427)
    (rebooted comp427)
  )
  :effect (and
    (not (evaluate comp427))
    (evaluate comp428)
  )
)
(:action evaluate-comp427-all-on
  :parameters ()
  :precondition (and
    (evaluate comp427)
    (not (rebooted comp427))
    (running comp426)
  )
  :effect (and
    (not (evaluate comp427))
    (evaluate comp428)
    (all-on comp427)
  )
)
(:action evaluate-comp427-off-comp426
  :parameters ()
  :precondition (and
    (evaluate comp427)
    (not (rebooted comp427))
    (not (running comp426))
  )
  :effect (and
    (not (evaluate comp427))
    (evaluate comp428)
    (one-off comp427)
  )
)
(:action evaluate-comp428-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (rebooted comp428)
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
  )
)
(:action evaluate-comp428-all-on
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (not (rebooted comp428))
    (running comp259)
    (running comp427)
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
    (all-on comp428)
  )
)
(:action evaluate-comp428-off-comp259
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (not (rebooted comp428))
    (not (running comp259))
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
    (one-off comp428)
  )
)
(:action evaluate-comp428-off-comp427
  :parameters ()
  :precondition (and
    (evaluate comp428)
    (not (rebooted comp428))
    (not (running comp427))
  )
  :effect (and
    (not (evaluate comp428))
    (evaluate comp429)
    (one-off comp428)
  )
)
(:action evaluate-comp429-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp429)
    (rebooted comp429)
  )
  :effect (and
    (not (evaluate comp429))
    (evaluate comp430)
  )
)
(:action evaluate-comp429-all-on
  :parameters ()
  :precondition (and
    (evaluate comp429)
    (not (rebooted comp429))
    (running comp428)
  )
  :effect (and
    (not (evaluate comp429))
    (evaluate comp430)
    (all-on comp429)
  )
)
(:action evaluate-comp429-off-comp428
  :parameters ()
  :precondition (and
    (evaluate comp429)
    (not (rebooted comp429))
    (not (running comp428))
  )
  :effect (and
    (not (evaluate comp429))
    (evaluate comp430)
    (one-off comp429)
  )
)
(:action evaluate-comp430-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp430)
    (rebooted comp430)
  )
  :effect (and
    (not (evaluate comp430))
    (evaluate comp431)
  )
)
(:action evaluate-comp430-all-on
  :parameters ()
  :precondition (and
    (evaluate comp430)
    (not (rebooted comp430))
    (running comp429)
  )
  :effect (and
    (not (evaluate comp430))
    (evaluate comp431)
    (all-on comp430)
  )
)
(:action evaluate-comp430-off-comp429
  :parameters ()
  :precondition (and
    (evaluate comp430)
    (not (rebooted comp430))
    (not (running comp429))
  )
  :effect (and
    (not (evaluate comp430))
    (evaluate comp431)
    (one-off comp430)
  )
)
(:action evaluate-comp431-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp431)
    (rebooted comp431)
  )
  :effect (and
    (not (evaluate comp431))
    (evaluate comp432)
  )
)
(:action evaluate-comp431-all-on
  :parameters ()
  :precondition (and
    (evaluate comp431)
    (not (rebooted comp431))
    (running comp92)
    (running comp430)
  )
  :effect (and
    (not (evaluate comp431))
    (evaluate comp432)
    (all-on comp431)
  )
)
(:action evaluate-comp431-off-comp92
  :parameters ()
  :precondition (and
    (evaluate comp431)
    (not (rebooted comp431))
    (not (running comp92))
  )
  :effect (and
    (not (evaluate comp431))
    (evaluate comp432)
    (one-off comp431)
  )
)
(:action evaluate-comp431-off-comp430
  :parameters ()
  :precondition (and
    (evaluate comp431)
    (not (rebooted comp431))
    (not (running comp430))
  )
  :effect (and
    (not (evaluate comp431))
    (evaluate comp432)
    (one-off comp431)
  )
)
(:action evaluate-comp432-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (rebooted comp432)
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
  )
)
(:action evaluate-comp432-all-on
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (running comp5)
    (running comp396)
    (running comp431)
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (all-on comp432)
  )
)
(:action evaluate-comp432-off-comp5
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (not (running comp5))
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (one-off comp432)
  )
)
(:action evaluate-comp432-off-comp396
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (not (running comp396))
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (one-off comp432)
  )
)
(:action evaluate-comp432-off-comp431
  :parameters ()
  :precondition (and
    (evaluate comp432)
    (not (rebooted comp432))
    (not (running comp431))
  )
  :effect (and
    (not (evaluate comp432))
    (evaluate comp433)
    (one-off comp432)
  )
)
(:action evaluate-comp433-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (rebooted comp433)
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
  )
)
(:action evaluate-comp433-all-on
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (not (rebooted comp433))
    (running comp432)
    (running comp889)
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
    (all-on comp433)
  )
)
(:action evaluate-comp433-off-comp432
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (not (rebooted comp433))
    (not (running comp432))
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
    (one-off comp433)
  )
)
(:action evaluate-comp433-off-comp889
  :parameters ()
  :precondition (and
    (evaluate comp433)
    (not (rebooted comp433))
    (not (running comp889))
  )
  :effect (and
    (not (evaluate comp433))
    (evaluate comp434)
    (one-off comp433)
  )
)
(:action evaluate-comp434-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp434)
    (rebooted comp434)
  )
  :effect (and
    (not (evaluate comp434))
    (evaluate comp435)
  )
)
(:action evaluate-comp434-all-on
  :parameters ()
  :precondition (and
    (evaluate comp434)
    (not (rebooted comp434))
    (running comp433)
  )
  :effect (and
    (not (evaluate comp434))
    (evaluate comp435)
    (all-on comp434)
  )
)
(:action evaluate-comp434-off-comp433
  :parameters ()
  :precondition (and
    (evaluate comp434)
    (not (rebooted comp434))
    (not (running comp433))
  )
  :effect (and
    (not (evaluate comp434))
    (evaluate comp435)
    (one-off comp434)
  )
)
(:action evaluate-comp435-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (rebooted comp435)
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
  )
)
(:action evaluate-comp435-all-on
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (not (rebooted comp435))
    (running comp434)
    (running comp880)
    (running comp944)
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
    (all-on comp435)
  )
)
(:action evaluate-comp435-off-comp434
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (not (rebooted comp435))
    (not (running comp434))
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
    (one-off comp435)
  )
)
(:action evaluate-comp435-off-comp880
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (not (rebooted comp435))
    (not (running comp880))
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
    (one-off comp435)
  )
)
(:action evaluate-comp435-off-comp944
  :parameters ()
  :precondition (and
    (evaluate comp435)
    (not (rebooted comp435))
    (not (running comp944))
  )
  :effect (and
    (not (evaluate comp435))
    (evaluate comp436)
    (one-off comp435)
  )
)
(:action evaluate-comp436-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp436)
    (rebooted comp436)
  )
  :effect (and
    (not (evaluate comp436))
    (evaluate comp437)
  )
)
(:action evaluate-comp436-all-on
  :parameters ()
  :precondition (and
    (evaluate comp436)
    (not (rebooted comp436))
    (running comp435)
  )
  :effect (and
    (not (evaluate comp436))
    (evaluate comp437)
    (all-on comp436)
  )
)
(:action evaluate-comp436-off-comp435
  :parameters ()
  :precondition (and
    (evaluate comp436)
    (not (rebooted comp436))
    (not (running comp435))
  )
  :effect (and
    (not (evaluate comp436))
    (evaluate comp437)
    (one-off comp436)
  )
)
(:action evaluate-comp437-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (rebooted comp437)
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
  )
)
(:action evaluate-comp437-all-on
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (not (rebooted comp437))
    (running comp436)
    (running comp499)
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
    (all-on comp437)
  )
)
(:action evaluate-comp437-off-comp436
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (not (rebooted comp437))
    (not (running comp436))
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
    (one-off comp437)
  )
)
(:action evaluate-comp437-off-comp499
  :parameters ()
  :precondition (and
    (evaluate comp437)
    (not (rebooted comp437))
    (not (running comp499))
  )
  :effect (and
    (not (evaluate comp437))
    (evaluate comp438)
    (one-off comp437)
  )
)
(:action evaluate-comp438-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (rebooted comp438)
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
  )
)
(:action evaluate-comp438-all-on
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (not (rebooted comp438))
    (running comp409)
    (running comp437)
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
    (all-on comp438)
  )
)
(:action evaluate-comp438-off-comp409
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (not (rebooted comp438))
    (not (running comp409))
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
    (one-off comp438)
  )
)
(:action evaluate-comp438-off-comp437
  :parameters ()
  :precondition (and
    (evaluate comp438)
    (not (rebooted comp438))
    (not (running comp437))
  )
  :effect (and
    (not (evaluate comp438))
    (evaluate comp439)
    (one-off comp438)
  )
)
(:action evaluate-comp439-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (rebooted comp439)
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
  )
)
(:action evaluate-comp439-all-on
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (not (rebooted comp439))
    (running comp438)
    (running comp492)
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
    (all-on comp439)
  )
)
(:action evaluate-comp439-off-comp438
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (not (rebooted comp439))
    (not (running comp438))
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
    (one-off comp439)
  )
)
(:action evaluate-comp439-off-comp492
  :parameters ()
  :precondition (and
    (evaluate comp439)
    (not (rebooted comp439))
    (not (running comp492))
  )
  :effect (and
    (not (evaluate comp439))
    (evaluate comp440)
    (one-off comp439)
  )
)
(:action evaluate-comp440-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (rebooted comp440)
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
  )
)
(:action evaluate-comp440-all-on
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (not (rebooted comp440))
    (running comp439)
    (running comp550)
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
    (all-on comp440)
  )
)
(:action evaluate-comp440-off-comp439
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (not (rebooted comp440))
    (not (running comp439))
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
    (one-off comp440)
  )
)
(:action evaluate-comp440-off-comp550
  :parameters ()
  :precondition (and
    (evaluate comp440)
    (not (rebooted comp440))
    (not (running comp550))
  )
  :effect (and
    (not (evaluate comp440))
    (evaluate comp441)
    (one-off comp440)
  )
)
(:action evaluate-comp441-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp441)
    (rebooted comp441)
  )
  :effect (and
    (not (evaluate comp441))
    (evaluate comp442)
  )
)
(:action evaluate-comp441-all-on
  :parameters ()
  :precondition (and
    (evaluate comp441)
    (not (rebooted comp441))
    (running comp440)
  )
  :effect (and
    (not (evaluate comp441))
    (evaluate comp442)
    (all-on comp441)
  )
)
(:action evaluate-comp441-off-comp440
  :parameters ()
  :precondition (and
    (evaluate comp441)
    (not (rebooted comp441))
    (not (running comp440))
  )
  :effect (and
    (not (evaluate comp441))
    (evaluate comp442)
    (one-off comp441)
  )
)
(:action evaluate-comp442-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp442)
    (rebooted comp442)
  )
  :effect (and
    (not (evaluate comp442))
    (evaluate comp443)
  )
)
(:action evaluate-comp442-all-on
  :parameters ()
  :precondition (and
    (evaluate comp442)
    (not (rebooted comp442))
    (running comp441)
  )
  :effect (and
    (not (evaluate comp442))
    (evaluate comp443)
    (all-on comp442)
  )
)
(:action evaluate-comp442-off-comp441
  :parameters ()
  :precondition (and
    (evaluate comp442)
    (not (rebooted comp442))
    (not (running comp441))
  )
  :effect (and
    (not (evaluate comp442))
    (evaluate comp443)
    (one-off comp442)
  )
)
(:action evaluate-comp443-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp443)
    (rebooted comp443)
  )
  :effect (and
    (not (evaluate comp443))
    (evaluate comp444)
  )
)
(:action evaluate-comp443-all-on
  :parameters ()
  :precondition (and
    (evaluate comp443)
    (not (rebooted comp443))
    (running comp442)
    (running comp934)
  )
  :effect (and
    (not (evaluate comp443))
    (evaluate comp444)
    (all-on comp443)
  )
)
(:action evaluate-comp443-off-comp442
  :parameters ()
  :precondition (and
    (evaluate comp443)
    (not (rebooted comp443))
    (not (running comp442))
  )
  :effect (and
    (not (evaluate comp443))
    (evaluate comp444)
    (one-off comp443)
  )
)
(:action evaluate-comp443-off-comp934
  :parameters ()
  :precondition (and
    (evaluate comp443)
    (not (rebooted comp443))
    (not (running comp934))
  )
  :effect (and
    (not (evaluate comp443))
    (evaluate comp444)
    (one-off comp443)
  )
)
(:action evaluate-comp444-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp444)
    (rebooted comp444)
  )
  :effect (and
    (not (evaluate comp444))
    (evaluate comp445)
  )
)
(:action evaluate-comp444-all-on
  :parameters ()
  :precondition (and
    (evaluate comp444)
    (not (rebooted comp444))
    (running comp443)
  )
  :effect (and
    (not (evaluate comp444))
    (evaluate comp445)
    (all-on comp444)
  )
)
(:action evaluate-comp444-off-comp443
  :parameters ()
  :precondition (and
    (evaluate comp444)
    (not (rebooted comp444))
    (not (running comp443))
  )
  :effect (and
    (not (evaluate comp444))
    (evaluate comp445)
    (one-off comp444)
  )
)
(:action evaluate-comp445-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp445)
    (rebooted comp445)
  )
  :effect (and
    (not (evaluate comp445))
    (evaluate comp446)
  )
)
(:action evaluate-comp445-all-on
  :parameters ()
  :precondition (and
    (evaluate comp445)
    (not (rebooted comp445))
    (running comp444)
  )
  :effect (and
    (not (evaluate comp445))
    (evaluate comp446)
    (all-on comp445)
  )
)
(:action evaluate-comp445-off-comp444
  :parameters ()
  :precondition (and
    (evaluate comp445)
    (not (rebooted comp445))
    (not (running comp444))
  )
  :effect (and
    (not (evaluate comp445))
    (evaluate comp446)
    (one-off comp445)
  )
)
(:action evaluate-comp446-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (rebooted comp446)
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
  )
)
(:action evaluate-comp446-all-on
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (not (rebooted comp446))
    (running comp45)
    (running comp445)
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
    (all-on comp446)
  )
)
(:action evaluate-comp446-off-comp45
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (not (rebooted comp446))
    (not (running comp45))
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
    (one-off comp446)
  )
)
(:action evaluate-comp446-off-comp445
  :parameters ()
  :precondition (and
    (evaluate comp446)
    (not (rebooted comp446))
    (not (running comp445))
  )
  :effect (and
    (not (evaluate comp446))
    (evaluate comp447)
    (one-off comp446)
  )
)
(:action evaluate-comp447-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp447)
    (rebooted comp447)
  )
  :effect (and
    (not (evaluate comp447))
    (evaluate comp448)
  )
)
(:action evaluate-comp447-all-on
  :parameters ()
  :precondition (and
    (evaluate comp447)
    (not (rebooted comp447))
    (running comp283)
    (running comp446)
  )
  :effect (and
    (not (evaluate comp447))
    (evaluate comp448)
    (all-on comp447)
  )
)
(:action evaluate-comp447-off-comp283
  :parameters ()
  :precondition (and
    (evaluate comp447)
    (not (rebooted comp447))
    (not (running comp283))
  )
  :effect (and
    (not (evaluate comp447))
    (evaluate comp448)
    (one-off comp447)
  )
)
(:action evaluate-comp447-off-comp446
  :parameters ()
  :precondition (and
    (evaluate comp447)
    (not (rebooted comp447))
    (not (running comp446))
  )
  :effect (and
    (not (evaluate comp447))
    (evaluate comp448)
    (one-off comp447)
  )
)
(:action evaluate-comp448-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp448)
    (rebooted comp448)
  )
  :effect (and
    (not (evaluate comp448))
    (evaluate comp449)
  )
)
(:action evaluate-comp448-all-on
  :parameters ()
  :precondition (and
    (evaluate comp448)
    (not (rebooted comp448))
    (running comp447)
  )
  :effect (and
    (not (evaluate comp448))
    (evaluate comp449)
    (all-on comp448)
  )
)
(:action evaluate-comp448-off-comp447
  :parameters ()
  :precondition (and
    (evaluate comp448)
    (not (rebooted comp448))
    (not (running comp447))
  )
  :effect (and
    (not (evaluate comp448))
    (evaluate comp449)
    (one-off comp448)
  )
)
(:action evaluate-comp449-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp449)
    (rebooted comp449)
  )
  :effect (and
    (not (evaluate comp449))
    (evaluate comp450)
  )
)
(:action evaluate-comp449-all-on
  :parameters ()
  :precondition (and
    (evaluate comp449)
    (not (rebooted comp449))
    (running comp448)
  )
  :effect (and
    (not (evaluate comp449))
    (evaluate comp450)
    (all-on comp449)
  )
)
(:action evaluate-comp449-off-comp448
  :parameters ()
  :precondition (and
    (evaluate comp449)
    (not (rebooted comp449))
    (not (running comp448))
  )
  :effect (and
    (not (evaluate comp449))
    (evaluate comp450)
    (one-off comp449)
  )
)
(:action evaluate-comp450-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp450)
    (rebooted comp450)
  )
  :effect (and
    (not (evaluate comp450))
    (evaluate comp451)
  )
)
(:action evaluate-comp450-all-on
  :parameters ()
  :precondition (and
    (evaluate comp450)
    (not (rebooted comp450))
    (running comp449)
  )
  :effect (and
    (not (evaluate comp450))
    (evaluate comp451)
    (all-on comp450)
  )
)
(:action evaluate-comp450-off-comp449
  :parameters ()
  :precondition (and
    (evaluate comp450)
    (not (rebooted comp450))
    (not (running comp449))
  )
  :effect (and
    (not (evaluate comp450))
    (evaluate comp451)
    (one-off comp450)
  )
)
(:action evaluate-comp451-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp451)
    (rebooted comp451)
  )
  :effect (and
    (not (evaluate comp451))
    (evaluate comp452)
  )
)
(:action evaluate-comp451-all-on
  :parameters ()
  :precondition (and
    (evaluate comp451)
    (not (rebooted comp451))
    (running comp125)
    (running comp450)
  )
  :effect (and
    (not (evaluate comp451))
    (evaluate comp452)
    (all-on comp451)
  )
)
(:action evaluate-comp451-off-comp125
  :parameters ()
  :precondition (and
    (evaluate comp451)
    (not (rebooted comp451))
    (not (running comp125))
  )
  :effect (and
    (not (evaluate comp451))
    (evaluate comp452)
    (one-off comp451)
  )
)
(:action evaluate-comp451-off-comp450
  :parameters ()
  :precondition (and
    (evaluate comp451)
    (not (rebooted comp451))
    (not (running comp450))
  )
  :effect (and
    (not (evaluate comp451))
    (evaluate comp452)
    (one-off comp451)
  )
)
(:action evaluate-comp452-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (rebooted comp452)
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
  )
)
(:action evaluate-comp452-all-on
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (running comp451)
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (all-on comp452)
  )
)
(:action evaluate-comp452-off-comp451
  :parameters ()
  :precondition (and
    (evaluate comp452)
    (not (rebooted comp452))
    (not (running comp451))
  )
  :effect (and
    (not (evaluate comp452))
    (evaluate comp453)
    (one-off comp452)
  )
)
(:action evaluate-comp453-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp453)
    (rebooted comp453)
  )
  :effect (and
    (not (evaluate comp453))
    (evaluate comp454)
  )
)
(:action evaluate-comp453-all-on
  :parameters ()
  :precondition (and
    (evaluate comp453)
    (not (rebooted comp453))
    (running comp452)
    (running comp777)
  )
  :effect (and
    (not (evaluate comp453))
    (evaluate comp454)
    (all-on comp453)
  )
)
(:action evaluate-comp453-off-comp452
  :parameters ()
  :precondition (and
    (evaluate comp453)
    (not (rebooted comp453))
    (not (running comp452))
  )
  :effect (and
    (not (evaluate comp453))
    (evaluate comp454)
    (one-off comp453)
  )
)
(:action evaluate-comp453-off-comp777
  :parameters ()
  :precondition (and
    (evaluate comp453)
    (not (rebooted comp453))
    (not (running comp777))
  )
  :effect (and
    (not (evaluate comp453))
    (evaluate comp454)
    (one-off comp453)
  )
)
(:action evaluate-comp454-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp454)
    (rebooted comp454)
  )
  :effect (and
    (not (evaluate comp454))
    (evaluate comp455)
  )
)
(:action evaluate-comp454-all-on
  :parameters ()
  :precondition (and
    (evaluate comp454)
    (not (rebooted comp454))
    (running comp453)
  )
  :effect (and
    (not (evaluate comp454))
    (evaluate comp455)
    (all-on comp454)
  )
)
(:action evaluate-comp454-off-comp453
  :parameters ()
  :precondition (and
    (evaluate comp454)
    (not (rebooted comp454))
    (not (running comp453))
  )
  :effect (and
    (not (evaluate comp454))
    (evaluate comp455)
    (one-off comp454)
  )
)
(:action evaluate-comp455-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp455)
    (rebooted comp455)
  )
  :effect (and
    (not (evaluate comp455))
    (evaluate comp456)
  )
)
(:action evaluate-comp455-all-on
  :parameters ()
  :precondition (and
    (evaluate comp455)
    (not (rebooted comp455))
    (running comp454)
  )
  :effect (and
    (not (evaluate comp455))
    (evaluate comp456)
    (all-on comp455)
  )
)
(:action evaluate-comp455-off-comp454
  :parameters ()
  :precondition (and
    (evaluate comp455)
    (not (rebooted comp455))
    (not (running comp454))
  )
  :effect (and
    (not (evaluate comp455))
    (evaluate comp456)
    (one-off comp455)
  )
)
(:action evaluate-comp456-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp456)
    (rebooted comp456)
  )
  :effect (and
    (not (evaluate comp456))
    (evaluate comp457)
  )
)
(:action evaluate-comp456-all-on
  :parameters ()
  :precondition (and
    (evaluate comp456)
    (not (rebooted comp456))
    (running comp427)
    (running comp455)
  )
  :effect (and
    (not (evaluate comp456))
    (evaluate comp457)
    (all-on comp456)
  )
)
(:action evaluate-comp456-off-comp427
  :parameters ()
  :precondition (and
    (evaluate comp456)
    (not (rebooted comp456))
    (not (running comp427))
  )
  :effect (and
    (not (evaluate comp456))
    (evaluate comp457)
    (one-off comp456)
  )
)
(:action evaluate-comp456-off-comp455
  :parameters ()
  :precondition (and
    (evaluate comp456)
    (not (rebooted comp456))
    (not (running comp455))
  )
  :effect (and
    (not (evaluate comp456))
    (evaluate comp457)
    (one-off comp456)
  )
)
(:action evaluate-comp457-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp457)
    (rebooted comp457)
  )
  :effect (and
    (not (evaluate comp457))
    (evaluate comp458)
  )
)
(:action evaluate-comp457-all-on
  :parameters ()
  :precondition (and
    (evaluate comp457)
    (not (rebooted comp457))
    (running comp456)
  )
  :effect (and
    (not (evaluate comp457))
    (evaluate comp458)
    (all-on comp457)
  )
)
(:action evaluate-comp457-off-comp456
  :parameters ()
  :precondition (and
    (evaluate comp457)
    (not (rebooted comp457))
    (not (running comp456))
  )
  :effect (and
    (not (evaluate comp457))
    (evaluate comp458)
    (one-off comp457)
  )
)
(:action evaluate-comp458-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp458)
    (rebooted comp458)
  )
  :effect (and
    (not (evaluate comp458))
    (evaluate comp459)
  )
)
(:action evaluate-comp458-all-on
  :parameters ()
  :precondition (and
    (evaluate comp458)
    (not (rebooted comp458))
    (running comp457)
  )
  :effect (and
    (not (evaluate comp458))
    (evaluate comp459)
    (all-on comp458)
  )
)
(:action evaluate-comp458-off-comp457
  :parameters ()
  :precondition (and
    (evaluate comp458)
    (not (rebooted comp458))
    (not (running comp457))
  )
  :effect (and
    (not (evaluate comp458))
    (evaluate comp459)
    (one-off comp458)
  )
)
(:action evaluate-comp459-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp459)
    (rebooted comp459)
  )
  :effect (and
    (not (evaluate comp459))
    (evaluate comp460)
  )
)
(:action evaluate-comp459-all-on
  :parameters ()
  :precondition (and
    (evaluate comp459)
    (not (rebooted comp459))
    (running comp458)
  )
  :effect (and
    (not (evaluate comp459))
    (evaluate comp460)
    (all-on comp459)
  )
)
(:action evaluate-comp459-off-comp458
  :parameters ()
  :precondition (and
    (evaluate comp459)
    (not (rebooted comp459))
    (not (running comp458))
  )
  :effect (and
    (not (evaluate comp459))
    (evaluate comp460)
    (one-off comp459)
  )
)
(:action evaluate-comp460-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (rebooted comp460)
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
  )
)
(:action evaluate-comp460-all-on
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (not (rebooted comp460))
    (running comp459)
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
    (all-on comp460)
  )
)
(:action evaluate-comp460-off-comp459
  :parameters ()
  :precondition (and
    (evaluate comp460)
    (not (rebooted comp460))
    (not (running comp459))
  )
  :effect (and
    (not (evaluate comp460))
    (evaluate comp461)
    (one-off comp460)
  )
)
(:action evaluate-comp461-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (rebooted comp461)
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
  )
)
(:action evaluate-comp461-all-on
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (not (rebooted comp461))
    (running comp52)
    (running comp88)
    (running comp460)
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
    (all-on comp461)
  )
)
(:action evaluate-comp461-off-comp52
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (not (rebooted comp461))
    (not (running comp52))
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
    (one-off comp461)
  )
)
(:action evaluate-comp461-off-comp88
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (not (rebooted comp461))
    (not (running comp88))
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
    (one-off comp461)
  )
)
(:action evaluate-comp461-off-comp460
  :parameters ()
  :precondition (and
    (evaluate comp461)
    (not (rebooted comp461))
    (not (running comp460))
  )
  :effect (and
    (not (evaluate comp461))
    (evaluate comp462)
    (one-off comp461)
  )
)
(:action evaluate-comp462-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp462)
    (rebooted comp462)
  )
  :effect (and
    (not (evaluate comp462))
    (evaluate comp463)
  )
)
(:action evaluate-comp462-all-on
  :parameters ()
  :precondition (and
    (evaluate comp462)
    (not (rebooted comp462))
    (running comp461)
  )
  :effect (and
    (not (evaluate comp462))
    (evaluate comp463)
    (all-on comp462)
  )
)
(:action evaluate-comp462-off-comp461
  :parameters ()
  :precondition (and
    (evaluate comp462)
    (not (rebooted comp462))
    (not (running comp461))
  )
  :effect (and
    (not (evaluate comp462))
    (evaluate comp463)
    (one-off comp462)
  )
)
(:action evaluate-comp463-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp463)
    (rebooted comp463)
  )
  :effect (and
    (not (evaluate comp463))
    (evaluate comp464)
  )
)
(:action evaluate-comp463-all-on
  :parameters ()
  :precondition (and
    (evaluate comp463)
    (not (rebooted comp463))
    (running comp462)
  )
  :effect (and
    (not (evaluate comp463))
    (evaluate comp464)
    (all-on comp463)
  )
)
(:action evaluate-comp463-off-comp462
  :parameters ()
  :precondition (and
    (evaluate comp463)
    (not (rebooted comp463))
    (not (running comp462))
  )
  :effect (and
    (not (evaluate comp463))
    (evaluate comp464)
    (one-off comp463)
  )
)
(:action evaluate-comp464-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp464)
    (rebooted comp464)
  )
  :effect (and
    (not (evaluate comp464))
    (evaluate comp465)
  )
)
(:action evaluate-comp464-all-on
  :parameters ()
  :precondition (and
    (evaluate comp464)
    (not (rebooted comp464))
    (running comp463)
  )
  :effect (and
    (not (evaluate comp464))
    (evaluate comp465)
    (all-on comp464)
  )
)
(:action evaluate-comp464-off-comp463
  :parameters ()
  :precondition (and
    (evaluate comp464)
    (not (rebooted comp464))
    (not (running comp463))
  )
  :effect (and
    (not (evaluate comp464))
    (evaluate comp465)
    (one-off comp464)
  )
)
(:action evaluate-comp465-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp465)
    (rebooted comp465)
  )
  :effect (and
    (not (evaluate comp465))
    (evaluate comp466)
  )
)
(:action evaluate-comp465-all-on
  :parameters ()
  :precondition (and
    (evaluate comp465)
    (not (rebooted comp465))
    (running comp464)
  )
  :effect (and
    (not (evaluate comp465))
    (evaluate comp466)
    (all-on comp465)
  )
)
(:action evaluate-comp465-off-comp464
  :parameters ()
  :precondition (and
    (evaluate comp465)
    (not (rebooted comp465))
    (not (running comp464))
  )
  :effect (and
    (not (evaluate comp465))
    (evaluate comp466)
    (one-off comp465)
  )
)
(:action evaluate-comp466-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp466)
    (rebooted comp466)
  )
  :effect (and
    (not (evaluate comp466))
    (evaluate comp467)
  )
)
(:action evaluate-comp466-all-on
  :parameters ()
  :precondition (and
    (evaluate comp466)
    (not (rebooted comp466))
    (running comp465)
  )
  :effect (and
    (not (evaluate comp466))
    (evaluate comp467)
    (all-on comp466)
  )
)
(:action evaluate-comp466-off-comp465
  :parameters ()
  :precondition (and
    (evaluate comp466)
    (not (rebooted comp466))
    (not (running comp465))
  )
  :effect (and
    (not (evaluate comp466))
    (evaluate comp467)
    (one-off comp466)
  )
)
(:action evaluate-comp467-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp467)
    (rebooted comp467)
  )
  :effect (and
    (not (evaluate comp467))
    (evaluate comp468)
  )
)
(:action evaluate-comp467-all-on
  :parameters ()
  :precondition (and
    (evaluate comp467)
    (not (rebooted comp467))
    (running comp466)
    (running comp771)
  )
  :effect (and
    (not (evaluate comp467))
    (evaluate comp468)
    (all-on comp467)
  )
)
(:action evaluate-comp467-off-comp466
  :parameters ()
  :precondition (and
    (evaluate comp467)
    (not (rebooted comp467))
    (not (running comp466))
  )
  :effect (and
    (not (evaluate comp467))
    (evaluate comp468)
    (one-off comp467)
  )
)
(:action evaluate-comp467-off-comp771
  :parameters ()
  :precondition (and
    (evaluate comp467)
    (not (rebooted comp467))
    (not (running comp771))
  )
  :effect (and
    (not (evaluate comp467))
    (evaluate comp468)
    (one-off comp467)
  )
)
(:action evaluate-comp468-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp468)
    (rebooted comp468)
  )
  :effect (and
    (not (evaluate comp468))
    (evaluate comp469)
  )
)
(:action evaluate-comp468-all-on
  :parameters ()
  :precondition (and
    (evaluate comp468)
    (not (rebooted comp468))
    (running comp348)
    (running comp467)
  )
  :effect (and
    (not (evaluate comp468))
    (evaluate comp469)
    (all-on comp468)
  )
)
(:action evaluate-comp468-off-comp348
  :parameters ()
  :precondition (and
    (evaluate comp468)
    (not (rebooted comp468))
    (not (running comp348))
  )
  :effect (and
    (not (evaluate comp468))
    (evaluate comp469)
    (one-off comp468)
  )
)
(:action evaluate-comp468-off-comp467
  :parameters ()
  :precondition (and
    (evaluate comp468)
    (not (rebooted comp468))
    (not (running comp467))
  )
  :effect (and
    (not (evaluate comp468))
    (evaluate comp469)
    (one-off comp468)
  )
)
(:action evaluate-comp469-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp469)
    (rebooted comp469)
  )
  :effect (and
    (not (evaluate comp469))
    (evaluate comp470)
  )
)
(:action evaluate-comp469-all-on
  :parameters ()
  :precondition (and
    (evaluate comp469)
    (not (rebooted comp469))
    (running comp468)
  )
  :effect (and
    (not (evaluate comp469))
    (evaluate comp470)
    (all-on comp469)
  )
)
(:action evaluate-comp469-off-comp468
  :parameters ()
  :precondition (and
    (evaluate comp469)
    (not (rebooted comp469))
    (not (running comp468))
  )
  :effect (and
    (not (evaluate comp469))
    (evaluate comp470)
    (one-off comp469)
  )
)
(:action evaluate-comp470-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp470)
    (rebooted comp470)
  )
  :effect (and
    (not (evaluate comp470))
    (evaluate comp471)
  )
)
(:action evaluate-comp470-all-on
  :parameters ()
  :precondition (and
    (evaluate comp470)
    (not (rebooted comp470))
    (running comp469)
  )
  :effect (and
    (not (evaluate comp470))
    (evaluate comp471)
    (all-on comp470)
  )
)
(:action evaluate-comp470-off-comp469
  :parameters ()
  :precondition (and
    (evaluate comp470)
    (not (rebooted comp470))
    (not (running comp469))
  )
  :effect (and
    (not (evaluate comp470))
    (evaluate comp471)
    (one-off comp470)
  )
)
(:action evaluate-comp471-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp471)
    (rebooted comp471)
  )
  :effect (and
    (not (evaluate comp471))
    (evaluate comp472)
  )
)
(:action evaluate-comp471-all-on
  :parameters ()
  :precondition (and
    (evaluate comp471)
    (not (rebooted comp471))
    (running comp470)
  )
  :effect (and
    (not (evaluate comp471))
    (evaluate comp472)
    (all-on comp471)
  )
)
(:action evaluate-comp471-off-comp470
  :parameters ()
  :precondition (and
    (evaluate comp471)
    (not (rebooted comp471))
    (not (running comp470))
  )
  :effect (and
    (not (evaluate comp471))
    (evaluate comp472)
    (one-off comp471)
  )
)
(:action evaluate-comp472-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp472)
    (rebooted comp472)
  )
  :effect (and
    (not (evaluate comp472))
    (evaluate comp473)
  )
)
(:action evaluate-comp472-all-on
  :parameters ()
  :precondition (and
    (evaluate comp472)
    (not (rebooted comp472))
    (running comp471)
  )
  :effect (and
    (not (evaluate comp472))
    (evaluate comp473)
    (all-on comp472)
  )
)
(:action evaluate-comp472-off-comp471
  :parameters ()
  :precondition (and
    (evaluate comp472)
    (not (rebooted comp472))
    (not (running comp471))
  )
  :effect (and
    (not (evaluate comp472))
    (evaluate comp473)
    (one-off comp472)
  )
)
(:action evaluate-comp473-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp473)
    (rebooted comp473)
  )
  :effect (and
    (not (evaluate comp473))
    (evaluate comp474)
  )
)
(:action evaluate-comp473-all-on
  :parameters ()
  :precondition (and
    (evaluate comp473)
    (not (rebooted comp473))
    (running comp472)
  )
  :effect (and
    (not (evaluate comp473))
    (evaluate comp474)
    (all-on comp473)
  )
)
(:action evaluate-comp473-off-comp472
  :parameters ()
  :precondition (and
    (evaluate comp473)
    (not (rebooted comp473))
    (not (running comp472))
  )
  :effect (and
    (not (evaluate comp473))
    (evaluate comp474)
    (one-off comp473)
  )
)
(:action evaluate-comp474-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp474)
    (rebooted comp474)
  )
  :effect (and
    (not (evaluate comp474))
    (evaluate comp475)
  )
)
(:action evaluate-comp474-all-on
  :parameters ()
  :precondition (and
    (evaluate comp474)
    (not (rebooted comp474))
    (running comp473)
    (running comp640)
  )
  :effect (and
    (not (evaluate comp474))
    (evaluate comp475)
    (all-on comp474)
  )
)
(:action evaluate-comp474-off-comp473
  :parameters ()
  :precondition (and
    (evaluate comp474)
    (not (rebooted comp474))
    (not (running comp473))
  )
  :effect (and
    (not (evaluate comp474))
    (evaluate comp475)
    (one-off comp474)
  )
)
(:action evaluate-comp474-off-comp640
  :parameters ()
  :precondition (and
    (evaluate comp474)
    (not (rebooted comp474))
    (not (running comp640))
  )
  :effect (and
    (not (evaluate comp474))
    (evaluate comp475)
    (one-off comp474)
  )
)
(:action evaluate-comp475-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (rebooted comp475)
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
  )
)
(:action evaluate-comp475-all-on
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (not (rebooted comp475))
    (running comp474)
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
    (all-on comp475)
  )
)
(:action evaluate-comp475-off-comp474
  :parameters ()
  :precondition (and
    (evaluate comp475)
    (not (rebooted comp475))
    (not (running comp474))
  )
  :effect (and
    (not (evaluate comp475))
    (evaluate comp476)
    (one-off comp475)
  )
)
(:action evaluate-comp476-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp476)
    (rebooted comp476)
  )
  :effect (and
    (not (evaluate comp476))
    (evaluate comp477)
  )
)
(:action evaluate-comp476-all-on
  :parameters ()
  :precondition (and
    (evaluate comp476)
    (not (rebooted comp476))
    (running comp475)
    (running comp735)
  )
  :effect (and
    (not (evaluate comp476))
    (evaluate comp477)
    (all-on comp476)
  )
)
(:action evaluate-comp476-off-comp475
  :parameters ()
  :precondition (and
    (evaluate comp476)
    (not (rebooted comp476))
    (not (running comp475))
  )
  :effect (and
    (not (evaluate comp476))
    (evaluate comp477)
    (one-off comp476)
  )
)
(:action evaluate-comp476-off-comp735
  :parameters ()
  :precondition (and
    (evaluate comp476)
    (not (rebooted comp476))
    (not (running comp735))
  )
  :effect (and
    (not (evaluate comp476))
    (evaluate comp477)
    (one-off comp476)
  )
)
(:action evaluate-comp477-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp477)
    (rebooted comp477)
  )
  :effect (and
    (not (evaluate comp477))
    (evaluate comp478)
  )
)
(:action evaluate-comp477-all-on
  :parameters ()
  :precondition (and
    (evaluate comp477)
    (not (rebooted comp477))
    (running comp476)
  )
  :effect (and
    (not (evaluate comp477))
    (evaluate comp478)
    (all-on comp477)
  )
)
(:action evaluate-comp477-off-comp476
  :parameters ()
  :precondition (and
    (evaluate comp477)
    (not (rebooted comp477))
    (not (running comp476))
  )
  :effect (and
    (not (evaluate comp477))
    (evaluate comp478)
    (one-off comp477)
  )
)
(:action evaluate-comp478-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp478)
    (rebooted comp478)
  )
  :effect (and
    (not (evaluate comp478))
    (evaluate comp479)
  )
)
(:action evaluate-comp478-all-on
  :parameters ()
  :precondition (and
    (evaluate comp478)
    (not (rebooted comp478))
    (running comp477)
  )
  :effect (and
    (not (evaluate comp478))
    (evaluate comp479)
    (all-on comp478)
  )
)
(:action evaluate-comp478-off-comp477
  :parameters ()
  :precondition (and
    (evaluate comp478)
    (not (rebooted comp478))
    (not (running comp477))
  )
  :effect (and
    (not (evaluate comp478))
    (evaluate comp479)
    (one-off comp478)
  )
)
(:action evaluate-comp479-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (rebooted comp479)
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
  )
)
(:action evaluate-comp479-all-on
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (running comp133)
    (running comp478)
    (running comp761)
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (all-on comp479)
  )
)
(:action evaluate-comp479-off-comp133
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (not (running comp133))
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (one-off comp479)
  )
)
(:action evaluate-comp479-off-comp478
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (not (running comp478))
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (one-off comp479)
  )
)
(:action evaluate-comp479-off-comp761
  :parameters ()
  :precondition (and
    (evaluate comp479)
    (not (rebooted comp479))
    (not (running comp761))
  )
  :effect (and
    (not (evaluate comp479))
    (evaluate comp480)
    (one-off comp479)
  )
)
(:action evaluate-comp480-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (rebooted comp480)
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
  )
)
(:action evaluate-comp480-all-on
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (not (rebooted comp480))
    (running comp28)
    (running comp417)
    (running comp479)
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
    (all-on comp480)
  )
)
(:action evaluate-comp480-off-comp28
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (not (rebooted comp480))
    (not (running comp28))
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
    (one-off comp480)
  )
)
(:action evaluate-comp480-off-comp417
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (not (rebooted comp480))
    (not (running comp417))
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
    (one-off comp480)
  )
)
(:action evaluate-comp480-off-comp479
  :parameters ()
  :precondition (and
    (evaluate comp480)
    (not (rebooted comp480))
    (not (running comp479))
  )
  :effect (and
    (not (evaluate comp480))
    (evaluate comp481)
    (one-off comp480)
  )
)
(:action evaluate-comp481-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp481)
    (rebooted comp481)
  )
  :effect (and
    (not (evaluate comp481))
    (evaluate comp482)
  )
)
(:action evaluate-comp481-all-on
  :parameters ()
  :precondition (and
    (evaluate comp481)
    (not (rebooted comp481))
    (running comp480)
  )
  :effect (and
    (not (evaluate comp481))
    (evaluate comp482)
    (all-on comp481)
  )
)
(:action evaluate-comp481-off-comp480
  :parameters ()
  :precondition (and
    (evaluate comp481)
    (not (rebooted comp481))
    (not (running comp480))
  )
  :effect (and
    (not (evaluate comp481))
    (evaluate comp482)
    (one-off comp481)
  )
)
(:action evaluate-comp482-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp482)
    (rebooted comp482)
  )
  :effect (and
    (not (evaluate comp482))
    (evaluate comp483)
  )
)
(:action evaluate-comp482-all-on
  :parameters ()
  :precondition (and
    (evaluate comp482)
    (not (rebooted comp482))
    (running comp458)
    (running comp481)
  )
  :effect (and
    (not (evaluate comp482))
    (evaluate comp483)
    (all-on comp482)
  )
)
(:action evaluate-comp482-off-comp458
  :parameters ()
  :precondition (and
    (evaluate comp482)
    (not (rebooted comp482))
    (not (running comp458))
  )
  :effect (and
    (not (evaluate comp482))
    (evaluate comp483)
    (one-off comp482)
  )
)
(:action evaluate-comp482-off-comp481
  :parameters ()
  :precondition (and
    (evaluate comp482)
    (not (rebooted comp482))
    (not (running comp481))
  )
  :effect (and
    (not (evaluate comp482))
    (evaluate comp483)
    (one-off comp482)
  )
)
(:action evaluate-comp483-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp483)
    (rebooted comp483)
  )
  :effect (and
    (not (evaluate comp483))
    (evaluate comp484)
  )
)
(:action evaluate-comp483-all-on
  :parameters ()
  :precondition (and
    (evaluate comp483)
    (not (rebooted comp483))
    (running comp482)
  )
  :effect (and
    (not (evaluate comp483))
    (evaluate comp484)
    (all-on comp483)
  )
)
(:action evaluate-comp483-off-comp482
  :parameters ()
  :precondition (and
    (evaluate comp483)
    (not (rebooted comp483))
    (not (running comp482))
  )
  :effect (and
    (not (evaluate comp483))
    (evaluate comp484)
    (one-off comp483)
  )
)
(:action evaluate-comp484-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp484)
    (rebooted comp484)
  )
  :effect (and
    (not (evaluate comp484))
    (evaluate comp485)
  )
)
(:action evaluate-comp484-all-on
  :parameters ()
  :precondition (and
    (evaluate comp484)
    (not (rebooted comp484))
    (running comp483)
  )
  :effect (and
    (not (evaluate comp484))
    (evaluate comp485)
    (all-on comp484)
  )
)
(:action evaluate-comp484-off-comp483
  :parameters ()
  :precondition (and
    (evaluate comp484)
    (not (rebooted comp484))
    (not (running comp483))
  )
  :effect (and
    (not (evaluate comp484))
    (evaluate comp485)
    (one-off comp484)
  )
)
(:action evaluate-comp485-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (rebooted comp485)
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
  )
)
(:action evaluate-comp485-all-on
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (not (rebooted comp485))
    (running comp484)
    (running comp576)
    (running comp893)
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
    (all-on comp485)
  )
)
(:action evaluate-comp485-off-comp484
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (not (rebooted comp485))
    (not (running comp484))
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
    (one-off comp485)
  )
)
(:action evaluate-comp485-off-comp576
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (not (rebooted comp485))
    (not (running comp576))
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
    (one-off comp485)
  )
)
(:action evaluate-comp485-off-comp893
  :parameters ()
  :precondition (and
    (evaluate comp485)
    (not (rebooted comp485))
    (not (running comp893))
  )
  :effect (and
    (not (evaluate comp485))
    (evaluate comp486)
    (one-off comp485)
  )
)
(:action evaluate-comp486-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp486)
    (rebooted comp486)
  )
  :effect (and
    (not (evaluate comp486))
    (evaluate comp487)
  )
)
(:action evaluate-comp486-all-on
  :parameters ()
  :precondition (and
    (evaluate comp486)
    (not (rebooted comp486))
    (running comp485)
  )
  :effect (and
    (not (evaluate comp486))
    (evaluate comp487)
    (all-on comp486)
  )
)
(:action evaluate-comp486-off-comp485
  :parameters ()
  :precondition (and
    (evaluate comp486)
    (not (rebooted comp486))
    (not (running comp485))
  )
  :effect (and
    (not (evaluate comp486))
    (evaluate comp487)
    (one-off comp486)
  )
)
(:action evaluate-comp487-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (rebooted comp487)
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
  )
)
(:action evaluate-comp487-all-on
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (not (rebooted comp487))
    (running comp411)
    (running comp486)
    (running comp817)
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
    (all-on comp487)
  )
)
(:action evaluate-comp487-off-comp411
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (not (rebooted comp487))
    (not (running comp411))
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
    (one-off comp487)
  )
)
(:action evaluate-comp487-off-comp486
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (not (rebooted comp487))
    (not (running comp486))
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
    (one-off comp487)
  )
)
(:action evaluate-comp487-off-comp817
  :parameters ()
  :precondition (and
    (evaluate comp487)
    (not (rebooted comp487))
    (not (running comp817))
  )
  :effect (and
    (not (evaluate comp487))
    (evaluate comp488)
    (one-off comp487)
  )
)
(:action evaluate-comp488-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp488)
    (rebooted comp488)
  )
  :effect (and
    (not (evaluate comp488))
    (evaluate comp489)
  )
)
(:action evaluate-comp488-all-on
  :parameters ()
  :precondition (and
    (evaluate comp488)
    (not (rebooted comp488))
    (running comp487)
  )
  :effect (and
    (not (evaluate comp488))
    (evaluate comp489)
    (all-on comp488)
  )
)
(:action evaluate-comp488-off-comp487
  :parameters ()
  :precondition (and
    (evaluate comp488)
    (not (rebooted comp488))
    (not (running comp487))
  )
  :effect (and
    (not (evaluate comp488))
    (evaluate comp489)
    (one-off comp488)
  )
)
(:action evaluate-comp489-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp489)
    (rebooted comp489)
  )
  :effect (and
    (not (evaluate comp489))
    (evaluate comp490)
  )
)
(:action evaluate-comp489-all-on
  :parameters ()
  :precondition (and
    (evaluate comp489)
    (not (rebooted comp489))
    (running comp449)
    (running comp488)
  )
  :effect (and
    (not (evaluate comp489))
    (evaluate comp490)
    (all-on comp489)
  )
)
(:action evaluate-comp489-off-comp449
  :parameters ()
  :precondition (and
    (evaluate comp489)
    (not (rebooted comp489))
    (not (running comp449))
  )
  :effect (and
    (not (evaluate comp489))
    (evaluate comp490)
    (one-off comp489)
  )
)
(:action evaluate-comp489-off-comp488
  :parameters ()
  :precondition (and
    (evaluate comp489)
    (not (rebooted comp489))
    (not (running comp488))
  )
  :effect (and
    (not (evaluate comp489))
    (evaluate comp490)
    (one-off comp489)
  )
)
(:action evaluate-comp490-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp490)
    (rebooted comp490)
  )
  :effect (and
    (not (evaluate comp490))
    (evaluate comp491)
  )
)
(:action evaluate-comp490-all-on
  :parameters ()
  :precondition (and
    (evaluate comp490)
    (not (rebooted comp490))
    (running comp489)
    (running comp873)
  )
  :effect (and
    (not (evaluate comp490))
    (evaluate comp491)
    (all-on comp490)
  )
)
(:action evaluate-comp490-off-comp489
  :parameters ()
  :precondition (and
    (evaluate comp490)
    (not (rebooted comp490))
    (not (running comp489))
  )
  :effect (and
    (not (evaluate comp490))
    (evaluate comp491)
    (one-off comp490)
  )
)
(:action evaluate-comp490-off-comp873
  :parameters ()
  :precondition (and
    (evaluate comp490)
    (not (rebooted comp490))
    (not (running comp873))
  )
  :effect (and
    (not (evaluate comp490))
    (evaluate comp491)
    (one-off comp490)
  )
)
(:action evaluate-comp491-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp491)
    (rebooted comp491)
  )
  :effect (and
    (not (evaluate comp491))
    (evaluate comp492)
  )
)
(:action evaluate-comp491-all-on
  :parameters ()
  :precondition (and
    (evaluate comp491)
    (not (rebooted comp491))
    (running comp490)
  )
  :effect (and
    (not (evaluate comp491))
    (evaluate comp492)
    (all-on comp491)
  )
)
(:action evaluate-comp491-off-comp490
  :parameters ()
  :precondition (and
    (evaluate comp491)
    (not (rebooted comp491))
    (not (running comp490))
  )
  :effect (and
    (not (evaluate comp491))
    (evaluate comp492)
    (one-off comp491)
  )
)
(:action evaluate-comp492-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp492)
    (rebooted comp492)
  )
  :effect (and
    (not (evaluate comp492))
    (evaluate comp493)
  )
)
(:action evaluate-comp492-all-on
  :parameters ()
  :precondition (and
    (evaluate comp492)
    (not (rebooted comp492))
    (running comp491)
  )
  :effect (and
    (not (evaluate comp492))
    (evaluate comp493)
    (all-on comp492)
  )
)
(:action evaluate-comp492-off-comp491
  :parameters ()
  :precondition (and
    (evaluate comp492)
    (not (rebooted comp492))
    (not (running comp491))
  )
  :effect (and
    (not (evaluate comp492))
    (evaluate comp493)
    (one-off comp492)
  )
)
(:action evaluate-comp493-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp493)
    (rebooted comp493)
  )
  :effect (and
    (not (evaluate comp493))
    (evaluate comp494)
  )
)
(:action evaluate-comp493-all-on
  :parameters ()
  :precondition (and
    (evaluate comp493)
    (not (rebooted comp493))
    (running comp492)
  )
  :effect (and
    (not (evaluate comp493))
    (evaluate comp494)
    (all-on comp493)
  )
)
(:action evaluate-comp493-off-comp492
  :parameters ()
  :precondition (and
    (evaluate comp493)
    (not (rebooted comp493))
    (not (running comp492))
  )
  :effect (and
    (not (evaluate comp493))
    (evaluate comp494)
    (one-off comp493)
  )
)
(:action evaluate-comp494-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp494)
    (rebooted comp494)
  )
  :effect (and
    (not (evaluate comp494))
    (evaluate comp495)
  )
)
(:action evaluate-comp494-all-on
  :parameters ()
  :precondition (and
    (evaluate comp494)
    (not (rebooted comp494))
    (running comp493)
  )
  :effect (and
    (not (evaluate comp494))
    (evaluate comp495)
    (all-on comp494)
  )
)
(:action evaluate-comp494-off-comp493
  :parameters ()
  :precondition (and
    (evaluate comp494)
    (not (rebooted comp494))
    (not (running comp493))
  )
  :effect (and
    (not (evaluate comp494))
    (evaluate comp495)
    (one-off comp494)
  )
)
(:action evaluate-comp495-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp495)
    (rebooted comp495)
  )
  :effect (and
    (not (evaluate comp495))
    (evaluate comp496)
  )
)
(:action evaluate-comp495-all-on
  :parameters ()
  :precondition (and
    (evaluate comp495)
    (not (rebooted comp495))
    (running comp407)
    (running comp494)
  )
  :effect (and
    (not (evaluate comp495))
    (evaluate comp496)
    (all-on comp495)
  )
)
(:action evaluate-comp495-off-comp407
  :parameters ()
  :precondition (and
    (evaluate comp495)
    (not (rebooted comp495))
    (not (running comp407))
  )
  :effect (and
    (not (evaluate comp495))
    (evaluate comp496)
    (one-off comp495)
  )
)
(:action evaluate-comp495-off-comp494
  :parameters ()
  :precondition (and
    (evaluate comp495)
    (not (rebooted comp495))
    (not (running comp494))
  )
  :effect (and
    (not (evaluate comp495))
    (evaluate comp496)
    (one-off comp495)
  )
)
(:action evaluate-comp496-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp496)
    (rebooted comp496)
  )
  :effect (and
    (not (evaluate comp496))
    (evaluate comp497)
  )
)
(:action evaluate-comp496-all-on
  :parameters ()
  :precondition (and
    (evaluate comp496)
    (not (rebooted comp496))
    (running comp495)
  )
  :effect (and
    (not (evaluate comp496))
    (evaluate comp497)
    (all-on comp496)
  )
)
(:action evaluate-comp496-off-comp495
  :parameters ()
  :precondition (and
    (evaluate comp496)
    (not (rebooted comp496))
    (not (running comp495))
  )
  :effect (and
    (not (evaluate comp496))
    (evaluate comp497)
    (one-off comp496)
  )
)
(:action evaluate-comp497-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp497)
    (rebooted comp497)
  )
  :effect (and
    (not (evaluate comp497))
    (evaluate comp498)
  )
)
(:action evaluate-comp497-all-on
  :parameters ()
  :precondition (and
    (evaluate comp497)
    (not (rebooted comp497))
    (running comp496)
  )
  :effect (and
    (not (evaluate comp497))
    (evaluate comp498)
    (all-on comp497)
  )
)
(:action evaluate-comp497-off-comp496
  :parameters ()
  :precondition (and
    (evaluate comp497)
    (not (rebooted comp497))
    (not (running comp496))
  )
  :effect (and
    (not (evaluate comp497))
    (evaluate comp498)
    (one-off comp497)
  )
)
(:action evaluate-comp498-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp498)
    (rebooted comp498)
  )
  :effect (and
    (not (evaluate comp498))
    (evaluate comp499)
  )
)
(:action evaluate-comp498-all-on
  :parameters ()
  :precondition (and
    (evaluate comp498)
    (not (rebooted comp498))
    (running comp497)
  )
  :effect (and
    (not (evaluate comp498))
    (evaluate comp499)
    (all-on comp498)
  )
)
(:action evaluate-comp498-off-comp497
  :parameters ()
  :precondition (and
    (evaluate comp498)
    (not (rebooted comp498))
    (not (running comp497))
  )
  :effect (and
    (not (evaluate comp498))
    (evaluate comp499)
    (one-off comp498)
  )
)
(:action evaluate-comp499-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp499)
    (rebooted comp499)
  )
  :effect (and
    (not (evaluate comp499))
    (evaluate comp500)
  )
)
(:action evaluate-comp499-all-on
  :parameters ()
  :precondition (and
    (evaluate comp499)
    (not (rebooted comp499))
    (running comp498)
    (running comp955)
  )
  :effect (and
    (not (evaluate comp499))
    (evaluate comp500)
    (all-on comp499)
  )
)
(:action evaluate-comp499-off-comp498
  :parameters ()
  :precondition (and
    (evaluate comp499)
    (not (rebooted comp499))
    (not (running comp498))
  )
  :effect (and
    (not (evaluate comp499))
    (evaluate comp500)
    (one-off comp499)
  )
)
(:action evaluate-comp499-off-comp955
  :parameters ()
  :precondition (and
    (evaluate comp499)
    (not (rebooted comp499))
    (not (running comp955))
  )
  :effect (and
    (not (evaluate comp499))
    (evaluate comp500)
    (one-off comp499)
  )
)
(:action evaluate-comp500-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp500)
    (rebooted comp500)
  )
  :effect (and
    (not (evaluate comp500))
    (evaluate comp501)
  )
)
(:action evaluate-comp500-all-on
  :parameters ()
  :precondition (and
    (evaluate comp500)
    (not (rebooted comp500))
    (running comp499)
  )
  :effect (and
    (not (evaluate comp500))
    (evaluate comp501)
    (all-on comp500)
  )
)
(:action evaluate-comp500-off-comp499
  :parameters ()
  :precondition (and
    (evaluate comp500)
    (not (rebooted comp500))
    (not (running comp499))
  )
  :effect (and
    (not (evaluate comp500))
    (evaluate comp501)
    (one-off comp500)
  )
)
(:action evaluate-comp501-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp501)
    (rebooted comp501)
  )
  :effect (and
    (not (evaluate comp501))
    (evaluate comp502)
  )
)
(:action evaluate-comp501-all-on
  :parameters ()
  :precondition (and
    (evaluate comp501)
    (not (rebooted comp501))
    (running comp500)
  )
  :effect (and
    (not (evaluate comp501))
    (evaluate comp502)
    (all-on comp501)
  )
)
(:action evaluate-comp501-off-comp500
  :parameters ()
  :precondition (and
    (evaluate comp501)
    (not (rebooted comp501))
    (not (running comp500))
  )
  :effect (and
    (not (evaluate comp501))
    (evaluate comp502)
    (one-off comp501)
  )
)
(:action evaluate-comp502-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp502)
    (rebooted comp502)
  )
  :effect (and
    (not (evaluate comp502))
    (evaluate comp503)
  )
)
(:action evaluate-comp502-all-on
  :parameters ()
  :precondition (and
    (evaluate comp502)
    (not (rebooted comp502))
    (running comp501)
  )
  :effect (and
    (not (evaluate comp502))
    (evaluate comp503)
    (all-on comp502)
  )
)
(:action evaluate-comp502-off-comp501
  :parameters ()
  :precondition (and
    (evaluate comp502)
    (not (rebooted comp502))
    (not (running comp501))
  )
  :effect (and
    (not (evaluate comp502))
    (evaluate comp503)
    (one-off comp502)
  )
)
(:action evaluate-comp503-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (rebooted comp503)
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
  )
)
(:action evaluate-comp503-all-on
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (not (rebooted comp503))
    (running comp502)
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
    (all-on comp503)
  )
)
(:action evaluate-comp503-off-comp502
  :parameters ()
  :precondition (and
    (evaluate comp503)
    (not (rebooted comp503))
    (not (running comp502))
  )
  :effect (and
    (not (evaluate comp503))
    (evaluate comp504)
    (one-off comp503)
  )
)
(:action evaluate-comp504-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp504)
    (rebooted comp504)
  )
  :effect (and
    (not (evaluate comp504))
    (evaluate comp505)
  )
)
(:action evaluate-comp504-all-on
  :parameters ()
  :precondition (and
    (evaluate comp504)
    (not (rebooted comp504))
    (running comp503)
  )
  :effect (and
    (not (evaluate comp504))
    (evaluate comp505)
    (all-on comp504)
  )
)
(:action evaluate-comp504-off-comp503
  :parameters ()
  :precondition (and
    (evaluate comp504)
    (not (rebooted comp504))
    (not (running comp503))
  )
  :effect (and
    (not (evaluate comp504))
    (evaluate comp505)
    (one-off comp504)
  )
)
(:action evaluate-comp505-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp505)
    (rebooted comp505)
  )
  :effect (and
    (not (evaluate comp505))
    (evaluate comp506)
  )
)
(:action evaluate-comp505-all-on
  :parameters ()
  :precondition (and
    (evaluate comp505)
    (not (rebooted comp505))
    (running comp504)
  )
  :effect (and
    (not (evaluate comp505))
    (evaluate comp506)
    (all-on comp505)
  )
)
(:action evaluate-comp505-off-comp504
  :parameters ()
  :precondition (and
    (evaluate comp505)
    (not (rebooted comp505))
    (not (running comp504))
  )
  :effect (and
    (not (evaluate comp505))
    (evaluate comp506)
    (one-off comp505)
  )
)
(:action evaluate-comp506-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp506)
    (rebooted comp506)
  )
  :effect (and
    (not (evaluate comp506))
    (evaluate comp507)
  )
)
(:action evaluate-comp506-all-on
  :parameters ()
  :precondition (and
    (evaluate comp506)
    (not (rebooted comp506))
    (running comp505)
  )
  :effect (and
    (not (evaluate comp506))
    (evaluate comp507)
    (all-on comp506)
  )
)
(:action evaluate-comp506-off-comp505
  :parameters ()
  :precondition (and
    (evaluate comp506)
    (not (rebooted comp506))
    (not (running comp505))
  )
  :effect (and
    (not (evaluate comp506))
    (evaluate comp507)
    (one-off comp506)
  )
)
(:action evaluate-comp507-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp507)
    (rebooted comp507)
  )
  :effect (and
    (not (evaluate comp507))
    (evaluate comp508)
  )
)
(:action evaluate-comp507-all-on
  :parameters ()
  :precondition (and
    (evaluate comp507)
    (not (rebooted comp507))
    (running comp506)
  )
  :effect (and
    (not (evaluate comp507))
    (evaluate comp508)
    (all-on comp507)
  )
)
(:action evaluate-comp507-off-comp506
  :parameters ()
  :precondition (and
    (evaluate comp507)
    (not (rebooted comp507))
    (not (running comp506))
  )
  :effect (and
    (not (evaluate comp507))
    (evaluate comp508)
    (one-off comp507)
  )
)
(:action evaluate-comp508-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp508)
    (rebooted comp508)
  )
  :effect (and
    (not (evaluate comp508))
    (evaluate comp509)
  )
)
(:action evaluate-comp508-all-on
  :parameters ()
  :precondition (and
    (evaluate comp508)
    (not (rebooted comp508))
    (running comp507)
  )
  :effect (and
    (not (evaluate comp508))
    (evaluate comp509)
    (all-on comp508)
  )
)
(:action evaluate-comp508-off-comp507
  :parameters ()
  :precondition (and
    (evaluate comp508)
    (not (rebooted comp508))
    (not (running comp507))
  )
  :effect (and
    (not (evaluate comp508))
    (evaluate comp509)
    (one-off comp508)
  )
)
(:action evaluate-comp509-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (rebooted comp509)
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
  )
)
(:action evaluate-comp509-all-on
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (not (rebooted comp509))
    (running comp324)
    (running comp508)
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
    (all-on comp509)
  )
)
(:action evaluate-comp509-off-comp324
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (not (rebooted comp509))
    (not (running comp324))
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
    (one-off comp509)
  )
)
(:action evaluate-comp509-off-comp508
  :parameters ()
  :precondition (and
    (evaluate comp509)
    (not (rebooted comp509))
    (not (running comp508))
  )
  :effect (and
    (not (evaluate comp509))
    (evaluate comp510)
    (one-off comp509)
  )
)
(:action evaluate-comp510-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp510)
    (rebooted comp510)
  )
  :effect (and
    (not (evaluate comp510))
    (evaluate comp511)
  )
)
(:action evaluate-comp510-all-on
  :parameters ()
  :precondition (and
    (evaluate comp510)
    (not (rebooted comp510))
    (running comp509)
  )
  :effect (and
    (not (evaluate comp510))
    (evaluate comp511)
    (all-on comp510)
  )
)
(:action evaluate-comp510-off-comp509
  :parameters ()
  :precondition (and
    (evaluate comp510)
    (not (rebooted comp510))
    (not (running comp509))
  )
  :effect (and
    (not (evaluate comp510))
    (evaluate comp511)
    (one-off comp510)
  )
)
(:action evaluate-comp511-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp511)
    (rebooted comp511)
  )
  :effect (and
    (not (evaluate comp511))
    (evaluate comp512)
  )
)
(:action evaluate-comp511-all-on
  :parameters ()
  :precondition (and
    (evaluate comp511)
    (not (rebooted comp511))
    (running comp510)
  )
  :effect (and
    (not (evaluate comp511))
    (evaluate comp512)
    (all-on comp511)
  )
)
(:action evaluate-comp511-off-comp510
  :parameters ()
  :precondition (and
    (evaluate comp511)
    (not (rebooted comp511))
    (not (running comp510))
  )
  :effect (and
    (not (evaluate comp511))
    (evaluate comp512)
    (one-off comp511)
  )
)
(:action evaluate-comp512-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (rebooted comp512)
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
  )
)
(:action evaluate-comp512-all-on
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (not (rebooted comp512))
    (running comp511)
    (running comp899)
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
    (all-on comp512)
  )
)
(:action evaluate-comp512-off-comp511
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (not (rebooted comp512))
    (not (running comp511))
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
    (one-off comp512)
  )
)
(:action evaluate-comp512-off-comp899
  :parameters ()
  :precondition (and
    (evaluate comp512)
    (not (rebooted comp512))
    (not (running comp899))
  )
  :effect (and
    (not (evaluate comp512))
    (evaluate comp513)
    (one-off comp512)
  )
)
(:action evaluate-comp513-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp513)
    (rebooted comp513)
  )
  :effect (and
    (not (evaluate comp513))
    (evaluate comp514)
  )
)
(:action evaluate-comp513-all-on
  :parameters ()
  :precondition (and
    (evaluate comp513)
    (not (rebooted comp513))
    (running comp512)
    (running comp843)
  )
  :effect (and
    (not (evaluate comp513))
    (evaluate comp514)
    (all-on comp513)
  )
)
(:action evaluate-comp513-off-comp512
  :parameters ()
  :precondition (and
    (evaluate comp513)
    (not (rebooted comp513))
    (not (running comp512))
  )
  :effect (and
    (not (evaluate comp513))
    (evaluate comp514)
    (one-off comp513)
  )
)
(:action evaluate-comp513-off-comp843
  :parameters ()
  :precondition (and
    (evaluate comp513)
    (not (rebooted comp513))
    (not (running comp843))
  )
  :effect (and
    (not (evaluate comp513))
    (evaluate comp514)
    (one-off comp513)
  )
)
(:action evaluate-comp514-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp514)
    (rebooted comp514)
  )
  :effect (and
    (not (evaluate comp514))
    (evaluate comp515)
  )
)
(:action evaluate-comp514-all-on
  :parameters ()
  :precondition (and
    (evaluate comp514)
    (not (rebooted comp514))
    (running comp416)
    (running comp513)
  )
  :effect (and
    (not (evaluate comp514))
    (evaluate comp515)
    (all-on comp514)
  )
)
(:action evaluate-comp514-off-comp416
  :parameters ()
  :precondition (and
    (evaluate comp514)
    (not (rebooted comp514))
    (not (running comp416))
  )
  :effect (and
    (not (evaluate comp514))
    (evaluate comp515)
    (one-off comp514)
  )
)
(:action evaluate-comp514-off-comp513
  :parameters ()
  :precondition (and
    (evaluate comp514)
    (not (rebooted comp514))
    (not (running comp513))
  )
  :effect (and
    (not (evaluate comp514))
    (evaluate comp515)
    (one-off comp514)
  )
)
(:action evaluate-comp515-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp515)
    (rebooted comp515)
  )
  :effect (and
    (not (evaluate comp515))
    (evaluate comp516)
  )
)
(:action evaluate-comp515-all-on
  :parameters ()
  :precondition (and
    (evaluate comp515)
    (not (rebooted comp515))
    (running comp514)
    (running comp853)
  )
  :effect (and
    (not (evaluate comp515))
    (evaluate comp516)
    (all-on comp515)
  )
)
(:action evaluate-comp515-off-comp514
  :parameters ()
  :precondition (and
    (evaluate comp515)
    (not (rebooted comp515))
    (not (running comp514))
  )
  :effect (and
    (not (evaluate comp515))
    (evaluate comp516)
    (one-off comp515)
  )
)
(:action evaluate-comp515-off-comp853
  :parameters ()
  :precondition (and
    (evaluate comp515)
    (not (rebooted comp515))
    (not (running comp853))
  )
  :effect (and
    (not (evaluate comp515))
    (evaluate comp516)
    (one-off comp515)
  )
)
(:action evaluate-comp516-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp516)
    (rebooted comp516)
  )
  :effect (and
    (not (evaluate comp516))
    (evaluate comp517)
  )
)
(:action evaluate-comp516-all-on
  :parameters ()
  :precondition (and
    (evaluate comp516)
    (not (rebooted comp516))
    (running comp515)
  )
  :effect (and
    (not (evaluate comp516))
    (evaluate comp517)
    (all-on comp516)
  )
)
(:action evaluate-comp516-off-comp515
  :parameters ()
  :precondition (and
    (evaluate comp516)
    (not (rebooted comp516))
    (not (running comp515))
  )
  :effect (and
    (not (evaluate comp516))
    (evaluate comp517)
    (one-off comp516)
  )
)
(:action evaluate-comp517-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (rebooted comp517)
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
  )
)
(:action evaluate-comp517-all-on
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (running comp353)
    (running comp516)
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (all-on comp517)
  )
)
(:action evaluate-comp517-off-comp353
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (not (running comp353))
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (one-off comp517)
  )
)
(:action evaluate-comp517-off-comp516
  :parameters ()
  :precondition (and
    (evaluate comp517)
    (not (rebooted comp517))
    (not (running comp516))
  )
  :effect (and
    (not (evaluate comp517))
    (evaluate comp518)
    (one-off comp517)
  )
)
(:action evaluate-comp518-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (rebooted comp518)
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
  )
)
(:action evaluate-comp518-all-on
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (not (rebooted comp518))
    (running comp517)
    (running comp946)
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
    (all-on comp518)
  )
)
(:action evaluate-comp518-off-comp517
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (not (rebooted comp518))
    (not (running comp517))
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
    (one-off comp518)
  )
)
(:action evaluate-comp518-off-comp946
  :parameters ()
  :precondition (and
    (evaluate comp518)
    (not (rebooted comp518))
    (not (running comp946))
  )
  :effect (and
    (not (evaluate comp518))
    (evaluate comp519)
    (one-off comp518)
  )
)
(:action evaluate-comp519-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp519)
    (rebooted comp519)
  )
  :effect (and
    (not (evaluate comp519))
    (evaluate comp520)
  )
)
(:action evaluate-comp519-all-on
  :parameters ()
  :precondition (and
    (evaluate comp519)
    (not (rebooted comp519))
    (running comp518)
  )
  :effect (and
    (not (evaluate comp519))
    (evaluate comp520)
    (all-on comp519)
  )
)
(:action evaluate-comp519-off-comp518
  :parameters ()
  :precondition (and
    (evaluate comp519)
    (not (rebooted comp519))
    (not (running comp518))
  )
  :effect (and
    (not (evaluate comp519))
    (evaluate comp520)
    (one-off comp519)
  )
)
(:action evaluate-comp520-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp520)
    (rebooted comp520)
  )
  :effect (and
    (not (evaluate comp520))
    (evaluate comp521)
  )
)
(:action evaluate-comp520-all-on
  :parameters ()
  :precondition (and
    (evaluate comp520)
    (not (rebooted comp520))
    (running comp519)
  )
  :effect (and
    (not (evaluate comp520))
    (evaluate comp521)
    (all-on comp520)
  )
)
(:action evaluate-comp520-off-comp519
  :parameters ()
  :precondition (and
    (evaluate comp520)
    (not (rebooted comp520))
    (not (running comp519))
  )
  :effect (and
    (not (evaluate comp520))
    (evaluate comp521)
    (one-off comp520)
  )
)
(:action evaluate-comp521-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp521)
    (rebooted comp521)
  )
  :effect (and
    (not (evaluate comp521))
    (evaluate comp522)
  )
)
(:action evaluate-comp521-all-on
  :parameters ()
  :precondition (and
    (evaluate comp521)
    (not (rebooted comp521))
    (running comp520)
  )
  :effect (and
    (not (evaluate comp521))
    (evaluate comp522)
    (all-on comp521)
  )
)
(:action evaluate-comp521-off-comp520
  :parameters ()
  :precondition (and
    (evaluate comp521)
    (not (rebooted comp521))
    (not (running comp520))
  )
  :effect (and
    (not (evaluate comp521))
    (evaluate comp522)
    (one-off comp521)
  )
)
(:action evaluate-comp522-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp522)
    (rebooted comp522)
  )
  :effect (and
    (not (evaluate comp522))
    (evaluate comp523)
  )
)
(:action evaluate-comp522-all-on
  :parameters ()
  :precondition (and
    (evaluate comp522)
    (not (rebooted comp522))
    (running comp521)
  )
  :effect (and
    (not (evaluate comp522))
    (evaluate comp523)
    (all-on comp522)
  )
)
(:action evaluate-comp522-off-comp521
  :parameters ()
  :precondition (and
    (evaluate comp522)
    (not (rebooted comp522))
    (not (running comp521))
  )
  :effect (and
    (not (evaluate comp522))
    (evaluate comp523)
    (one-off comp522)
  )
)
(:action evaluate-comp523-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (rebooted comp523)
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
  )
)
(:action evaluate-comp523-all-on
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (not (rebooted comp523))
    (running comp312)
    (running comp522)
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
    (all-on comp523)
  )
)
(:action evaluate-comp523-off-comp312
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (not (rebooted comp523))
    (not (running comp312))
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
    (one-off comp523)
  )
)
(:action evaluate-comp523-off-comp522
  :parameters ()
  :precondition (and
    (evaluate comp523)
    (not (rebooted comp523))
    (not (running comp522))
  )
  :effect (and
    (not (evaluate comp523))
    (evaluate comp524)
    (one-off comp523)
  )
)
(:action evaluate-comp524-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp524)
    (rebooted comp524)
  )
  :effect (and
    (not (evaluate comp524))
    (evaluate comp525)
  )
)
(:action evaluate-comp524-all-on
  :parameters ()
  :precondition (and
    (evaluate comp524)
    (not (rebooted comp524))
    (running comp523)
  )
  :effect (and
    (not (evaluate comp524))
    (evaluate comp525)
    (all-on comp524)
  )
)
(:action evaluate-comp524-off-comp523
  :parameters ()
  :precondition (and
    (evaluate comp524)
    (not (rebooted comp524))
    (not (running comp523))
  )
  :effect (and
    (not (evaluate comp524))
    (evaluate comp525)
    (one-off comp524)
  )
)
(:action evaluate-comp525-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp525)
    (rebooted comp525)
  )
  :effect (and
    (not (evaluate comp525))
    (evaluate comp526)
  )
)
(:action evaluate-comp525-all-on
  :parameters ()
  :precondition (and
    (evaluate comp525)
    (not (rebooted comp525))
    (running comp524)
  )
  :effect (and
    (not (evaluate comp525))
    (evaluate comp526)
    (all-on comp525)
  )
)
(:action evaluate-comp525-off-comp524
  :parameters ()
  :precondition (and
    (evaluate comp525)
    (not (rebooted comp525))
    (not (running comp524))
  )
  :effect (and
    (not (evaluate comp525))
    (evaluate comp526)
    (one-off comp525)
  )
)
(:action evaluate-comp526-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp526)
    (rebooted comp526)
  )
  :effect (and
    (not (evaluate comp526))
    (evaluate comp527)
  )
)
(:action evaluate-comp526-all-on
  :parameters ()
  :precondition (and
    (evaluate comp526)
    (not (rebooted comp526))
    (running comp506)
    (running comp525)
  )
  :effect (and
    (not (evaluate comp526))
    (evaluate comp527)
    (all-on comp526)
  )
)
(:action evaluate-comp526-off-comp506
  :parameters ()
  :precondition (and
    (evaluate comp526)
    (not (rebooted comp526))
    (not (running comp506))
  )
  :effect (and
    (not (evaluate comp526))
    (evaluate comp527)
    (one-off comp526)
  )
)
(:action evaluate-comp526-off-comp525
  :parameters ()
  :precondition (and
    (evaluate comp526)
    (not (rebooted comp526))
    (not (running comp525))
  )
  :effect (and
    (not (evaluate comp526))
    (evaluate comp527)
    (one-off comp526)
  )
)
(:action evaluate-comp527-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp527)
    (rebooted comp527)
  )
  :effect (and
    (not (evaluate comp527))
    (evaluate comp528)
  )
)
(:action evaluate-comp527-all-on
  :parameters ()
  :precondition (and
    (evaluate comp527)
    (not (rebooted comp527))
    (running comp526)
  )
  :effect (and
    (not (evaluate comp527))
    (evaluate comp528)
    (all-on comp527)
  )
)
(:action evaluate-comp527-off-comp526
  :parameters ()
  :precondition (and
    (evaluate comp527)
    (not (rebooted comp527))
    (not (running comp526))
  )
  :effect (and
    (not (evaluate comp527))
    (evaluate comp528)
    (one-off comp527)
  )
)
(:action evaluate-comp528-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (rebooted comp528)
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
  )
)
(:action evaluate-comp528-all-on
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (not (rebooted comp528))
    (running comp277)
    (running comp527)
    (running comp569)
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
    (all-on comp528)
  )
)
(:action evaluate-comp528-off-comp277
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (not (rebooted comp528))
    (not (running comp277))
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
    (one-off comp528)
  )
)
(:action evaluate-comp528-off-comp527
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (not (rebooted comp528))
    (not (running comp527))
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
    (one-off comp528)
  )
)
(:action evaluate-comp528-off-comp569
  :parameters ()
  :precondition (and
    (evaluate comp528)
    (not (rebooted comp528))
    (not (running comp569))
  )
  :effect (and
    (not (evaluate comp528))
    (evaluate comp529)
    (one-off comp528)
  )
)
(:action evaluate-comp529-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp529)
    (rebooted comp529)
  )
  :effect (and
    (not (evaluate comp529))
    (evaluate comp530)
  )
)
(:action evaluate-comp529-all-on
  :parameters ()
  :precondition (and
    (evaluate comp529)
    (not (rebooted comp529))
    (running comp528)
  )
  :effect (and
    (not (evaluate comp529))
    (evaluate comp530)
    (all-on comp529)
  )
)
(:action evaluate-comp529-off-comp528
  :parameters ()
  :precondition (and
    (evaluate comp529)
    (not (rebooted comp529))
    (not (running comp528))
  )
  :effect (and
    (not (evaluate comp529))
    (evaluate comp530)
    (one-off comp529)
  )
)
(:action evaluate-comp530-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (rebooted comp530)
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
  )
)
(:action evaluate-comp530-all-on
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (not (rebooted comp530))
    (running comp529)
    (running comp687)
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
    (all-on comp530)
  )
)
(:action evaluate-comp530-off-comp529
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (not (rebooted comp530))
    (not (running comp529))
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
    (one-off comp530)
  )
)
(:action evaluate-comp530-off-comp687
  :parameters ()
  :precondition (and
    (evaluate comp530)
    (not (rebooted comp530))
    (not (running comp687))
  )
  :effect (and
    (not (evaluate comp530))
    (evaluate comp531)
    (one-off comp530)
  )
)
(:action evaluate-comp531-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp531)
    (rebooted comp531)
  )
  :effect (and
    (not (evaluate comp531))
    (evaluate comp532)
  )
)
(:action evaluate-comp531-all-on
  :parameters ()
  :precondition (and
    (evaluate comp531)
    (not (rebooted comp531))
    (running comp335)
    (running comp530)
  )
  :effect (and
    (not (evaluate comp531))
    (evaluate comp532)
    (all-on comp531)
  )
)
(:action evaluate-comp531-off-comp335
  :parameters ()
  :precondition (and
    (evaluate comp531)
    (not (rebooted comp531))
    (not (running comp335))
  )
  :effect (and
    (not (evaluate comp531))
    (evaluate comp532)
    (one-off comp531)
  )
)
(:action evaluate-comp531-off-comp530
  :parameters ()
  :precondition (and
    (evaluate comp531)
    (not (rebooted comp531))
    (not (running comp530))
  )
  :effect (and
    (not (evaluate comp531))
    (evaluate comp532)
    (one-off comp531)
  )
)
(:action evaluate-comp532-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp532)
    (rebooted comp532)
  )
  :effect (and
    (not (evaluate comp532))
    (evaluate comp533)
  )
)
(:action evaluate-comp532-all-on
  :parameters ()
  :precondition (and
    (evaluate comp532)
    (not (rebooted comp532))
    (running comp531)
  )
  :effect (and
    (not (evaluate comp532))
    (evaluate comp533)
    (all-on comp532)
  )
)
(:action evaluate-comp532-off-comp531
  :parameters ()
  :precondition (and
    (evaluate comp532)
    (not (rebooted comp532))
    (not (running comp531))
  )
  :effect (and
    (not (evaluate comp532))
    (evaluate comp533)
    (one-off comp532)
  )
)
(:action evaluate-comp533-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (rebooted comp533)
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
  )
)
(:action evaluate-comp533-all-on
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (not (rebooted comp533))
    (running comp532)
    (running comp633)
    (running comp813)
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
    (all-on comp533)
  )
)
(:action evaluate-comp533-off-comp532
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (not (rebooted comp533))
    (not (running comp532))
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
    (one-off comp533)
  )
)
(:action evaluate-comp533-off-comp633
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (not (rebooted comp533))
    (not (running comp633))
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
    (one-off comp533)
  )
)
(:action evaluate-comp533-off-comp813
  :parameters ()
  :precondition (and
    (evaluate comp533)
    (not (rebooted comp533))
    (not (running comp813))
  )
  :effect (and
    (not (evaluate comp533))
    (evaluate comp534)
    (one-off comp533)
  )
)
(:action evaluate-comp534-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp534)
    (rebooted comp534)
  )
  :effect (and
    (not (evaluate comp534))
    (evaluate comp535)
  )
)
(:action evaluate-comp534-all-on
  :parameters ()
  :precondition (and
    (evaluate comp534)
    (not (rebooted comp534))
    (running comp533)
  )
  :effect (and
    (not (evaluate comp534))
    (evaluate comp535)
    (all-on comp534)
  )
)
(:action evaluate-comp534-off-comp533
  :parameters ()
  :precondition (and
    (evaluate comp534)
    (not (rebooted comp534))
    (not (running comp533))
  )
  :effect (and
    (not (evaluate comp534))
    (evaluate comp535)
    (one-off comp534)
  )
)
(:action evaluate-comp535-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp535)
    (rebooted comp535)
  )
  :effect (and
    (not (evaluate comp535))
    (evaluate comp536)
  )
)
(:action evaluate-comp535-all-on
  :parameters ()
  :precondition (and
    (evaluate comp535)
    (not (rebooted comp535))
    (running comp534)
  )
  :effect (and
    (not (evaluate comp535))
    (evaluate comp536)
    (all-on comp535)
  )
)
(:action evaluate-comp535-off-comp534
  :parameters ()
  :precondition (and
    (evaluate comp535)
    (not (rebooted comp535))
    (not (running comp534))
  )
  :effect (and
    (not (evaluate comp535))
    (evaluate comp536)
    (one-off comp535)
  )
)
(:action evaluate-comp536-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp536)
    (rebooted comp536)
  )
  :effect (and
    (not (evaluate comp536))
    (evaluate comp537)
  )
)
(:action evaluate-comp536-all-on
  :parameters ()
  :precondition (and
    (evaluate comp536)
    (not (rebooted comp536))
    (running comp535)
  )
  :effect (and
    (not (evaluate comp536))
    (evaluate comp537)
    (all-on comp536)
  )
)
(:action evaluate-comp536-off-comp535
  :parameters ()
  :precondition (and
    (evaluate comp536)
    (not (rebooted comp536))
    (not (running comp535))
  )
  :effect (and
    (not (evaluate comp536))
    (evaluate comp537)
    (one-off comp536)
  )
)
(:action evaluate-comp537-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp537)
    (rebooted comp537)
  )
  :effect (and
    (not (evaluate comp537))
    (evaluate comp538)
  )
)
(:action evaluate-comp537-all-on
  :parameters ()
  :precondition (and
    (evaluate comp537)
    (not (rebooted comp537))
    (running comp536)
  )
  :effect (and
    (not (evaluate comp537))
    (evaluate comp538)
    (all-on comp537)
  )
)
(:action evaluate-comp537-off-comp536
  :parameters ()
  :precondition (and
    (evaluate comp537)
    (not (rebooted comp537))
    (not (running comp536))
  )
  :effect (and
    (not (evaluate comp537))
    (evaluate comp538)
    (one-off comp537)
  )
)
(:action evaluate-comp538-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp538)
    (rebooted comp538)
  )
  :effect (and
    (not (evaluate comp538))
    (evaluate comp539)
  )
)
(:action evaluate-comp538-all-on
  :parameters ()
  :precondition (and
    (evaluate comp538)
    (not (rebooted comp538))
    (running comp537)
  )
  :effect (and
    (not (evaluate comp538))
    (evaluate comp539)
    (all-on comp538)
  )
)
(:action evaluate-comp538-off-comp537
  :parameters ()
  :precondition (and
    (evaluate comp538)
    (not (rebooted comp538))
    (not (running comp537))
  )
  :effect (and
    (not (evaluate comp538))
    (evaluate comp539)
    (one-off comp538)
  )
)
(:action evaluate-comp539-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp539)
    (rebooted comp539)
  )
  :effect (and
    (not (evaluate comp539))
    (evaluate comp540)
  )
)
(:action evaluate-comp539-all-on
  :parameters ()
  :precondition (and
    (evaluate comp539)
    (not (rebooted comp539))
    (running comp454)
    (running comp538)
  )
  :effect (and
    (not (evaluate comp539))
    (evaluate comp540)
    (all-on comp539)
  )
)
(:action evaluate-comp539-off-comp454
  :parameters ()
  :precondition (and
    (evaluate comp539)
    (not (rebooted comp539))
    (not (running comp454))
  )
  :effect (and
    (not (evaluate comp539))
    (evaluate comp540)
    (one-off comp539)
  )
)
(:action evaluate-comp539-off-comp538
  :parameters ()
  :precondition (and
    (evaluate comp539)
    (not (rebooted comp539))
    (not (running comp538))
  )
  :effect (and
    (not (evaluate comp539))
    (evaluate comp540)
    (one-off comp539)
  )
)
(:action evaluate-comp540-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp540)
    (rebooted comp540)
  )
  :effect (and
    (not (evaluate comp540))
    (evaluate comp541)
  )
)
(:action evaluate-comp540-all-on
  :parameters ()
  :precondition (and
    (evaluate comp540)
    (not (rebooted comp540))
    (running comp180)
    (running comp539)
  )
  :effect (and
    (not (evaluate comp540))
    (evaluate comp541)
    (all-on comp540)
  )
)
(:action evaluate-comp540-off-comp180
  :parameters ()
  :precondition (and
    (evaluate comp540)
    (not (rebooted comp540))
    (not (running comp180))
  )
  :effect (and
    (not (evaluate comp540))
    (evaluate comp541)
    (one-off comp540)
  )
)
(:action evaluate-comp540-off-comp539
  :parameters ()
  :precondition (and
    (evaluate comp540)
    (not (rebooted comp540))
    (not (running comp539))
  )
  :effect (and
    (not (evaluate comp540))
    (evaluate comp541)
    (one-off comp540)
  )
)
(:action evaluate-comp541-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp541)
    (rebooted comp541)
  )
  :effect (and
    (not (evaluate comp541))
    (evaluate comp542)
  )
)
(:action evaluate-comp541-all-on
  :parameters ()
  :precondition (and
    (evaluate comp541)
    (not (rebooted comp541))
    (running comp540)
    (running comp903)
  )
  :effect (and
    (not (evaluate comp541))
    (evaluate comp542)
    (all-on comp541)
  )
)
(:action evaluate-comp541-off-comp540
  :parameters ()
  :precondition (and
    (evaluate comp541)
    (not (rebooted comp541))
    (not (running comp540))
  )
  :effect (and
    (not (evaluate comp541))
    (evaluate comp542)
    (one-off comp541)
  )
)
(:action evaluate-comp541-off-comp903
  :parameters ()
  :precondition (and
    (evaluate comp541)
    (not (rebooted comp541))
    (not (running comp903))
  )
  :effect (and
    (not (evaluate comp541))
    (evaluate comp542)
    (one-off comp541)
  )
)
(:action evaluate-comp542-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp542)
    (rebooted comp542)
  )
  :effect (and
    (not (evaluate comp542))
    (evaluate comp543)
  )
)
(:action evaluate-comp542-all-on
  :parameters ()
  :precondition (and
    (evaluate comp542)
    (not (rebooted comp542))
    (running comp541)
  )
  :effect (and
    (not (evaluate comp542))
    (evaluate comp543)
    (all-on comp542)
  )
)
(:action evaluate-comp542-off-comp541
  :parameters ()
  :precondition (and
    (evaluate comp542)
    (not (rebooted comp542))
    (not (running comp541))
  )
  :effect (and
    (not (evaluate comp542))
    (evaluate comp543)
    (one-off comp542)
  )
)
(:action evaluate-comp543-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp543)
    (rebooted comp543)
  )
  :effect (and
    (not (evaluate comp543))
    (evaluate comp544)
  )
)
(:action evaluate-comp543-all-on
  :parameters ()
  :precondition (and
    (evaluate comp543)
    (not (rebooted comp543))
    (running comp542)
  )
  :effect (and
    (not (evaluate comp543))
    (evaluate comp544)
    (all-on comp543)
  )
)
(:action evaluate-comp543-off-comp542
  :parameters ()
  :precondition (and
    (evaluate comp543)
    (not (rebooted comp543))
    (not (running comp542))
  )
  :effect (and
    (not (evaluate comp543))
    (evaluate comp544)
    (one-off comp543)
  )
)
(:action evaluate-comp544-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (rebooted comp544)
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
  )
)
(:action evaluate-comp544-all-on
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (not (rebooted comp544))
    (running comp239)
    (running comp543)
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
    (all-on comp544)
  )
)
(:action evaluate-comp544-off-comp239
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (not (rebooted comp544))
    (not (running comp239))
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
    (one-off comp544)
  )
)
(:action evaluate-comp544-off-comp543
  :parameters ()
  :precondition (and
    (evaluate comp544)
    (not (rebooted comp544))
    (not (running comp543))
  )
  :effect (and
    (not (evaluate comp544))
    (evaluate comp545)
    (one-off comp544)
  )
)
(:action evaluate-comp545-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (rebooted comp545)
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
  )
)
(:action evaluate-comp545-all-on
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (not (rebooted comp545))
    (running comp544)
    (running comp560)
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
    (all-on comp545)
  )
)
(:action evaluate-comp545-off-comp544
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (not (rebooted comp545))
    (not (running comp544))
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
    (one-off comp545)
  )
)
(:action evaluate-comp545-off-comp560
  :parameters ()
  :precondition (and
    (evaluate comp545)
    (not (rebooted comp545))
    (not (running comp560))
  )
  :effect (and
    (not (evaluate comp545))
    (evaluate comp546)
    (one-off comp545)
  )
)
(:action evaluate-comp546-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp546)
    (rebooted comp546)
  )
  :effect (and
    (not (evaluate comp546))
    (evaluate comp547)
  )
)
(:action evaluate-comp546-all-on
  :parameters ()
  :precondition (and
    (evaluate comp546)
    (not (rebooted comp546))
    (running comp545)
  )
  :effect (and
    (not (evaluate comp546))
    (evaluate comp547)
    (all-on comp546)
  )
)
(:action evaluate-comp546-off-comp545
  :parameters ()
  :precondition (and
    (evaluate comp546)
    (not (rebooted comp546))
    (not (running comp545))
  )
  :effect (and
    (not (evaluate comp546))
    (evaluate comp547)
    (one-off comp546)
  )
)
(:action evaluate-comp547-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (rebooted comp547)
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
  )
)
(:action evaluate-comp547-all-on
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (not (rebooted comp547))
    (running comp193)
    (running comp546)
    (running comp882)
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
    (all-on comp547)
  )
)
(:action evaluate-comp547-off-comp193
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (not (rebooted comp547))
    (not (running comp193))
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
    (one-off comp547)
  )
)
(:action evaluate-comp547-off-comp546
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (not (rebooted comp547))
    (not (running comp546))
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
    (one-off comp547)
  )
)
(:action evaluate-comp547-off-comp882
  :parameters ()
  :precondition (and
    (evaluate comp547)
    (not (rebooted comp547))
    (not (running comp882))
  )
  :effect (and
    (not (evaluate comp547))
    (evaluate comp548)
    (one-off comp547)
  )
)
(:action evaluate-comp548-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (rebooted comp548)
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
  )
)
(:action evaluate-comp548-all-on
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (not (rebooted comp548))
    (running comp547)
    (running comp586)
    (running comp678)
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
    (all-on comp548)
  )
)
(:action evaluate-comp548-off-comp547
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (not (rebooted comp548))
    (not (running comp547))
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
    (one-off comp548)
  )
)
(:action evaluate-comp548-off-comp586
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (not (rebooted comp548))
    (not (running comp586))
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
    (one-off comp548)
  )
)
(:action evaluate-comp548-off-comp678
  :parameters ()
  :precondition (and
    (evaluate comp548)
    (not (rebooted comp548))
    (not (running comp678))
  )
  :effect (and
    (not (evaluate comp548))
    (evaluate comp549)
    (one-off comp548)
  )
)
(:action evaluate-comp549-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp549)
    (rebooted comp549)
  )
  :effect (and
    (not (evaluate comp549))
    (evaluate comp550)
  )
)
(:action evaluate-comp549-all-on
  :parameters ()
  :precondition (and
    (evaluate comp549)
    (not (rebooted comp549))
    (running comp548)
  )
  :effect (and
    (not (evaluate comp549))
    (evaluate comp550)
    (all-on comp549)
  )
)
(:action evaluate-comp549-off-comp548
  :parameters ()
  :precondition (and
    (evaluate comp549)
    (not (rebooted comp549))
    (not (running comp548))
  )
  :effect (and
    (not (evaluate comp549))
    (evaluate comp550)
    (one-off comp549)
  )
)
(:action evaluate-comp550-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp550)
    (rebooted comp550)
  )
  :effect (and
    (not (evaluate comp550))
    (evaluate comp551)
  )
)
(:action evaluate-comp550-all-on
  :parameters ()
  :precondition (and
    (evaluate comp550)
    (not (rebooted comp550))
    (running comp549)
    (running comp553)
  )
  :effect (and
    (not (evaluate comp550))
    (evaluate comp551)
    (all-on comp550)
  )
)
(:action evaluate-comp550-off-comp549
  :parameters ()
  :precondition (and
    (evaluate comp550)
    (not (rebooted comp550))
    (not (running comp549))
  )
  :effect (and
    (not (evaluate comp550))
    (evaluate comp551)
    (one-off comp550)
  )
)
(:action evaluate-comp550-off-comp553
  :parameters ()
  :precondition (and
    (evaluate comp550)
    (not (rebooted comp550))
    (not (running comp553))
  )
  :effect (and
    (not (evaluate comp550))
    (evaluate comp551)
    (one-off comp550)
  )
)
(:action evaluate-comp551-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp551)
    (rebooted comp551)
  )
  :effect (and
    (not (evaluate comp551))
    (evaluate comp552)
  )
)
(:action evaluate-comp551-all-on
  :parameters ()
  :precondition (and
    (evaluate comp551)
    (not (rebooted comp551))
    (running comp498)
    (running comp550)
  )
  :effect (and
    (not (evaluate comp551))
    (evaluate comp552)
    (all-on comp551)
  )
)
(:action evaluate-comp551-off-comp498
  :parameters ()
  :precondition (and
    (evaluate comp551)
    (not (rebooted comp551))
    (not (running comp498))
  )
  :effect (and
    (not (evaluate comp551))
    (evaluate comp552)
    (one-off comp551)
  )
)
(:action evaluate-comp551-off-comp550
  :parameters ()
  :precondition (and
    (evaluate comp551)
    (not (rebooted comp551))
    (not (running comp550))
  )
  :effect (and
    (not (evaluate comp551))
    (evaluate comp552)
    (one-off comp551)
  )
)
(:action evaluate-comp552-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp552)
    (rebooted comp552)
  )
  :effect (and
    (not (evaluate comp552))
    (evaluate comp553)
  )
)
(:action evaluate-comp552-all-on
  :parameters ()
  :precondition (and
    (evaluate comp552)
    (not (rebooted comp552))
    (running comp498)
    (running comp551)
  )
  :effect (and
    (not (evaluate comp552))
    (evaluate comp553)
    (all-on comp552)
  )
)
(:action evaluate-comp552-off-comp498
  :parameters ()
  :precondition (and
    (evaluate comp552)
    (not (rebooted comp552))
    (not (running comp498))
  )
  :effect (and
    (not (evaluate comp552))
    (evaluate comp553)
    (one-off comp552)
  )
)
(:action evaluate-comp552-off-comp551
  :parameters ()
  :precondition (and
    (evaluate comp552)
    (not (rebooted comp552))
    (not (running comp551))
  )
  :effect (and
    (not (evaluate comp552))
    (evaluate comp553)
    (one-off comp552)
  )
)
(:action evaluate-comp553-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp553)
    (rebooted comp553)
  )
  :effect (and
    (not (evaluate comp553))
    (evaluate comp554)
  )
)
(:action evaluate-comp553-all-on
  :parameters ()
  :precondition (and
    (evaluate comp553)
    (not (rebooted comp553))
    (running comp339)
    (running comp552)
  )
  :effect (and
    (not (evaluate comp553))
    (evaluate comp554)
    (all-on comp553)
  )
)
(:action evaluate-comp553-off-comp339
  :parameters ()
  :precondition (and
    (evaluate comp553)
    (not (rebooted comp553))
    (not (running comp339))
  )
  :effect (and
    (not (evaluate comp553))
    (evaluate comp554)
    (one-off comp553)
  )
)
(:action evaluate-comp553-off-comp552
  :parameters ()
  :precondition (and
    (evaluate comp553)
    (not (rebooted comp553))
    (not (running comp552))
  )
  :effect (and
    (not (evaluate comp553))
    (evaluate comp554)
    (one-off comp553)
  )
)
(:action evaluate-comp554-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp554)
    (rebooted comp554)
  )
  :effect (and
    (not (evaluate comp554))
    (evaluate comp555)
  )
)
(:action evaluate-comp554-all-on
  :parameters ()
  :precondition (and
    (evaluate comp554)
    (not (rebooted comp554))
    (running comp553)
  )
  :effect (and
    (not (evaluate comp554))
    (evaluate comp555)
    (all-on comp554)
  )
)
(:action evaluate-comp554-off-comp553
  :parameters ()
  :precondition (and
    (evaluate comp554)
    (not (rebooted comp554))
    (not (running comp553))
  )
  :effect (and
    (not (evaluate comp554))
    (evaluate comp555)
    (one-off comp554)
  )
)
(:action evaluate-comp555-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp555)
    (rebooted comp555)
  )
  :effect (and
    (not (evaluate comp555))
    (evaluate comp556)
  )
)
(:action evaluate-comp555-all-on
  :parameters ()
  :precondition (and
    (evaluate comp555)
    (not (rebooted comp555))
    (running comp554)
  )
  :effect (and
    (not (evaluate comp555))
    (evaluate comp556)
    (all-on comp555)
  )
)
(:action evaluate-comp555-off-comp554
  :parameters ()
  :precondition (and
    (evaluate comp555)
    (not (rebooted comp555))
    (not (running comp554))
  )
  :effect (and
    (not (evaluate comp555))
    (evaluate comp556)
    (one-off comp555)
  )
)
(:action evaluate-comp556-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (rebooted comp556)
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
  )
)
(:action evaluate-comp556-all-on
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (not (rebooted comp556))
    (running comp194)
    (running comp555)
    (running comp630)
    (running comp728)
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
    (all-on comp556)
  )
)
(:action evaluate-comp556-off-comp194
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (not (rebooted comp556))
    (not (running comp194))
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
    (one-off comp556)
  )
)
(:action evaluate-comp556-off-comp555
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (not (rebooted comp556))
    (not (running comp555))
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
    (one-off comp556)
  )
)
(:action evaluate-comp556-off-comp630
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (not (rebooted comp556))
    (not (running comp630))
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
    (one-off comp556)
  )
)
(:action evaluate-comp556-off-comp728
  :parameters ()
  :precondition (and
    (evaluate comp556)
    (not (rebooted comp556))
    (not (running comp728))
  )
  :effect (and
    (not (evaluate comp556))
    (evaluate comp557)
    (one-off comp556)
  )
)
(:action evaluate-comp557-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (rebooted comp557)
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
  )
)
(:action evaluate-comp557-all-on
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (not (rebooted comp557))
    (running comp185)
    (running comp556)
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
    (all-on comp557)
  )
)
(:action evaluate-comp557-off-comp185
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (not (rebooted comp557))
    (not (running comp185))
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
    (one-off comp557)
  )
)
(:action evaluate-comp557-off-comp556
  :parameters ()
  :precondition (and
    (evaluate comp557)
    (not (rebooted comp557))
    (not (running comp556))
  )
  :effect (and
    (not (evaluate comp557))
    (evaluate comp558)
    (one-off comp557)
  )
)
(:action evaluate-comp558-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp558)
    (rebooted comp558)
  )
  :effect (and
    (not (evaluate comp558))
    (evaluate comp559)
  )
)
(:action evaluate-comp558-all-on
  :parameters ()
  :precondition (and
    (evaluate comp558)
    (not (rebooted comp558))
    (running comp557)
  )
  :effect (and
    (not (evaluate comp558))
    (evaluate comp559)
    (all-on comp558)
  )
)
(:action evaluate-comp558-off-comp557
  :parameters ()
  :precondition (and
    (evaluate comp558)
    (not (rebooted comp558))
    (not (running comp557))
  )
  :effect (and
    (not (evaluate comp558))
    (evaluate comp559)
    (one-off comp558)
  )
)
(:action evaluate-comp559-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp559)
    (rebooted comp559)
  )
  :effect (and
    (not (evaluate comp559))
    (evaluate comp560)
  )
)
(:action evaluate-comp559-all-on
  :parameters ()
  :precondition (and
    (evaluate comp559)
    (not (rebooted comp559))
    (running comp558)
  )
  :effect (and
    (not (evaluate comp559))
    (evaluate comp560)
    (all-on comp559)
  )
)
(:action evaluate-comp559-off-comp558
  :parameters ()
  :precondition (and
    (evaluate comp559)
    (not (rebooted comp559))
    (not (running comp558))
  )
  :effect (and
    (not (evaluate comp559))
    (evaluate comp560)
    (one-off comp559)
  )
)
(:action evaluate-comp560-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp560)
    (rebooted comp560)
  )
  :effect (and
    (not (evaluate comp560))
    (evaluate comp561)
  )
)
(:action evaluate-comp560-all-on
  :parameters ()
  :precondition (and
    (evaluate comp560)
    (not (rebooted comp560))
    (running comp559)
  )
  :effect (and
    (not (evaluate comp560))
    (evaluate comp561)
    (all-on comp560)
  )
)
(:action evaluate-comp560-off-comp559
  :parameters ()
  :precondition (and
    (evaluate comp560)
    (not (rebooted comp560))
    (not (running comp559))
  )
  :effect (and
    (not (evaluate comp560))
    (evaluate comp561)
    (one-off comp560)
  )
)
(:action evaluate-comp561-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp561)
    (rebooted comp561)
  )
  :effect (and
    (not (evaluate comp561))
    (evaluate comp562)
  )
)
(:action evaluate-comp561-all-on
  :parameters ()
  :precondition (and
    (evaluate comp561)
    (not (rebooted comp561))
    (running comp560)
  )
  :effect (and
    (not (evaluate comp561))
    (evaluate comp562)
    (all-on comp561)
  )
)
(:action evaluate-comp561-off-comp560
  :parameters ()
  :precondition (and
    (evaluate comp561)
    (not (rebooted comp561))
    (not (running comp560))
  )
  :effect (and
    (not (evaluate comp561))
    (evaluate comp562)
    (one-off comp561)
  )
)
(:action evaluate-comp562-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (rebooted comp562)
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
  )
)
(:action evaluate-comp562-all-on
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (not (rebooted comp562))
    (running comp393)
    (running comp561)
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
    (all-on comp562)
  )
)
(:action evaluate-comp562-off-comp393
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (not (rebooted comp562))
    (not (running comp393))
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
    (one-off comp562)
  )
)
(:action evaluate-comp562-off-comp561
  :parameters ()
  :precondition (and
    (evaluate comp562)
    (not (rebooted comp562))
    (not (running comp561))
  )
  :effect (and
    (not (evaluate comp562))
    (evaluate comp563)
    (one-off comp562)
  )
)
(:action evaluate-comp563-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp563)
    (rebooted comp563)
  )
  :effect (and
    (not (evaluate comp563))
    (evaluate comp564)
  )
)
(:action evaluate-comp563-all-on
  :parameters ()
  :precondition (and
    (evaluate comp563)
    (not (rebooted comp563))
    (running comp562)
  )
  :effect (and
    (not (evaluate comp563))
    (evaluate comp564)
    (all-on comp563)
  )
)
(:action evaluate-comp563-off-comp562
  :parameters ()
  :precondition (and
    (evaluate comp563)
    (not (rebooted comp563))
    (not (running comp562))
  )
  :effect (and
    (not (evaluate comp563))
    (evaluate comp564)
    (one-off comp563)
  )
)
(:action evaluate-comp564-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (rebooted comp564)
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
  )
)
(:action evaluate-comp564-all-on
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (not (rebooted comp564))
    (running comp224)
    (running comp373)
    (running comp563)
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
    (all-on comp564)
  )
)
(:action evaluate-comp564-off-comp224
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (not (rebooted comp564))
    (not (running comp224))
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
    (one-off comp564)
  )
)
(:action evaluate-comp564-off-comp373
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (not (rebooted comp564))
    (not (running comp373))
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
    (one-off comp564)
  )
)
(:action evaluate-comp564-off-comp563
  :parameters ()
  :precondition (and
    (evaluate comp564)
    (not (rebooted comp564))
    (not (running comp563))
  )
  :effect (and
    (not (evaluate comp564))
    (evaluate comp565)
    (one-off comp564)
  )
)
(:action evaluate-comp565-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp565)
    (rebooted comp565)
  )
  :effect (and
    (not (evaluate comp565))
    (evaluate comp566)
  )
)
(:action evaluate-comp565-all-on
  :parameters ()
  :precondition (and
    (evaluate comp565)
    (not (rebooted comp565))
    (running comp564)
  )
  :effect (and
    (not (evaluate comp565))
    (evaluate comp566)
    (all-on comp565)
  )
)
(:action evaluate-comp565-off-comp564
  :parameters ()
  :precondition (and
    (evaluate comp565)
    (not (rebooted comp565))
    (not (running comp564))
  )
  :effect (and
    (not (evaluate comp565))
    (evaluate comp566)
    (one-off comp565)
  )
)
(:action evaluate-comp566-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp566)
    (rebooted comp566)
  )
  :effect (and
    (not (evaluate comp566))
    (evaluate comp567)
  )
)
(:action evaluate-comp566-all-on
  :parameters ()
  :precondition (and
    (evaluate comp566)
    (not (rebooted comp566))
    (running comp565)
  )
  :effect (and
    (not (evaluate comp566))
    (evaluate comp567)
    (all-on comp566)
  )
)
(:action evaluate-comp566-off-comp565
  :parameters ()
  :precondition (and
    (evaluate comp566)
    (not (rebooted comp566))
    (not (running comp565))
  )
  :effect (and
    (not (evaluate comp566))
    (evaluate comp567)
    (one-off comp566)
  )
)
(:action evaluate-comp567-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (rebooted comp567)
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
  )
)
(:action evaluate-comp567-all-on
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (not (rebooted comp567))
    (running comp272)
    (running comp309)
    (running comp566)
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
    (all-on comp567)
  )
)
(:action evaluate-comp567-off-comp272
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (not (rebooted comp567))
    (not (running comp272))
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
    (one-off comp567)
  )
)
(:action evaluate-comp567-off-comp309
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (not (rebooted comp567))
    (not (running comp309))
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
    (one-off comp567)
  )
)
(:action evaluate-comp567-off-comp566
  :parameters ()
  :precondition (and
    (evaluate comp567)
    (not (rebooted comp567))
    (not (running comp566))
  )
  :effect (and
    (not (evaluate comp567))
    (evaluate comp568)
    (one-off comp567)
  )
)
(:action evaluate-comp568-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp568)
    (rebooted comp568)
  )
  :effect (and
    (not (evaluate comp568))
    (evaluate comp569)
  )
)
(:action evaluate-comp568-all-on
  :parameters ()
  :precondition (and
    (evaluate comp568)
    (not (rebooted comp568))
    (running comp567)
  )
  :effect (and
    (not (evaluate comp568))
    (evaluate comp569)
    (all-on comp568)
  )
)
(:action evaluate-comp568-off-comp567
  :parameters ()
  :precondition (and
    (evaluate comp568)
    (not (rebooted comp568))
    (not (running comp567))
  )
  :effect (and
    (not (evaluate comp568))
    (evaluate comp569)
    (one-off comp568)
  )
)
(:action evaluate-comp569-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (rebooted comp569)
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
  )
)
(:action evaluate-comp569-all-on
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (not (rebooted comp569))
    (running comp205)
    (running comp568)
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
    (all-on comp569)
  )
)
(:action evaluate-comp569-off-comp205
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (not (rebooted comp569))
    (not (running comp205))
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
    (one-off comp569)
  )
)
(:action evaluate-comp569-off-comp568
  :parameters ()
  :precondition (and
    (evaluate comp569)
    (not (rebooted comp569))
    (not (running comp568))
  )
  :effect (and
    (not (evaluate comp569))
    (evaluate comp570)
    (one-off comp569)
  )
)
(:action evaluate-comp570-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp570)
    (rebooted comp570)
  )
  :effect (and
    (not (evaluate comp570))
    (evaluate comp571)
  )
)
(:action evaluate-comp570-all-on
  :parameters ()
  :precondition (and
    (evaluate comp570)
    (not (rebooted comp570))
    (running comp569)
  )
  :effect (and
    (not (evaluate comp570))
    (evaluate comp571)
    (all-on comp570)
  )
)
(:action evaluate-comp570-off-comp569
  :parameters ()
  :precondition (and
    (evaluate comp570)
    (not (rebooted comp570))
    (not (running comp569))
  )
  :effect (and
    (not (evaluate comp570))
    (evaluate comp571)
    (one-off comp570)
  )
)
(:action evaluate-comp571-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp571)
    (rebooted comp571)
  )
  :effect (and
    (not (evaluate comp571))
    (evaluate comp572)
  )
)
(:action evaluate-comp571-all-on
  :parameters ()
  :precondition (and
    (evaluate comp571)
    (not (rebooted comp571))
    (running comp570)
  )
  :effect (and
    (not (evaluate comp571))
    (evaluate comp572)
    (all-on comp571)
  )
)
(:action evaluate-comp571-off-comp570
  :parameters ()
  :precondition (and
    (evaluate comp571)
    (not (rebooted comp571))
    (not (running comp570))
  )
  :effect (and
    (not (evaluate comp571))
    (evaluate comp572)
    (one-off comp571)
  )
)
(:action evaluate-comp572-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp572)
    (rebooted comp572)
  )
  :effect (and
    (not (evaluate comp572))
    (evaluate comp573)
  )
)
(:action evaluate-comp572-all-on
  :parameters ()
  :precondition (and
    (evaluate comp572)
    (not (rebooted comp572))
    (running comp571)
  )
  :effect (and
    (not (evaluate comp572))
    (evaluate comp573)
    (all-on comp572)
  )
)
(:action evaluate-comp572-off-comp571
  :parameters ()
  :precondition (and
    (evaluate comp572)
    (not (rebooted comp572))
    (not (running comp571))
  )
  :effect (and
    (not (evaluate comp572))
    (evaluate comp573)
    (one-off comp572)
  )
)
(:action evaluate-comp573-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp573)
    (rebooted comp573)
  )
  :effect (and
    (not (evaluate comp573))
    (evaluate comp574)
  )
)
(:action evaluate-comp573-all-on
  :parameters ()
  :precondition (and
    (evaluate comp573)
    (not (rebooted comp573))
    (running comp572)
  )
  :effect (and
    (not (evaluate comp573))
    (evaluate comp574)
    (all-on comp573)
  )
)
(:action evaluate-comp573-off-comp572
  :parameters ()
  :precondition (and
    (evaluate comp573)
    (not (rebooted comp573))
    (not (running comp572))
  )
  :effect (and
    (not (evaluate comp573))
    (evaluate comp574)
    (one-off comp573)
  )
)
(:action evaluate-comp574-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp574)
    (rebooted comp574)
  )
  :effect (and
    (not (evaluate comp574))
    (evaluate comp575)
  )
)
(:action evaluate-comp574-all-on
  :parameters ()
  :precondition (and
    (evaluate comp574)
    (not (rebooted comp574))
    (running comp111)
    (running comp573)
  )
  :effect (and
    (not (evaluate comp574))
    (evaluate comp575)
    (all-on comp574)
  )
)
(:action evaluate-comp574-off-comp111
  :parameters ()
  :precondition (and
    (evaluate comp574)
    (not (rebooted comp574))
    (not (running comp111))
  )
  :effect (and
    (not (evaluate comp574))
    (evaluate comp575)
    (one-off comp574)
  )
)
(:action evaluate-comp574-off-comp573
  :parameters ()
  :precondition (and
    (evaluate comp574)
    (not (rebooted comp574))
    (not (running comp573))
  )
  :effect (and
    (not (evaluate comp574))
    (evaluate comp575)
    (one-off comp574)
  )
)
(:action evaluate-comp575-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp575)
    (rebooted comp575)
  )
  :effect (and
    (not (evaluate comp575))
    (evaluate comp576)
  )
)
(:action evaluate-comp575-all-on
  :parameters ()
  :precondition (and
    (evaluate comp575)
    (not (rebooted comp575))
    (running comp574)
  )
  :effect (and
    (not (evaluate comp575))
    (evaluate comp576)
    (all-on comp575)
  )
)
(:action evaluate-comp575-off-comp574
  :parameters ()
  :precondition (and
    (evaluate comp575)
    (not (rebooted comp575))
    (not (running comp574))
  )
  :effect (and
    (not (evaluate comp575))
    (evaluate comp576)
    (one-off comp575)
  )
)
(:action evaluate-comp576-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp576)
    (rebooted comp576)
  )
  :effect (and
    (not (evaluate comp576))
    (evaluate comp577)
  )
)
(:action evaluate-comp576-all-on
  :parameters ()
  :precondition (and
    (evaluate comp576)
    (not (rebooted comp576))
    (running comp575)
  )
  :effect (and
    (not (evaluate comp576))
    (evaluate comp577)
    (all-on comp576)
  )
)
(:action evaluate-comp576-off-comp575
  :parameters ()
  :precondition (and
    (evaluate comp576)
    (not (rebooted comp576))
    (not (running comp575))
  )
  :effect (and
    (not (evaluate comp576))
    (evaluate comp577)
    (one-off comp576)
  )
)
(:action evaluate-comp577-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (rebooted comp577)
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
  )
)
(:action evaluate-comp577-all-on
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (not (rebooted comp577))
    (running comp576)
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
    (all-on comp577)
  )
)
(:action evaluate-comp577-off-comp576
  :parameters ()
  :precondition (and
    (evaluate comp577)
    (not (rebooted comp577))
    (not (running comp576))
  )
  :effect (and
    (not (evaluate comp577))
    (evaluate comp578)
    (one-off comp577)
  )
)
(:action evaluate-comp578-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (rebooted comp578)
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
  )
)
(:action evaluate-comp578-all-on
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (not (rebooted comp578))
    (running comp532)
    (running comp577)
    (running comp643)
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
    (all-on comp578)
  )
)
(:action evaluate-comp578-off-comp532
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (not (rebooted comp578))
    (not (running comp532))
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
    (one-off comp578)
  )
)
(:action evaluate-comp578-off-comp577
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (not (rebooted comp578))
    (not (running comp577))
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
    (one-off comp578)
  )
)
(:action evaluate-comp578-off-comp643
  :parameters ()
  :precondition (and
    (evaluate comp578)
    (not (rebooted comp578))
    (not (running comp643))
  )
  :effect (and
    (not (evaluate comp578))
    (evaluate comp579)
    (one-off comp578)
  )
)
(:action evaluate-comp579-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp579)
    (rebooted comp579)
  )
  :effect (and
    (not (evaluate comp579))
    (evaluate comp580)
  )
)
(:action evaluate-comp579-all-on
  :parameters ()
  :precondition (and
    (evaluate comp579)
    (not (rebooted comp579))
    (running comp578)
  )
  :effect (and
    (not (evaluate comp579))
    (evaluate comp580)
    (all-on comp579)
  )
)
(:action evaluate-comp579-off-comp578
  :parameters ()
  :precondition (and
    (evaluate comp579)
    (not (rebooted comp579))
    (not (running comp578))
  )
  :effect (and
    (not (evaluate comp579))
    (evaluate comp580)
    (one-off comp579)
  )
)
(:action evaluate-comp580-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp580)
    (rebooted comp580)
  )
  :effect (and
    (not (evaluate comp580))
    (evaluate comp581)
  )
)
(:action evaluate-comp580-all-on
  :parameters ()
  :precondition (and
    (evaluate comp580)
    (not (rebooted comp580))
    (running comp579)
  )
  :effect (and
    (not (evaluate comp580))
    (evaluate comp581)
    (all-on comp580)
  )
)
(:action evaluate-comp580-off-comp579
  :parameters ()
  :precondition (and
    (evaluate comp580)
    (not (rebooted comp580))
    (not (running comp579))
  )
  :effect (and
    (not (evaluate comp580))
    (evaluate comp581)
    (one-off comp580)
  )
)
(:action evaluate-comp581-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp581)
    (rebooted comp581)
  )
  :effect (and
    (not (evaluate comp581))
    (evaluate comp582)
  )
)
(:action evaluate-comp581-all-on
  :parameters ()
  :precondition (and
    (evaluate comp581)
    (not (rebooted comp581))
    (running comp488)
    (running comp580)
  )
  :effect (and
    (not (evaluate comp581))
    (evaluate comp582)
    (all-on comp581)
  )
)
(:action evaluate-comp581-off-comp488
  :parameters ()
  :precondition (and
    (evaluate comp581)
    (not (rebooted comp581))
    (not (running comp488))
  )
  :effect (and
    (not (evaluate comp581))
    (evaluate comp582)
    (one-off comp581)
  )
)
(:action evaluate-comp581-off-comp580
  :parameters ()
  :precondition (and
    (evaluate comp581)
    (not (rebooted comp581))
    (not (running comp580))
  )
  :effect (and
    (not (evaluate comp581))
    (evaluate comp582)
    (one-off comp581)
  )
)
(:action evaluate-comp582-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp582)
    (rebooted comp582)
  )
  :effect (and
    (not (evaluate comp582))
    (evaluate comp583)
  )
)
(:action evaluate-comp582-all-on
  :parameters ()
  :precondition (and
    (evaluate comp582)
    (not (rebooted comp582))
    (running comp581)
  )
  :effect (and
    (not (evaluate comp582))
    (evaluate comp583)
    (all-on comp582)
  )
)
(:action evaluate-comp582-off-comp581
  :parameters ()
  :precondition (and
    (evaluate comp582)
    (not (rebooted comp582))
    (not (running comp581))
  )
  :effect (and
    (not (evaluate comp582))
    (evaluate comp583)
    (one-off comp582)
  )
)
(:action evaluate-comp583-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (rebooted comp583)
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
  )
)
(:action evaluate-comp583-all-on
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (not (rebooted comp583))
    (running comp108)
    (running comp201)
    (running comp582)
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
    (all-on comp583)
  )
)
(:action evaluate-comp583-off-comp108
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (not (rebooted comp583))
    (not (running comp108))
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
    (one-off comp583)
  )
)
(:action evaluate-comp583-off-comp201
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (not (rebooted comp583))
    (not (running comp201))
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
    (one-off comp583)
  )
)
(:action evaluate-comp583-off-comp582
  :parameters ()
  :precondition (and
    (evaluate comp583)
    (not (rebooted comp583))
    (not (running comp582))
  )
  :effect (and
    (not (evaluate comp583))
    (evaluate comp584)
    (one-off comp583)
  )
)
(:action evaluate-comp584-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp584)
    (rebooted comp584)
  )
  :effect (and
    (not (evaluate comp584))
    (evaluate comp585)
  )
)
(:action evaluate-comp584-all-on
  :parameters ()
  :precondition (and
    (evaluate comp584)
    (not (rebooted comp584))
    (running comp583)
  )
  :effect (and
    (not (evaluate comp584))
    (evaluate comp585)
    (all-on comp584)
  )
)
(:action evaluate-comp584-off-comp583
  :parameters ()
  :precondition (and
    (evaluate comp584)
    (not (rebooted comp584))
    (not (running comp583))
  )
  :effect (and
    (not (evaluate comp584))
    (evaluate comp585)
    (one-off comp584)
  )
)
(:action evaluate-comp585-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp585)
    (rebooted comp585)
  )
  :effect (and
    (not (evaluate comp585))
    (evaluate comp586)
  )
)
(:action evaluate-comp585-all-on
  :parameters ()
  :precondition (and
    (evaluate comp585)
    (not (rebooted comp585))
    (running comp10)
    (running comp584)
  )
  :effect (and
    (not (evaluate comp585))
    (evaluate comp586)
    (all-on comp585)
  )
)
(:action evaluate-comp585-off-comp10
  :parameters ()
  :precondition (and
    (evaluate comp585)
    (not (rebooted comp585))
    (not (running comp10))
  )
  :effect (and
    (not (evaluate comp585))
    (evaluate comp586)
    (one-off comp585)
  )
)
(:action evaluate-comp585-off-comp584
  :parameters ()
  :precondition (and
    (evaluate comp585)
    (not (rebooted comp585))
    (not (running comp584))
  )
  :effect (and
    (not (evaluate comp585))
    (evaluate comp586)
    (one-off comp585)
  )
)
(:action evaluate-comp586-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp586)
    (rebooted comp586)
  )
  :effect (and
    (not (evaluate comp586))
    (evaluate comp587)
  )
)
(:action evaluate-comp586-all-on
  :parameters ()
  :precondition (and
    (evaluate comp586)
    (not (rebooted comp586))
    (running comp585)
  )
  :effect (and
    (not (evaluate comp586))
    (evaluate comp587)
    (all-on comp586)
  )
)
(:action evaluate-comp586-off-comp585
  :parameters ()
  :precondition (and
    (evaluate comp586)
    (not (rebooted comp586))
    (not (running comp585))
  )
  :effect (and
    (not (evaluate comp586))
    (evaluate comp587)
    (one-off comp586)
  )
)
(:action evaluate-comp587-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp587)
    (rebooted comp587)
  )
  :effect (and
    (not (evaluate comp587))
    (evaluate comp588)
  )
)
(:action evaluate-comp587-all-on
  :parameters ()
  :precondition (and
    (evaluate comp587)
    (not (rebooted comp587))
    (running comp586)
  )
  :effect (and
    (not (evaluate comp587))
    (evaluate comp588)
    (all-on comp587)
  )
)
(:action evaluate-comp587-off-comp586
  :parameters ()
  :precondition (and
    (evaluate comp587)
    (not (rebooted comp587))
    (not (running comp586))
  )
  :effect (and
    (not (evaluate comp587))
    (evaluate comp588)
    (one-off comp587)
  )
)
(:action evaluate-comp588-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp588)
    (rebooted comp588)
  )
  :effect (and
    (not (evaluate comp588))
    (evaluate comp589)
  )
)
(:action evaluate-comp588-all-on
  :parameters ()
  :precondition (and
    (evaluate comp588)
    (not (rebooted comp588))
    (running comp587)
  )
  :effect (and
    (not (evaluate comp588))
    (evaluate comp589)
    (all-on comp588)
  )
)
(:action evaluate-comp588-off-comp587
  :parameters ()
  :precondition (and
    (evaluate comp588)
    (not (rebooted comp588))
    (not (running comp587))
  )
  :effect (and
    (not (evaluate comp588))
    (evaluate comp589)
    (one-off comp588)
  )
)
(:action evaluate-comp589-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (rebooted comp589)
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
  )
)
(:action evaluate-comp589-all-on
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (not (rebooted comp589))
    (running comp114)
    (running comp588)
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
    (all-on comp589)
  )
)
(:action evaluate-comp589-off-comp114
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (not (rebooted comp589))
    (not (running comp114))
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
    (one-off comp589)
  )
)
(:action evaluate-comp589-off-comp588
  :parameters ()
  :precondition (and
    (evaluate comp589)
    (not (rebooted comp589))
    (not (running comp588))
  )
  :effect (and
    (not (evaluate comp589))
    (evaluate comp590)
    (one-off comp589)
  )
)
(:action evaluate-comp590-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp590)
    (rebooted comp590)
  )
  :effect (and
    (not (evaluate comp590))
    (evaluate comp591)
  )
)
(:action evaluate-comp590-all-on
  :parameters ()
  :precondition (and
    (evaluate comp590)
    (not (rebooted comp590))
    (running comp589)
  )
  :effect (and
    (not (evaluate comp590))
    (evaluate comp591)
    (all-on comp590)
  )
)
(:action evaluate-comp590-off-comp589
  :parameters ()
  :precondition (and
    (evaluate comp590)
    (not (rebooted comp590))
    (not (running comp589))
  )
  :effect (and
    (not (evaluate comp590))
    (evaluate comp591)
    (one-off comp590)
  )
)
(:action evaluate-comp591-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp591)
    (rebooted comp591)
  )
  :effect (and
    (not (evaluate comp591))
    (evaluate comp592)
  )
)
(:action evaluate-comp591-all-on
  :parameters ()
  :precondition (and
    (evaluate comp591)
    (not (rebooted comp591))
    (running comp590)
  )
  :effect (and
    (not (evaluate comp591))
    (evaluate comp592)
    (all-on comp591)
  )
)
(:action evaluate-comp591-off-comp590
  :parameters ()
  :precondition (and
    (evaluate comp591)
    (not (rebooted comp591))
    (not (running comp590))
  )
  :effect (and
    (not (evaluate comp591))
    (evaluate comp592)
    (one-off comp591)
  )
)
(:action evaluate-comp592-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp592)
    (rebooted comp592)
  )
  :effect (and
    (not (evaluate comp592))
    (evaluate comp593)
  )
)
(:action evaluate-comp592-all-on
  :parameters ()
  :precondition (and
    (evaluate comp592)
    (not (rebooted comp592))
    (running comp243)
    (running comp591)
  )
  :effect (and
    (not (evaluate comp592))
    (evaluate comp593)
    (all-on comp592)
  )
)
(:action evaluate-comp592-off-comp243
  :parameters ()
  :precondition (and
    (evaluate comp592)
    (not (rebooted comp592))
    (not (running comp243))
  )
  :effect (and
    (not (evaluate comp592))
    (evaluate comp593)
    (one-off comp592)
  )
)
(:action evaluate-comp592-off-comp591
  :parameters ()
  :precondition (and
    (evaluate comp592)
    (not (rebooted comp592))
    (not (running comp591))
  )
  :effect (and
    (not (evaluate comp592))
    (evaluate comp593)
    (one-off comp592)
  )
)
(:action evaluate-comp593-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp593)
    (rebooted comp593)
  )
  :effect (and
    (not (evaluate comp593))
    (evaluate comp594)
  )
)
(:action evaluate-comp593-all-on
  :parameters ()
  :precondition (and
    (evaluate comp593)
    (not (rebooted comp593))
    (running comp592)
  )
  :effect (and
    (not (evaluate comp593))
    (evaluate comp594)
    (all-on comp593)
  )
)
(:action evaluate-comp593-off-comp592
  :parameters ()
  :precondition (and
    (evaluate comp593)
    (not (rebooted comp593))
    (not (running comp592))
  )
  :effect (and
    (not (evaluate comp593))
    (evaluate comp594)
    (one-off comp593)
  )
)
(:action evaluate-comp594-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp594)
    (rebooted comp594)
  )
  :effect (and
    (not (evaluate comp594))
    (evaluate comp595)
  )
)
(:action evaluate-comp594-all-on
  :parameters ()
  :precondition (and
    (evaluate comp594)
    (not (rebooted comp594))
    (running comp593)
  )
  :effect (and
    (not (evaluate comp594))
    (evaluate comp595)
    (all-on comp594)
  )
)
(:action evaluate-comp594-off-comp593
  :parameters ()
  :precondition (and
    (evaluate comp594)
    (not (rebooted comp594))
    (not (running comp593))
  )
  :effect (and
    (not (evaluate comp594))
    (evaluate comp595)
    (one-off comp594)
  )
)
(:action evaluate-comp595-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp595)
    (rebooted comp595)
  )
  :effect (and
    (not (evaluate comp595))
    (evaluate comp596)
  )
)
(:action evaluate-comp595-all-on
  :parameters ()
  :precondition (and
    (evaluate comp595)
    (not (rebooted comp595))
    (running comp594)
    (running comp684)
  )
  :effect (and
    (not (evaluate comp595))
    (evaluate comp596)
    (all-on comp595)
  )
)
(:action evaluate-comp595-off-comp594
  :parameters ()
  :precondition (and
    (evaluate comp595)
    (not (rebooted comp595))
    (not (running comp594))
  )
  :effect (and
    (not (evaluate comp595))
    (evaluate comp596)
    (one-off comp595)
  )
)
(:action evaluate-comp595-off-comp684
  :parameters ()
  :precondition (and
    (evaluate comp595)
    (not (rebooted comp595))
    (not (running comp684))
  )
  :effect (and
    (not (evaluate comp595))
    (evaluate comp596)
    (one-off comp595)
  )
)
(:action evaluate-comp596-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp596)
    (rebooted comp596)
  )
  :effect (and
    (not (evaluate comp596))
    (evaluate comp597)
  )
)
(:action evaluate-comp596-all-on
  :parameters ()
  :precondition (and
    (evaluate comp596)
    (not (rebooted comp596))
    (running comp391)
    (running comp595)
  )
  :effect (and
    (not (evaluate comp596))
    (evaluate comp597)
    (all-on comp596)
  )
)
(:action evaluate-comp596-off-comp391
  :parameters ()
  :precondition (and
    (evaluate comp596)
    (not (rebooted comp596))
    (not (running comp391))
  )
  :effect (and
    (not (evaluate comp596))
    (evaluate comp597)
    (one-off comp596)
  )
)
(:action evaluate-comp596-off-comp595
  :parameters ()
  :precondition (and
    (evaluate comp596)
    (not (rebooted comp596))
    (not (running comp595))
  )
  :effect (and
    (not (evaluate comp596))
    (evaluate comp597)
    (one-off comp596)
  )
)
(:action evaluate-comp597-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (rebooted comp597)
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
  )
)
(:action evaluate-comp597-all-on
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (not (rebooted comp597))
    (running comp596)
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
    (all-on comp597)
  )
)
(:action evaluate-comp597-off-comp596
  :parameters ()
  :precondition (and
    (evaluate comp597)
    (not (rebooted comp597))
    (not (running comp596))
  )
  :effect (and
    (not (evaluate comp597))
    (evaluate comp598)
    (one-off comp597)
  )
)
(:action evaluate-comp598-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp598)
    (rebooted comp598)
  )
  :effect (and
    (not (evaluate comp598))
    (evaluate comp599)
  )
)
(:action evaluate-comp598-all-on
  :parameters ()
  :precondition (and
    (evaluate comp598)
    (not (rebooted comp598))
    (running comp466)
    (running comp597)
  )
  :effect (and
    (not (evaluate comp598))
    (evaluate comp599)
    (all-on comp598)
  )
)
(:action evaluate-comp598-off-comp466
  :parameters ()
  :precondition (and
    (evaluate comp598)
    (not (rebooted comp598))
    (not (running comp466))
  )
  :effect (and
    (not (evaluate comp598))
    (evaluate comp599)
    (one-off comp598)
  )
)
(:action evaluate-comp598-off-comp597
  :parameters ()
  :precondition (and
    (evaluate comp598)
    (not (rebooted comp598))
    (not (running comp597))
  )
  :effect (and
    (not (evaluate comp598))
    (evaluate comp599)
    (one-off comp598)
  )
)
(:action evaluate-comp599-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp599)
    (rebooted comp599)
  )
  :effect (and
    (not (evaluate comp599))
    (evaluate comp600)
  )
)
(:action evaluate-comp599-all-on
  :parameters ()
  :precondition (and
    (evaluate comp599)
    (not (rebooted comp599))
    (running comp450)
    (running comp598)
  )
  :effect (and
    (not (evaluate comp599))
    (evaluate comp600)
    (all-on comp599)
  )
)
(:action evaluate-comp599-off-comp450
  :parameters ()
  :precondition (and
    (evaluate comp599)
    (not (rebooted comp599))
    (not (running comp450))
  )
  :effect (and
    (not (evaluate comp599))
    (evaluate comp600)
    (one-off comp599)
  )
)
(:action evaluate-comp599-off-comp598
  :parameters ()
  :precondition (and
    (evaluate comp599)
    (not (rebooted comp599))
    (not (running comp598))
  )
  :effect (and
    (not (evaluate comp599))
    (evaluate comp600)
    (one-off comp599)
  )
)
(:action evaluate-comp600-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp600)
    (rebooted comp600)
  )
  :effect (and
    (not (evaluate comp600))
    (evaluate comp601)
  )
)
(:action evaluate-comp600-all-on
  :parameters ()
  :precondition (and
    (evaluate comp600)
    (not (rebooted comp600))
    (running comp532)
    (running comp599)
  )
  :effect (and
    (not (evaluate comp600))
    (evaluate comp601)
    (all-on comp600)
  )
)
(:action evaluate-comp600-off-comp532
  :parameters ()
  :precondition (and
    (evaluate comp600)
    (not (rebooted comp600))
    (not (running comp532))
  )
  :effect (and
    (not (evaluate comp600))
    (evaluate comp601)
    (one-off comp600)
  )
)
(:action evaluate-comp600-off-comp599
  :parameters ()
  :precondition (and
    (evaluate comp600)
    (not (rebooted comp600))
    (not (running comp599))
  )
  :effect (and
    (not (evaluate comp600))
    (evaluate comp601)
    (one-off comp600)
  )
)
(:action evaluate-comp601-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp601)
    (rebooted comp601)
  )
  :effect (and
    (not (evaluate comp601))
    (evaluate comp602)
  )
)
(:action evaluate-comp601-all-on
  :parameters ()
  :precondition (and
    (evaluate comp601)
    (not (rebooted comp601))
    (running comp600)
  )
  :effect (and
    (not (evaluate comp601))
    (evaluate comp602)
    (all-on comp601)
  )
)
(:action evaluate-comp601-off-comp600
  :parameters ()
  :precondition (and
    (evaluate comp601)
    (not (rebooted comp601))
    (not (running comp600))
  )
  :effect (and
    (not (evaluate comp601))
    (evaluate comp602)
    (one-off comp601)
  )
)
(:action evaluate-comp602-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp602)
    (rebooted comp602)
  )
  :effect (and
    (not (evaluate comp602))
    (evaluate comp603)
  )
)
(:action evaluate-comp602-all-on
  :parameters ()
  :precondition (and
    (evaluate comp602)
    (not (rebooted comp602))
    (running comp601)
  )
  :effect (and
    (not (evaluate comp602))
    (evaluate comp603)
    (all-on comp602)
  )
)
(:action evaluate-comp602-off-comp601
  :parameters ()
  :precondition (and
    (evaluate comp602)
    (not (rebooted comp602))
    (not (running comp601))
  )
  :effect (and
    (not (evaluate comp602))
    (evaluate comp603)
    (one-off comp602)
  )
)
(:action evaluate-comp603-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp603)
    (rebooted comp603)
  )
  :effect (and
    (not (evaluate comp603))
    (evaluate comp604)
  )
)
(:action evaluate-comp603-all-on
  :parameters ()
  :precondition (and
    (evaluate comp603)
    (not (rebooted comp603))
    (running comp602)
  )
  :effect (and
    (not (evaluate comp603))
    (evaluate comp604)
    (all-on comp603)
  )
)
(:action evaluate-comp603-off-comp602
  :parameters ()
  :precondition (and
    (evaluate comp603)
    (not (rebooted comp603))
    (not (running comp602))
  )
  :effect (and
    (not (evaluate comp603))
    (evaluate comp604)
    (one-off comp603)
  )
)
(:action evaluate-comp604-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp604)
    (rebooted comp604)
  )
  :effect (and
    (not (evaluate comp604))
    (evaluate comp605)
  )
)
(:action evaluate-comp604-all-on
  :parameters ()
  :precondition (and
    (evaluate comp604)
    (not (rebooted comp604))
    (running comp603)
  )
  :effect (and
    (not (evaluate comp604))
    (evaluate comp605)
    (all-on comp604)
  )
)
(:action evaluate-comp604-off-comp603
  :parameters ()
  :precondition (and
    (evaluate comp604)
    (not (rebooted comp604))
    (not (running comp603))
  )
  :effect (and
    (not (evaluate comp604))
    (evaluate comp605)
    (one-off comp604)
  )
)
(:action evaluate-comp605-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp605)
    (rebooted comp605)
  )
  :effect (and
    (not (evaluate comp605))
    (evaluate comp606)
  )
)
(:action evaluate-comp605-all-on
  :parameters ()
  :precondition (and
    (evaluate comp605)
    (not (rebooted comp605))
    (running comp490)
    (running comp604)
  )
  :effect (and
    (not (evaluate comp605))
    (evaluate comp606)
    (all-on comp605)
  )
)
(:action evaluate-comp605-off-comp490
  :parameters ()
  :precondition (and
    (evaluate comp605)
    (not (rebooted comp605))
    (not (running comp490))
  )
  :effect (and
    (not (evaluate comp605))
    (evaluate comp606)
    (one-off comp605)
  )
)
(:action evaluate-comp605-off-comp604
  :parameters ()
  :precondition (and
    (evaluate comp605)
    (not (rebooted comp605))
    (not (running comp604))
  )
  :effect (and
    (not (evaluate comp605))
    (evaluate comp606)
    (one-off comp605)
  )
)
(:action evaluate-comp606-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp606)
    (rebooted comp606)
  )
  :effect (and
    (not (evaluate comp606))
    (evaluate comp607)
  )
)
(:action evaluate-comp606-all-on
  :parameters ()
  :precondition (and
    (evaluate comp606)
    (not (rebooted comp606))
    (running comp605)
  )
  :effect (and
    (not (evaluate comp606))
    (evaluate comp607)
    (all-on comp606)
  )
)
(:action evaluate-comp606-off-comp605
  :parameters ()
  :precondition (and
    (evaluate comp606)
    (not (rebooted comp606))
    (not (running comp605))
  )
  :effect (and
    (not (evaluate comp606))
    (evaluate comp607)
    (one-off comp606)
  )
)
(:action evaluate-comp607-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (rebooted comp607)
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
  )
)
(:action evaluate-comp607-all-on
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (not (rebooted comp607))
    (running comp559)
    (running comp606)
    (running comp753)
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
    (all-on comp607)
  )
)
(:action evaluate-comp607-off-comp559
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (not (rebooted comp607))
    (not (running comp559))
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
    (one-off comp607)
  )
)
(:action evaluate-comp607-off-comp606
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (not (rebooted comp607))
    (not (running comp606))
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
    (one-off comp607)
  )
)
(:action evaluate-comp607-off-comp753
  :parameters ()
  :precondition (and
    (evaluate comp607)
    (not (rebooted comp607))
    (not (running comp753))
  )
  :effect (and
    (not (evaluate comp607))
    (evaluate comp608)
    (one-off comp607)
  )
)
(:action evaluate-comp608-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp608)
    (rebooted comp608)
  )
  :effect (and
    (not (evaluate comp608))
    (evaluate comp609)
  )
)
(:action evaluate-comp608-all-on
  :parameters ()
  :precondition (and
    (evaluate comp608)
    (not (rebooted comp608))
    (running comp607)
  )
  :effect (and
    (not (evaluate comp608))
    (evaluate comp609)
    (all-on comp608)
  )
)
(:action evaluate-comp608-off-comp607
  :parameters ()
  :precondition (and
    (evaluate comp608)
    (not (rebooted comp608))
    (not (running comp607))
  )
  :effect (and
    (not (evaluate comp608))
    (evaluate comp609)
    (one-off comp608)
  )
)
(:action evaluate-comp609-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp609)
    (rebooted comp609)
  )
  :effect (and
    (not (evaluate comp609))
    (evaluate comp610)
  )
)
(:action evaluate-comp609-all-on
  :parameters ()
  :precondition (and
    (evaluate comp609)
    (not (rebooted comp609))
    (running comp608)
    (running comp889)
  )
  :effect (and
    (not (evaluate comp609))
    (evaluate comp610)
    (all-on comp609)
  )
)
(:action evaluate-comp609-off-comp608
  :parameters ()
  :precondition (and
    (evaluate comp609)
    (not (rebooted comp609))
    (not (running comp608))
  )
  :effect (and
    (not (evaluate comp609))
    (evaluate comp610)
    (one-off comp609)
  )
)
(:action evaluate-comp609-off-comp889
  :parameters ()
  :precondition (and
    (evaluate comp609)
    (not (rebooted comp609))
    (not (running comp889))
  )
  :effect (and
    (not (evaluate comp609))
    (evaluate comp610)
    (one-off comp609)
  )
)
(:action evaluate-comp610-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp610)
    (rebooted comp610)
  )
  :effect (and
    (not (evaluate comp610))
    (evaluate comp611)
  )
)
(:action evaluate-comp610-all-on
  :parameters ()
  :precondition (and
    (evaluate comp610)
    (not (rebooted comp610))
    (running comp462)
    (running comp609)
  )
  :effect (and
    (not (evaluate comp610))
    (evaluate comp611)
    (all-on comp610)
  )
)
(:action evaluate-comp610-off-comp462
  :parameters ()
  :precondition (and
    (evaluate comp610)
    (not (rebooted comp610))
    (not (running comp462))
  )
  :effect (and
    (not (evaluate comp610))
    (evaluate comp611)
    (one-off comp610)
  )
)
(:action evaluate-comp610-off-comp609
  :parameters ()
  :precondition (and
    (evaluate comp610)
    (not (rebooted comp610))
    (not (running comp609))
  )
  :effect (and
    (not (evaluate comp610))
    (evaluate comp611)
    (one-off comp610)
  )
)
(:action evaluate-comp611-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (rebooted comp611)
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
  )
)
(:action evaluate-comp611-all-on
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (not (rebooted comp611))
    (running comp610)
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
    (all-on comp611)
  )
)
(:action evaluate-comp611-off-comp610
  :parameters ()
  :precondition (and
    (evaluate comp611)
    (not (rebooted comp611))
    (not (running comp610))
  )
  :effect (and
    (not (evaluate comp611))
    (evaluate comp612)
    (one-off comp611)
  )
)
(:action evaluate-comp612-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp612)
    (rebooted comp612)
  )
  :effect (and
    (not (evaluate comp612))
    (evaluate comp613)
  )
)
(:action evaluate-comp612-all-on
  :parameters ()
  :precondition (and
    (evaluate comp612)
    (not (rebooted comp612))
    (running comp611)
  )
  :effect (and
    (not (evaluate comp612))
    (evaluate comp613)
    (all-on comp612)
  )
)
(:action evaluate-comp612-off-comp611
  :parameters ()
  :precondition (and
    (evaluate comp612)
    (not (rebooted comp612))
    (not (running comp611))
  )
  :effect (and
    (not (evaluate comp612))
    (evaluate comp613)
    (one-off comp612)
  )
)
(:action evaluate-comp613-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp613)
    (rebooted comp613)
  )
  :effect (and
    (not (evaluate comp613))
    (evaluate comp614)
  )
)
(:action evaluate-comp613-all-on
  :parameters ()
  :precondition (and
    (evaluate comp613)
    (not (rebooted comp613))
    (running comp593)
    (running comp612)
  )
  :effect (and
    (not (evaluate comp613))
    (evaluate comp614)
    (all-on comp613)
  )
)
(:action evaluate-comp613-off-comp593
  :parameters ()
  :precondition (and
    (evaluate comp613)
    (not (rebooted comp613))
    (not (running comp593))
  )
  :effect (and
    (not (evaluate comp613))
    (evaluate comp614)
    (one-off comp613)
  )
)
(:action evaluate-comp613-off-comp612
  :parameters ()
  :precondition (and
    (evaluate comp613)
    (not (rebooted comp613))
    (not (running comp612))
  )
  :effect (and
    (not (evaluate comp613))
    (evaluate comp614)
    (one-off comp613)
  )
)
(:action evaluate-comp614-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp614)
    (rebooted comp614)
  )
  :effect (and
    (not (evaluate comp614))
    (evaluate comp615)
  )
)
(:action evaluate-comp614-all-on
  :parameters ()
  :precondition (and
    (evaluate comp614)
    (not (rebooted comp614))
    (running comp428)
    (running comp613)
  )
  :effect (and
    (not (evaluate comp614))
    (evaluate comp615)
    (all-on comp614)
  )
)
(:action evaluate-comp614-off-comp428
  :parameters ()
  :precondition (and
    (evaluate comp614)
    (not (rebooted comp614))
    (not (running comp428))
  )
  :effect (and
    (not (evaluate comp614))
    (evaluate comp615)
    (one-off comp614)
  )
)
(:action evaluate-comp614-off-comp613
  :parameters ()
  :precondition (and
    (evaluate comp614)
    (not (rebooted comp614))
    (not (running comp613))
  )
  :effect (and
    (not (evaluate comp614))
    (evaluate comp615)
    (one-off comp614)
  )
)
(:action evaluate-comp615-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp615)
    (rebooted comp615)
  )
  :effect (and
    (not (evaluate comp615))
    (evaluate comp616)
  )
)
(:action evaluate-comp615-all-on
  :parameters ()
  :precondition (and
    (evaluate comp615)
    (not (rebooted comp615))
    (running comp614)
    (running comp750)
  )
  :effect (and
    (not (evaluate comp615))
    (evaluate comp616)
    (all-on comp615)
  )
)
(:action evaluate-comp615-off-comp614
  :parameters ()
  :precondition (and
    (evaluate comp615)
    (not (rebooted comp615))
    (not (running comp614))
  )
  :effect (and
    (not (evaluate comp615))
    (evaluate comp616)
    (one-off comp615)
  )
)
(:action evaluate-comp615-off-comp750
  :parameters ()
  :precondition (and
    (evaluate comp615)
    (not (rebooted comp615))
    (not (running comp750))
  )
  :effect (and
    (not (evaluate comp615))
    (evaluate comp616)
    (one-off comp615)
  )
)
(:action evaluate-comp616-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp616)
    (rebooted comp616)
  )
  :effect (and
    (not (evaluate comp616))
    (evaluate comp617)
  )
)
(:action evaluate-comp616-all-on
  :parameters ()
  :precondition (and
    (evaluate comp616)
    (not (rebooted comp616))
    (running comp615)
  )
  :effect (and
    (not (evaluate comp616))
    (evaluate comp617)
    (all-on comp616)
  )
)
(:action evaluate-comp616-off-comp615
  :parameters ()
  :precondition (and
    (evaluate comp616)
    (not (rebooted comp616))
    (not (running comp615))
  )
  :effect (and
    (not (evaluate comp616))
    (evaluate comp617)
    (one-off comp616)
  )
)
(:action evaluate-comp617-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp617)
    (rebooted comp617)
  )
  :effect (and
    (not (evaluate comp617))
    (evaluate comp618)
  )
)
(:action evaluate-comp617-all-on
  :parameters ()
  :precondition (and
    (evaluate comp617)
    (not (rebooted comp617))
    (running comp616)
  )
  :effect (and
    (not (evaluate comp617))
    (evaluate comp618)
    (all-on comp617)
  )
)
(:action evaluate-comp617-off-comp616
  :parameters ()
  :precondition (and
    (evaluate comp617)
    (not (rebooted comp617))
    (not (running comp616))
  )
  :effect (and
    (not (evaluate comp617))
    (evaluate comp618)
    (one-off comp617)
  )
)
(:action evaluate-comp618-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp618)
    (rebooted comp618)
  )
  :effect (and
    (not (evaluate comp618))
    (evaluate comp619)
  )
)
(:action evaluate-comp618-all-on
  :parameters ()
  :precondition (and
    (evaluate comp618)
    (not (rebooted comp618))
    (running comp617)
  )
  :effect (and
    (not (evaluate comp618))
    (evaluate comp619)
    (all-on comp618)
  )
)
(:action evaluate-comp618-off-comp617
  :parameters ()
  :precondition (and
    (evaluate comp618)
    (not (rebooted comp618))
    (not (running comp617))
  )
  :effect (and
    (not (evaluate comp618))
    (evaluate comp619)
    (one-off comp618)
  )
)
(:action evaluate-comp619-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp619)
    (rebooted comp619)
  )
  :effect (and
    (not (evaluate comp619))
    (evaluate comp620)
  )
)
(:action evaluate-comp619-all-on
  :parameters ()
  :precondition (and
    (evaluate comp619)
    (not (rebooted comp619))
    (running comp618)
  )
  :effect (and
    (not (evaluate comp619))
    (evaluate comp620)
    (all-on comp619)
  )
)
(:action evaluate-comp619-off-comp618
  :parameters ()
  :precondition (and
    (evaluate comp619)
    (not (rebooted comp619))
    (not (running comp618))
  )
  :effect (and
    (not (evaluate comp619))
    (evaluate comp620)
    (one-off comp619)
  )
)
(:action evaluate-comp620-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp620)
    (rebooted comp620)
  )
  :effect (and
    (not (evaluate comp620))
    (evaluate comp621)
  )
)
(:action evaluate-comp620-all-on
  :parameters ()
  :precondition (and
    (evaluate comp620)
    (not (rebooted comp620))
    (running comp8)
    (running comp619)
  )
  :effect (and
    (not (evaluate comp620))
    (evaluate comp621)
    (all-on comp620)
  )
)
(:action evaluate-comp620-off-comp8
  :parameters ()
  :precondition (and
    (evaluate comp620)
    (not (rebooted comp620))
    (not (running comp8))
  )
  :effect (and
    (not (evaluate comp620))
    (evaluate comp621)
    (one-off comp620)
  )
)
(:action evaluate-comp620-off-comp619
  :parameters ()
  :precondition (and
    (evaluate comp620)
    (not (rebooted comp620))
    (not (running comp619))
  )
  :effect (and
    (not (evaluate comp620))
    (evaluate comp621)
    (one-off comp620)
  )
)
(:action evaluate-comp621-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (rebooted comp621)
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
  )
)
(:action evaluate-comp621-all-on
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (not (rebooted comp621))
    (running comp566)
    (running comp620)
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
    (all-on comp621)
  )
)
(:action evaluate-comp621-off-comp566
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (not (rebooted comp621))
    (not (running comp566))
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
    (one-off comp621)
  )
)
(:action evaluate-comp621-off-comp620
  :parameters ()
  :precondition (and
    (evaluate comp621)
    (not (rebooted comp621))
    (not (running comp620))
  )
  :effect (and
    (not (evaluate comp621))
    (evaluate comp622)
    (one-off comp621)
  )
)
(:action evaluate-comp622-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp622)
    (rebooted comp622)
  )
  :effect (and
    (not (evaluate comp622))
    (evaluate comp623)
  )
)
(:action evaluate-comp622-all-on
  :parameters ()
  :precondition (and
    (evaluate comp622)
    (not (rebooted comp622))
    (running comp621)
    (running comp821)
  )
  :effect (and
    (not (evaluate comp622))
    (evaluate comp623)
    (all-on comp622)
  )
)
(:action evaluate-comp622-off-comp621
  :parameters ()
  :precondition (and
    (evaluate comp622)
    (not (rebooted comp622))
    (not (running comp621))
  )
  :effect (and
    (not (evaluate comp622))
    (evaluate comp623)
    (one-off comp622)
  )
)
(:action evaluate-comp622-off-comp821
  :parameters ()
  :precondition (and
    (evaluate comp622)
    (not (rebooted comp622))
    (not (running comp821))
  )
  :effect (and
    (not (evaluate comp622))
    (evaluate comp623)
    (one-off comp622)
  )
)
(:action evaluate-comp623-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (rebooted comp623)
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
  )
)
(:action evaluate-comp623-all-on
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (not (rebooted comp623))
    (running comp622)
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
    (all-on comp623)
  )
)
(:action evaluate-comp623-off-comp622
  :parameters ()
  :precondition (and
    (evaluate comp623)
    (not (rebooted comp623))
    (not (running comp622))
  )
  :effect (and
    (not (evaluate comp623))
    (evaluate comp624)
    (one-off comp623)
  )
)
(:action evaluate-comp624-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp624)
    (rebooted comp624)
  )
  :effect (and
    (not (evaluate comp624))
    (evaluate comp625)
  )
)
(:action evaluate-comp624-all-on
  :parameters ()
  :precondition (and
    (evaluate comp624)
    (not (rebooted comp624))
    (running comp623)
  )
  :effect (and
    (not (evaluate comp624))
    (evaluate comp625)
    (all-on comp624)
  )
)
(:action evaluate-comp624-off-comp623
  :parameters ()
  :precondition (and
    (evaluate comp624)
    (not (rebooted comp624))
    (not (running comp623))
  )
  :effect (and
    (not (evaluate comp624))
    (evaluate comp625)
    (one-off comp624)
  )
)
(:action evaluate-comp625-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp625)
    (rebooted comp625)
  )
  :effect (and
    (not (evaluate comp625))
    (evaluate comp626)
  )
)
(:action evaluate-comp625-all-on
  :parameters ()
  :precondition (and
    (evaluate comp625)
    (not (rebooted comp625))
    (running comp624)
  )
  :effect (and
    (not (evaluate comp625))
    (evaluate comp626)
    (all-on comp625)
  )
)
(:action evaluate-comp625-off-comp624
  :parameters ()
  :precondition (and
    (evaluate comp625)
    (not (rebooted comp625))
    (not (running comp624))
  )
  :effect (and
    (not (evaluate comp625))
    (evaluate comp626)
    (one-off comp625)
  )
)
(:action evaluate-comp626-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp626)
    (rebooted comp626)
  )
  :effect (and
    (not (evaluate comp626))
    (evaluate comp627)
  )
)
(:action evaluate-comp626-all-on
  :parameters ()
  :precondition (and
    (evaluate comp626)
    (not (rebooted comp626))
    (running comp625)
  )
  :effect (and
    (not (evaluate comp626))
    (evaluate comp627)
    (all-on comp626)
  )
)
(:action evaluate-comp626-off-comp625
  :parameters ()
  :precondition (and
    (evaluate comp626)
    (not (rebooted comp626))
    (not (running comp625))
  )
  :effect (and
    (not (evaluate comp626))
    (evaluate comp627)
    (one-off comp626)
  )
)
(:action evaluate-comp627-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp627)
    (rebooted comp627)
  )
  :effect (and
    (not (evaluate comp627))
    (evaluate comp628)
  )
)
(:action evaluate-comp627-all-on
  :parameters ()
  :precondition (and
    (evaluate comp627)
    (not (rebooted comp627))
    (running comp626)
  )
  :effect (and
    (not (evaluate comp627))
    (evaluate comp628)
    (all-on comp627)
  )
)
(:action evaluate-comp627-off-comp626
  :parameters ()
  :precondition (and
    (evaluate comp627)
    (not (rebooted comp627))
    (not (running comp626))
  )
  :effect (and
    (not (evaluate comp627))
    (evaluate comp628)
    (one-off comp627)
  )
)
(:action evaluate-comp628-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp628)
    (rebooted comp628)
  )
  :effect (and
    (not (evaluate comp628))
    (evaluate comp629)
  )
)
(:action evaluate-comp628-all-on
  :parameters ()
  :precondition (and
    (evaluate comp628)
    (not (rebooted comp628))
    (running comp627)
  )
  :effect (and
    (not (evaluate comp628))
    (evaluate comp629)
    (all-on comp628)
  )
)
(:action evaluate-comp628-off-comp627
  :parameters ()
  :precondition (and
    (evaluate comp628)
    (not (rebooted comp628))
    (not (running comp627))
  )
  :effect (and
    (not (evaluate comp628))
    (evaluate comp629)
    (one-off comp628)
  )
)
(:action evaluate-comp629-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp629)
    (rebooted comp629)
  )
  :effect (and
    (not (evaluate comp629))
    (evaluate comp630)
  )
)
(:action evaluate-comp629-all-on
  :parameters ()
  :precondition (and
    (evaluate comp629)
    (not (rebooted comp629))
    (running comp628)
  )
  :effect (and
    (not (evaluate comp629))
    (evaluate comp630)
    (all-on comp629)
  )
)
(:action evaluate-comp629-off-comp628
  :parameters ()
  :precondition (and
    (evaluate comp629)
    (not (rebooted comp629))
    (not (running comp628))
  )
  :effect (and
    (not (evaluate comp629))
    (evaluate comp630)
    (one-off comp629)
  )
)
(:action evaluate-comp630-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp630)
    (rebooted comp630)
  )
  :effect (and
    (not (evaluate comp630))
    (evaluate comp631)
  )
)
(:action evaluate-comp630-all-on
  :parameters ()
  :precondition (and
    (evaluate comp630)
    (not (rebooted comp630))
    (running comp629)
  )
  :effect (and
    (not (evaluate comp630))
    (evaluate comp631)
    (all-on comp630)
  )
)
(:action evaluate-comp630-off-comp629
  :parameters ()
  :precondition (and
    (evaluate comp630)
    (not (rebooted comp630))
    (not (running comp629))
  )
  :effect (and
    (not (evaluate comp630))
    (evaluate comp631)
    (one-off comp630)
  )
)
(:action evaluate-comp631-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp631)
    (rebooted comp631)
  )
  :effect (and
    (not (evaluate comp631))
    (evaluate comp632)
  )
)
(:action evaluate-comp631-all-on
  :parameters ()
  :precondition (and
    (evaluate comp631)
    (not (rebooted comp631))
    (running comp630)
  )
  :effect (and
    (not (evaluate comp631))
    (evaluate comp632)
    (all-on comp631)
  )
)
(:action evaluate-comp631-off-comp630
  :parameters ()
  :precondition (and
    (evaluate comp631)
    (not (rebooted comp631))
    (not (running comp630))
  )
  :effect (and
    (not (evaluate comp631))
    (evaluate comp632)
    (one-off comp631)
  )
)
(:action evaluate-comp632-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp632)
    (rebooted comp632)
  )
  :effect (and
    (not (evaluate comp632))
    (evaluate comp633)
  )
)
(:action evaluate-comp632-all-on
  :parameters ()
  :precondition (and
    (evaluate comp632)
    (not (rebooted comp632))
    (running comp631)
    (running comp755)
  )
  :effect (and
    (not (evaluate comp632))
    (evaluate comp633)
    (all-on comp632)
  )
)
(:action evaluate-comp632-off-comp631
  :parameters ()
  :precondition (and
    (evaluate comp632)
    (not (rebooted comp632))
    (not (running comp631))
  )
  :effect (and
    (not (evaluate comp632))
    (evaluate comp633)
    (one-off comp632)
  )
)
(:action evaluate-comp632-off-comp755
  :parameters ()
  :precondition (and
    (evaluate comp632)
    (not (rebooted comp632))
    (not (running comp755))
  )
  :effect (and
    (not (evaluate comp632))
    (evaluate comp633)
    (one-off comp632)
  )
)
(:action evaluate-comp633-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (rebooted comp633)
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
  )
)
(:action evaluate-comp633-all-on
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (not (rebooted comp633))
    (running comp632)
    (running comp641)
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
    (all-on comp633)
  )
)
(:action evaluate-comp633-off-comp632
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (not (rebooted comp633))
    (not (running comp632))
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
    (one-off comp633)
  )
)
(:action evaluate-comp633-off-comp641
  :parameters ()
  :precondition (and
    (evaluate comp633)
    (not (rebooted comp633))
    (not (running comp641))
  )
  :effect (and
    (not (evaluate comp633))
    (evaluate comp634)
    (one-off comp633)
  )
)
(:action evaluate-comp634-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (rebooted comp634)
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
  )
)
(:action evaluate-comp634-all-on
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (not (rebooted comp634))
    (running comp184)
    (running comp633)
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
    (all-on comp634)
  )
)
(:action evaluate-comp634-off-comp184
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (not (rebooted comp634))
    (not (running comp184))
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
    (one-off comp634)
  )
)
(:action evaluate-comp634-off-comp633
  :parameters ()
  :precondition (and
    (evaluate comp634)
    (not (rebooted comp634))
    (not (running comp633))
  )
  :effect (and
    (not (evaluate comp634))
    (evaluate comp635)
    (one-off comp634)
  )
)
(:action evaluate-comp635-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp635)
    (rebooted comp635)
  )
  :effect (and
    (not (evaluate comp635))
    (evaluate comp636)
  )
)
(:action evaluate-comp635-all-on
  :parameters ()
  :precondition (and
    (evaluate comp635)
    (not (rebooted comp635))
    (running comp634)
  )
  :effect (and
    (not (evaluate comp635))
    (evaluate comp636)
    (all-on comp635)
  )
)
(:action evaluate-comp635-off-comp634
  :parameters ()
  :precondition (and
    (evaluate comp635)
    (not (rebooted comp635))
    (not (running comp634))
  )
  :effect (and
    (not (evaluate comp635))
    (evaluate comp636)
    (one-off comp635)
  )
)
(:action evaluate-comp636-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp636)
    (rebooted comp636)
  )
  :effect (and
    (not (evaluate comp636))
    (evaluate comp637)
  )
)
(:action evaluate-comp636-all-on
  :parameters ()
  :precondition (and
    (evaluate comp636)
    (not (rebooted comp636))
    (running comp635)
  )
  :effect (and
    (not (evaluate comp636))
    (evaluate comp637)
    (all-on comp636)
  )
)
(:action evaluate-comp636-off-comp635
  :parameters ()
  :precondition (and
    (evaluate comp636)
    (not (rebooted comp636))
    (not (running comp635))
  )
  :effect (and
    (not (evaluate comp636))
    (evaluate comp637)
    (one-off comp636)
  )
)
(:action evaluate-comp637-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp637)
    (rebooted comp637)
  )
  :effect (and
    (not (evaluate comp637))
    (evaluate comp638)
  )
)
(:action evaluate-comp637-all-on
  :parameters ()
  :precondition (and
    (evaluate comp637)
    (not (rebooted comp637))
    (running comp636)
  )
  :effect (and
    (not (evaluate comp637))
    (evaluate comp638)
    (all-on comp637)
  )
)
(:action evaluate-comp637-off-comp636
  :parameters ()
  :precondition (and
    (evaluate comp637)
    (not (rebooted comp637))
    (not (running comp636))
  )
  :effect (and
    (not (evaluate comp637))
    (evaluate comp638)
    (one-off comp637)
  )
)
(:action evaluate-comp638-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp638)
    (rebooted comp638)
  )
  :effect (and
    (not (evaluate comp638))
    (evaluate comp639)
  )
)
(:action evaluate-comp638-all-on
  :parameters ()
  :precondition (and
    (evaluate comp638)
    (not (rebooted comp638))
    (running comp637)
  )
  :effect (and
    (not (evaluate comp638))
    (evaluate comp639)
    (all-on comp638)
  )
)
(:action evaluate-comp638-off-comp637
  :parameters ()
  :precondition (and
    (evaluate comp638)
    (not (rebooted comp638))
    (not (running comp637))
  )
  :effect (and
    (not (evaluate comp638))
    (evaluate comp639)
    (one-off comp638)
  )
)
(:action evaluate-comp639-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp639)
    (rebooted comp639)
  )
  :effect (and
    (not (evaluate comp639))
    (evaluate comp640)
  )
)
(:action evaluate-comp639-all-on
  :parameters ()
  :precondition (and
    (evaluate comp639)
    (not (rebooted comp639))
    (running comp638)
  )
  :effect (and
    (not (evaluate comp639))
    (evaluate comp640)
    (all-on comp639)
  )
)
(:action evaluate-comp639-off-comp638
  :parameters ()
  :precondition (and
    (evaluate comp639)
    (not (rebooted comp639))
    (not (running comp638))
  )
  :effect (and
    (not (evaluate comp639))
    (evaluate comp640)
    (one-off comp639)
  )
)
(:action evaluate-comp640-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (rebooted comp640)
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
  )
)
(:action evaluate-comp640-all-on
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (running comp523)
    (running comp551)
    (running comp639)
    (running comp780)
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (all-on comp640)
  )
)
(:action evaluate-comp640-off-comp523
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (not (running comp523))
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (one-off comp640)
  )
)
(:action evaluate-comp640-off-comp551
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (not (running comp551))
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (one-off comp640)
  )
)
(:action evaluate-comp640-off-comp639
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (not (running comp639))
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (one-off comp640)
  )
)
(:action evaluate-comp640-off-comp780
  :parameters ()
  :precondition (and
    (evaluate comp640)
    (not (rebooted comp640))
    (not (running comp780))
  )
  :effect (and
    (not (evaluate comp640))
    (evaluate comp641)
    (one-off comp640)
  )
)
(:action evaluate-comp641-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp641)
    (rebooted comp641)
  )
  :effect (and
    (not (evaluate comp641))
    (evaluate comp642)
  )
)
(:action evaluate-comp641-all-on
  :parameters ()
  :precondition (and
    (evaluate comp641)
    (not (rebooted comp641))
    (running comp640)
  )
  :effect (and
    (not (evaluate comp641))
    (evaluate comp642)
    (all-on comp641)
  )
)
(:action evaluate-comp641-off-comp640
  :parameters ()
  :precondition (and
    (evaluate comp641)
    (not (rebooted comp641))
    (not (running comp640))
  )
  :effect (and
    (not (evaluate comp641))
    (evaluate comp642)
    (one-off comp641)
  )
)
(:action evaluate-comp642-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (rebooted comp642)
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
  )
)
(:action evaluate-comp642-all-on
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (not (rebooted comp642))
    (running comp199)
    (running comp641)
    (running comp718)
    (running comp940)
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
    (all-on comp642)
  )
)
(:action evaluate-comp642-off-comp199
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (not (rebooted comp642))
    (not (running comp199))
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
    (one-off comp642)
  )
)
(:action evaluate-comp642-off-comp641
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (not (rebooted comp642))
    (not (running comp641))
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
    (one-off comp642)
  )
)
(:action evaluate-comp642-off-comp718
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (not (rebooted comp642))
    (not (running comp718))
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
    (one-off comp642)
  )
)
(:action evaluate-comp642-off-comp940
  :parameters ()
  :precondition (and
    (evaluate comp642)
    (not (rebooted comp642))
    (not (running comp940))
  )
  :effect (and
    (not (evaluate comp642))
    (evaluate comp643)
    (one-off comp642)
  )
)
(:action evaluate-comp643-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp643)
    (rebooted comp643)
  )
  :effect (and
    (not (evaluate comp643))
    (evaluate comp644)
  )
)
(:action evaluate-comp643-all-on
  :parameters ()
  :precondition (and
    (evaluate comp643)
    (not (rebooted comp643))
    (running comp360)
    (running comp642)
  )
  :effect (and
    (not (evaluate comp643))
    (evaluate comp644)
    (all-on comp643)
  )
)
(:action evaluate-comp643-off-comp360
  :parameters ()
  :precondition (and
    (evaluate comp643)
    (not (rebooted comp643))
    (not (running comp360))
  )
  :effect (and
    (not (evaluate comp643))
    (evaluate comp644)
    (one-off comp643)
  )
)
(:action evaluate-comp643-off-comp642
  :parameters ()
  :precondition (and
    (evaluate comp643)
    (not (rebooted comp643))
    (not (running comp642))
  )
  :effect (and
    (not (evaluate comp643))
    (evaluate comp644)
    (one-off comp643)
  )
)
(:action evaluate-comp644-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp644)
    (rebooted comp644)
  )
  :effect (and
    (not (evaluate comp644))
    (evaluate comp645)
  )
)
(:action evaluate-comp644-all-on
  :parameters ()
  :precondition (and
    (evaluate comp644)
    (not (rebooted comp644))
    (running comp643)
  )
  :effect (and
    (not (evaluate comp644))
    (evaluate comp645)
    (all-on comp644)
  )
)
(:action evaluate-comp644-off-comp643
  :parameters ()
  :precondition (and
    (evaluate comp644)
    (not (rebooted comp644))
    (not (running comp643))
  )
  :effect (and
    (not (evaluate comp644))
    (evaluate comp645)
    (one-off comp644)
  )
)
(:action evaluate-comp645-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp645)
    (rebooted comp645)
  )
  :effect (and
    (not (evaluate comp645))
    (evaluate comp646)
  )
)
(:action evaluate-comp645-all-on
  :parameters ()
  :precondition (and
    (evaluate comp645)
    (not (rebooted comp645))
    (running comp440)
    (running comp644)
  )
  :effect (and
    (not (evaluate comp645))
    (evaluate comp646)
    (all-on comp645)
  )
)
(:action evaluate-comp645-off-comp440
  :parameters ()
  :precondition (and
    (evaluate comp645)
    (not (rebooted comp645))
    (not (running comp440))
  )
  :effect (and
    (not (evaluate comp645))
    (evaluate comp646)
    (one-off comp645)
  )
)
(:action evaluate-comp645-off-comp644
  :parameters ()
  :precondition (and
    (evaluate comp645)
    (not (rebooted comp645))
    (not (running comp644))
  )
  :effect (and
    (not (evaluate comp645))
    (evaluate comp646)
    (one-off comp645)
  )
)
(:action evaluate-comp646-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp646)
    (rebooted comp646)
  )
  :effect (and
    (not (evaluate comp646))
    (evaluate comp647)
  )
)
(:action evaluate-comp646-all-on
  :parameters ()
  :precondition (and
    (evaluate comp646)
    (not (rebooted comp646))
    (running comp413)
    (running comp645)
  )
  :effect (and
    (not (evaluate comp646))
    (evaluate comp647)
    (all-on comp646)
  )
)
(:action evaluate-comp646-off-comp413
  :parameters ()
  :precondition (and
    (evaluate comp646)
    (not (rebooted comp646))
    (not (running comp413))
  )
  :effect (and
    (not (evaluate comp646))
    (evaluate comp647)
    (one-off comp646)
  )
)
(:action evaluate-comp646-off-comp645
  :parameters ()
  :precondition (and
    (evaluate comp646)
    (not (rebooted comp646))
    (not (running comp645))
  )
  :effect (and
    (not (evaluate comp646))
    (evaluate comp647)
    (one-off comp646)
  )
)
(:action evaluate-comp647-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (rebooted comp647)
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
  )
)
(:action evaluate-comp647-all-on
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (not (rebooted comp647))
    (running comp523)
    (running comp646)
    (running comp839)
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
    (all-on comp647)
  )
)
(:action evaluate-comp647-off-comp523
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (not (rebooted comp647))
    (not (running comp523))
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
    (one-off comp647)
  )
)
(:action evaluate-comp647-off-comp646
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (not (rebooted comp647))
    (not (running comp646))
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
    (one-off comp647)
  )
)
(:action evaluate-comp647-off-comp839
  :parameters ()
  :precondition (and
    (evaluate comp647)
    (not (rebooted comp647))
    (not (running comp839))
  )
  :effect (and
    (not (evaluate comp647))
    (evaluate comp648)
    (one-off comp647)
  )
)
(:action evaluate-comp648-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp648)
    (rebooted comp648)
  )
  :effect (and
    (not (evaluate comp648))
    (evaluate comp649)
  )
)
(:action evaluate-comp648-all-on
  :parameters ()
  :precondition (and
    (evaluate comp648)
    (not (rebooted comp648))
    (running comp647)
  )
  :effect (and
    (not (evaluate comp648))
    (evaluate comp649)
    (all-on comp648)
  )
)
(:action evaluate-comp648-off-comp647
  :parameters ()
  :precondition (and
    (evaluate comp648)
    (not (rebooted comp648))
    (not (running comp647))
  )
  :effect (and
    (not (evaluate comp648))
    (evaluate comp649)
    (one-off comp648)
  )
)
(:action evaluate-comp649-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (rebooted comp649)
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
  )
)
(:action evaluate-comp649-all-on
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (not (rebooted comp649))
    (running comp648)
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
    (all-on comp649)
  )
)
(:action evaluate-comp649-off-comp648
  :parameters ()
  :precondition (and
    (evaluate comp649)
    (not (rebooted comp649))
    (not (running comp648))
  )
  :effect (and
    (not (evaluate comp649))
    (evaluate comp650)
    (one-off comp649)
  )
)
(:action evaluate-comp650-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (rebooted comp650)
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
  )
)
(:action evaluate-comp650-all-on
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (not (rebooted comp650))
    (running comp649)
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
    (all-on comp650)
  )
)
(:action evaluate-comp650-off-comp649
  :parameters ()
  :precondition (and
    (evaluate comp650)
    (not (rebooted comp650))
    (not (running comp649))
  )
  :effect (and
    (not (evaluate comp650))
    (evaluate comp651)
    (one-off comp650)
  )
)
(:action evaluate-comp651-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp651)
    (rebooted comp651)
  )
  :effect (and
    (not (evaluate comp651))
    (evaluate comp652)
  )
)
(:action evaluate-comp651-all-on
  :parameters ()
  :precondition (and
    (evaluate comp651)
    (not (rebooted comp651))
    (running comp650)
  )
  :effect (and
    (not (evaluate comp651))
    (evaluate comp652)
    (all-on comp651)
  )
)
(:action evaluate-comp651-off-comp650
  :parameters ()
  :precondition (and
    (evaluate comp651)
    (not (rebooted comp651))
    (not (running comp650))
  )
  :effect (and
    (not (evaluate comp651))
    (evaluate comp652)
    (one-off comp651)
  )
)
(:action evaluate-comp652-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (rebooted comp652)
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
  )
)
(:action evaluate-comp652-all-on
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (not (rebooted comp652))
    (running comp526)
    (running comp651)
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
    (all-on comp652)
  )
)
(:action evaluate-comp652-off-comp526
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (not (rebooted comp652))
    (not (running comp526))
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
    (one-off comp652)
  )
)
(:action evaluate-comp652-off-comp651
  :parameters ()
  :precondition (and
    (evaluate comp652)
    (not (rebooted comp652))
    (not (running comp651))
  )
  :effect (and
    (not (evaluate comp652))
    (evaluate comp653)
    (one-off comp652)
  )
)
(:action evaluate-comp653-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp653)
    (rebooted comp653)
  )
  :effect (and
    (not (evaluate comp653))
    (evaluate comp654)
  )
)
(:action evaluate-comp653-all-on
  :parameters ()
  :precondition (and
    (evaluate comp653)
    (not (rebooted comp653))
    (running comp427)
    (running comp652)
  )
  :effect (and
    (not (evaluate comp653))
    (evaluate comp654)
    (all-on comp653)
  )
)
(:action evaluate-comp653-off-comp427
  :parameters ()
  :precondition (and
    (evaluate comp653)
    (not (rebooted comp653))
    (not (running comp427))
  )
  :effect (and
    (not (evaluate comp653))
    (evaluate comp654)
    (one-off comp653)
  )
)
(:action evaluate-comp653-off-comp652
  :parameters ()
  :precondition (and
    (evaluate comp653)
    (not (rebooted comp653))
    (not (running comp652))
  )
  :effect (and
    (not (evaluate comp653))
    (evaluate comp654)
    (one-off comp653)
  )
)
(:action evaluate-comp654-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp654)
    (rebooted comp654)
  )
  :effect (and
    (not (evaluate comp654))
    (evaluate comp655)
  )
)
(:action evaluate-comp654-all-on
  :parameters ()
  :precondition (and
    (evaluate comp654)
    (not (rebooted comp654))
    (running comp653)
  )
  :effect (and
    (not (evaluate comp654))
    (evaluate comp655)
    (all-on comp654)
  )
)
(:action evaluate-comp654-off-comp653
  :parameters ()
  :precondition (and
    (evaluate comp654)
    (not (rebooted comp654))
    (not (running comp653))
  )
  :effect (and
    (not (evaluate comp654))
    (evaluate comp655)
    (one-off comp654)
  )
)
(:action evaluate-comp655-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (rebooted comp655)
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
  )
)
(:action evaluate-comp655-all-on
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (not (rebooted comp655))
    (running comp216)
    (running comp271)
    (running comp654)
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
    (all-on comp655)
  )
)
(:action evaluate-comp655-off-comp216
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (not (rebooted comp655))
    (not (running comp216))
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
    (one-off comp655)
  )
)
(:action evaluate-comp655-off-comp271
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (not (rebooted comp655))
    (not (running comp271))
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
    (one-off comp655)
  )
)
(:action evaluate-comp655-off-comp654
  :parameters ()
  :precondition (and
    (evaluate comp655)
    (not (rebooted comp655))
    (not (running comp654))
  )
  :effect (and
    (not (evaluate comp655))
    (evaluate comp656)
    (one-off comp655)
  )
)
(:action evaluate-comp656-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (rebooted comp656)
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
  )
)
(:action evaluate-comp656-all-on
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (not (rebooted comp656))
    (running comp83)
    (running comp655)
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
    (all-on comp656)
  )
)
(:action evaluate-comp656-off-comp83
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (not (rebooted comp656))
    (not (running comp83))
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
    (one-off comp656)
  )
)
(:action evaluate-comp656-off-comp655
  :parameters ()
  :precondition (and
    (evaluate comp656)
    (not (rebooted comp656))
    (not (running comp655))
  )
  :effect (and
    (not (evaluate comp656))
    (evaluate comp657)
    (one-off comp656)
  )
)
(:action evaluate-comp657-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp657)
    (rebooted comp657)
  )
  :effect (and
    (not (evaluate comp657))
    (evaluate comp658)
  )
)
(:action evaluate-comp657-all-on
  :parameters ()
  :precondition (and
    (evaluate comp657)
    (not (rebooted comp657))
    (running comp656)
  )
  :effect (and
    (not (evaluate comp657))
    (evaluate comp658)
    (all-on comp657)
  )
)
(:action evaluate-comp657-off-comp656
  :parameters ()
  :precondition (and
    (evaluate comp657)
    (not (rebooted comp657))
    (not (running comp656))
  )
  :effect (and
    (not (evaluate comp657))
    (evaluate comp658)
    (one-off comp657)
  )
)
(:action evaluate-comp658-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp658)
    (rebooted comp658)
  )
  :effect (and
    (not (evaluate comp658))
    (evaluate comp659)
  )
)
(:action evaluate-comp658-all-on
  :parameters ()
  :precondition (and
    (evaluate comp658)
    (not (rebooted comp658))
    (running comp657)
  )
  :effect (and
    (not (evaluate comp658))
    (evaluate comp659)
    (all-on comp658)
  )
)
(:action evaluate-comp658-off-comp657
  :parameters ()
  :precondition (and
    (evaluate comp658)
    (not (rebooted comp658))
    (not (running comp657))
  )
  :effect (and
    (not (evaluate comp658))
    (evaluate comp659)
    (one-off comp658)
  )
)
(:action evaluate-comp659-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp659)
    (rebooted comp659)
  )
  :effect (and
    (not (evaluate comp659))
    (evaluate comp660)
  )
)
(:action evaluate-comp659-all-on
  :parameters ()
  :precondition (and
    (evaluate comp659)
    (not (rebooted comp659))
    (running comp658)
  )
  :effect (and
    (not (evaluate comp659))
    (evaluate comp660)
    (all-on comp659)
  )
)
(:action evaluate-comp659-off-comp658
  :parameters ()
  :precondition (and
    (evaluate comp659)
    (not (rebooted comp659))
    (not (running comp658))
  )
  :effect (and
    (not (evaluate comp659))
    (evaluate comp660)
    (one-off comp659)
  )
)
(:action evaluate-comp660-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp660)
    (rebooted comp660)
  )
  :effect (and
    (not (evaluate comp660))
    (evaluate comp661)
  )
)
(:action evaluate-comp660-all-on
  :parameters ()
  :precondition (and
    (evaluate comp660)
    (not (rebooted comp660))
    (running comp659)
  )
  :effect (and
    (not (evaluate comp660))
    (evaluate comp661)
    (all-on comp660)
  )
)
(:action evaluate-comp660-off-comp659
  :parameters ()
  :precondition (and
    (evaluate comp660)
    (not (rebooted comp660))
    (not (running comp659))
  )
  :effect (and
    (not (evaluate comp660))
    (evaluate comp661)
    (one-off comp660)
  )
)
(:action evaluate-comp661-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp661)
    (rebooted comp661)
  )
  :effect (and
    (not (evaluate comp661))
    (evaluate comp662)
  )
)
(:action evaluate-comp661-all-on
  :parameters ()
  :precondition (and
    (evaluate comp661)
    (not (rebooted comp661))
    (running comp660)
  )
  :effect (and
    (not (evaluate comp661))
    (evaluate comp662)
    (all-on comp661)
  )
)
(:action evaluate-comp661-off-comp660
  :parameters ()
  :precondition (and
    (evaluate comp661)
    (not (rebooted comp661))
    (not (running comp660))
  )
  :effect (and
    (not (evaluate comp661))
    (evaluate comp662)
    (one-off comp661)
  )
)
(:action evaluate-comp662-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp662)
    (rebooted comp662)
  )
  :effect (and
    (not (evaluate comp662))
    (evaluate comp663)
  )
)
(:action evaluate-comp662-all-on
  :parameters ()
  :precondition (and
    (evaluate comp662)
    (not (rebooted comp662))
    (running comp661)
  )
  :effect (and
    (not (evaluate comp662))
    (evaluate comp663)
    (all-on comp662)
  )
)
(:action evaluate-comp662-off-comp661
  :parameters ()
  :precondition (and
    (evaluate comp662)
    (not (rebooted comp662))
    (not (running comp661))
  )
  :effect (and
    (not (evaluate comp662))
    (evaluate comp663)
    (one-off comp662)
  )
)
(:action evaluate-comp663-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp663)
    (rebooted comp663)
  )
  :effect (and
    (not (evaluate comp663))
    (evaluate comp664)
  )
)
(:action evaluate-comp663-all-on
  :parameters ()
  :precondition (and
    (evaluate comp663)
    (not (rebooted comp663))
    (running comp662)
  )
  :effect (and
    (not (evaluate comp663))
    (evaluate comp664)
    (all-on comp663)
  )
)
(:action evaluate-comp663-off-comp662
  :parameters ()
  :precondition (and
    (evaluate comp663)
    (not (rebooted comp663))
    (not (running comp662))
  )
  :effect (and
    (not (evaluate comp663))
    (evaluate comp664)
    (one-off comp663)
  )
)
(:action evaluate-comp664-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (rebooted comp664)
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
  )
)
(:action evaluate-comp664-all-on
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (not (rebooted comp664))
    (running comp635)
    (running comp663)
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
    (all-on comp664)
  )
)
(:action evaluate-comp664-off-comp635
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (not (rebooted comp664))
    (not (running comp635))
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
    (one-off comp664)
  )
)
(:action evaluate-comp664-off-comp663
  :parameters ()
  :precondition (and
    (evaluate comp664)
    (not (rebooted comp664))
    (not (running comp663))
  )
  :effect (and
    (not (evaluate comp664))
    (evaluate comp665)
    (one-off comp664)
  )
)
(:action evaluate-comp665-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp665)
    (rebooted comp665)
  )
  :effect (and
    (not (evaluate comp665))
    (evaluate comp666)
  )
)
(:action evaluate-comp665-all-on
  :parameters ()
  :precondition (and
    (evaluate comp665)
    (not (rebooted comp665))
    (running comp664)
  )
  :effect (and
    (not (evaluate comp665))
    (evaluate comp666)
    (all-on comp665)
  )
)
(:action evaluate-comp665-off-comp664
  :parameters ()
  :precondition (and
    (evaluate comp665)
    (not (rebooted comp665))
    (not (running comp664))
  )
  :effect (and
    (not (evaluate comp665))
    (evaluate comp666)
    (one-off comp665)
  )
)
(:action evaluate-comp666-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp666)
    (rebooted comp666)
  )
  :effect (and
    (not (evaluate comp666))
    (evaluate comp667)
  )
)
(:action evaluate-comp666-all-on
  :parameters ()
  :precondition (and
    (evaluate comp666)
    (not (rebooted comp666))
    (running comp665)
  )
  :effect (and
    (not (evaluate comp666))
    (evaluate comp667)
    (all-on comp666)
  )
)
(:action evaluate-comp666-off-comp665
  :parameters ()
  :precondition (and
    (evaluate comp666)
    (not (rebooted comp666))
    (not (running comp665))
  )
  :effect (and
    (not (evaluate comp666))
    (evaluate comp667)
    (one-off comp666)
  )
)
(:action evaluate-comp667-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp667)
    (rebooted comp667)
  )
  :effect (and
    (not (evaluate comp667))
    (evaluate comp668)
  )
)
(:action evaluate-comp667-all-on
  :parameters ()
  :precondition (and
    (evaluate comp667)
    (not (rebooted comp667))
    (running comp666)
    (running comp820)
  )
  :effect (and
    (not (evaluate comp667))
    (evaluate comp668)
    (all-on comp667)
  )
)
(:action evaluate-comp667-off-comp666
  :parameters ()
  :precondition (and
    (evaluate comp667)
    (not (rebooted comp667))
    (not (running comp666))
  )
  :effect (and
    (not (evaluate comp667))
    (evaluate comp668)
    (one-off comp667)
  )
)
(:action evaluate-comp667-off-comp820
  :parameters ()
  :precondition (and
    (evaluate comp667)
    (not (rebooted comp667))
    (not (running comp820))
  )
  :effect (and
    (not (evaluate comp667))
    (evaluate comp668)
    (one-off comp667)
  )
)
(:action evaluate-comp668-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp668)
    (rebooted comp668)
  )
  :effect (and
    (not (evaluate comp668))
    (evaluate comp669)
  )
)
(:action evaluate-comp668-all-on
  :parameters ()
  :precondition (and
    (evaluate comp668)
    (not (rebooted comp668))
    (running comp667)
  )
  :effect (and
    (not (evaluate comp668))
    (evaluate comp669)
    (all-on comp668)
  )
)
(:action evaluate-comp668-off-comp667
  :parameters ()
  :precondition (and
    (evaluate comp668)
    (not (rebooted comp668))
    (not (running comp667))
  )
  :effect (and
    (not (evaluate comp668))
    (evaluate comp669)
    (one-off comp668)
  )
)
(:action evaluate-comp669-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (rebooted comp669)
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
  )
)
(:action evaluate-comp669-all-on
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (not (rebooted comp669))
    (running comp127)
    (running comp668)
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
    (all-on comp669)
  )
)
(:action evaluate-comp669-off-comp127
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (not (rebooted comp669))
    (not (running comp127))
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
    (one-off comp669)
  )
)
(:action evaluate-comp669-off-comp668
  :parameters ()
  :precondition (and
    (evaluate comp669)
    (not (rebooted comp669))
    (not (running comp668))
  )
  :effect (and
    (not (evaluate comp669))
    (evaluate comp670)
    (one-off comp669)
  )
)
(:action evaluate-comp670-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp670)
    (rebooted comp670)
  )
  :effect (and
    (not (evaluate comp670))
    (evaluate comp671)
  )
)
(:action evaluate-comp670-all-on
  :parameters ()
  :precondition (and
    (evaluate comp670)
    (not (rebooted comp670))
    (running comp343)
    (running comp669)
  )
  :effect (and
    (not (evaluate comp670))
    (evaluate comp671)
    (all-on comp670)
  )
)
(:action evaluate-comp670-off-comp343
  :parameters ()
  :precondition (and
    (evaluate comp670)
    (not (rebooted comp670))
    (not (running comp343))
  )
  :effect (and
    (not (evaluate comp670))
    (evaluate comp671)
    (one-off comp670)
  )
)
(:action evaluate-comp670-off-comp669
  :parameters ()
  :precondition (and
    (evaluate comp670)
    (not (rebooted comp670))
    (not (running comp669))
  )
  :effect (and
    (not (evaluate comp670))
    (evaluate comp671)
    (one-off comp670)
  )
)
(:action evaluate-comp671-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp671)
    (rebooted comp671)
  )
  :effect (and
    (not (evaluate comp671))
    (evaluate comp672)
  )
)
(:action evaluate-comp671-all-on
  :parameters ()
  :precondition (and
    (evaluate comp671)
    (not (rebooted comp671))
    (running comp670)
  )
  :effect (and
    (not (evaluate comp671))
    (evaluate comp672)
    (all-on comp671)
  )
)
(:action evaluate-comp671-off-comp670
  :parameters ()
  :precondition (and
    (evaluate comp671)
    (not (rebooted comp671))
    (not (running comp670))
  )
  :effect (and
    (not (evaluate comp671))
    (evaluate comp672)
    (one-off comp671)
  )
)
(:action evaluate-comp672-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp672)
    (rebooted comp672)
  )
  :effect (and
    (not (evaluate comp672))
    (evaluate comp673)
  )
)
(:action evaluate-comp672-all-on
  :parameters ()
  :precondition (and
    (evaluate comp672)
    (not (rebooted comp672))
    (running comp671)
    (running comp850)
  )
  :effect (and
    (not (evaluate comp672))
    (evaluate comp673)
    (all-on comp672)
  )
)
(:action evaluate-comp672-off-comp671
  :parameters ()
  :precondition (and
    (evaluate comp672)
    (not (rebooted comp672))
    (not (running comp671))
  )
  :effect (and
    (not (evaluate comp672))
    (evaluate comp673)
    (one-off comp672)
  )
)
(:action evaluate-comp672-off-comp850
  :parameters ()
  :precondition (and
    (evaluate comp672)
    (not (rebooted comp672))
    (not (running comp850))
  )
  :effect (and
    (not (evaluate comp672))
    (evaluate comp673)
    (one-off comp672)
  )
)
(:action evaluate-comp673-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (rebooted comp673)
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
  )
)
(:action evaluate-comp673-all-on
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (running comp232)
    (running comp495)
    (running comp672)
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (all-on comp673)
  )
)
(:action evaluate-comp673-off-comp232
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (not (running comp232))
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (one-off comp673)
  )
)
(:action evaluate-comp673-off-comp495
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (not (running comp495))
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (one-off comp673)
  )
)
(:action evaluate-comp673-off-comp672
  :parameters ()
  :precondition (and
    (evaluate comp673)
    (not (rebooted comp673))
    (not (running comp672))
  )
  :effect (and
    (not (evaluate comp673))
    (evaluate comp674)
    (one-off comp673)
  )
)
(:action evaluate-comp674-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (rebooted comp674)
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
  )
)
(:action evaluate-comp674-all-on
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (not (rebooted comp674))
    (running comp585)
    (running comp673)
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
    (all-on comp674)
  )
)
(:action evaluate-comp674-off-comp585
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (not (rebooted comp674))
    (not (running comp585))
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
    (one-off comp674)
  )
)
(:action evaluate-comp674-off-comp673
  :parameters ()
  :precondition (and
    (evaluate comp674)
    (not (rebooted comp674))
    (not (running comp673))
  )
  :effect (and
    (not (evaluate comp674))
    (evaluate comp675)
    (one-off comp674)
  )
)
(:action evaluate-comp675-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp675)
    (rebooted comp675)
  )
  :effect (and
    (not (evaluate comp675))
    (evaluate comp676)
  )
)
(:action evaluate-comp675-all-on
  :parameters ()
  :precondition (and
    (evaluate comp675)
    (not (rebooted comp675))
    (running comp262)
    (running comp674)
  )
  :effect (and
    (not (evaluate comp675))
    (evaluate comp676)
    (all-on comp675)
  )
)
(:action evaluate-comp675-off-comp262
  :parameters ()
  :precondition (and
    (evaluate comp675)
    (not (rebooted comp675))
    (not (running comp262))
  )
  :effect (and
    (not (evaluate comp675))
    (evaluate comp676)
    (one-off comp675)
  )
)
(:action evaluate-comp675-off-comp674
  :parameters ()
  :precondition (and
    (evaluate comp675)
    (not (rebooted comp675))
    (not (running comp674))
  )
  :effect (and
    (not (evaluate comp675))
    (evaluate comp676)
    (one-off comp675)
  )
)
(:action evaluate-comp676-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp676)
    (rebooted comp676)
  )
  :effect (and
    (not (evaluate comp676))
    (evaluate comp677)
  )
)
(:action evaluate-comp676-all-on
  :parameters ()
  :precondition (and
    (evaluate comp676)
    (not (rebooted comp676))
    (running comp675)
    (running comp734)
  )
  :effect (and
    (not (evaluate comp676))
    (evaluate comp677)
    (all-on comp676)
  )
)
(:action evaluate-comp676-off-comp675
  :parameters ()
  :precondition (and
    (evaluate comp676)
    (not (rebooted comp676))
    (not (running comp675))
  )
  :effect (and
    (not (evaluate comp676))
    (evaluate comp677)
    (one-off comp676)
  )
)
(:action evaluate-comp676-off-comp734
  :parameters ()
  :precondition (and
    (evaluate comp676)
    (not (rebooted comp676))
    (not (running comp734))
  )
  :effect (and
    (not (evaluate comp676))
    (evaluate comp677)
    (one-off comp676)
  )
)
(:action evaluate-comp677-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp677)
    (rebooted comp677)
  )
  :effect (and
    (not (evaluate comp677))
    (evaluate comp678)
  )
)
(:action evaluate-comp677-all-on
  :parameters ()
  :precondition (and
    (evaluate comp677)
    (not (rebooted comp677))
    (running comp676)
  )
  :effect (and
    (not (evaluate comp677))
    (evaluate comp678)
    (all-on comp677)
  )
)
(:action evaluate-comp677-off-comp676
  :parameters ()
  :precondition (and
    (evaluate comp677)
    (not (rebooted comp677))
    (not (running comp676))
  )
  :effect (and
    (not (evaluate comp677))
    (evaluate comp678)
    (one-off comp677)
  )
)
(:action evaluate-comp678-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (rebooted comp678)
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
  )
)
(:action evaluate-comp678-all-on
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (not (rebooted comp678))
    (running comp237)
    (running comp600)
    (running comp677)
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
    (all-on comp678)
  )
)
(:action evaluate-comp678-off-comp237
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (not (rebooted comp678))
    (not (running comp237))
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
    (one-off comp678)
  )
)
(:action evaluate-comp678-off-comp600
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (not (rebooted comp678))
    (not (running comp600))
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
    (one-off comp678)
  )
)
(:action evaluate-comp678-off-comp677
  :parameters ()
  :precondition (and
    (evaluate comp678)
    (not (rebooted comp678))
    (not (running comp677))
  )
  :effect (and
    (not (evaluate comp678))
    (evaluate comp679)
    (one-off comp678)
  )
)
(:action evaluate-comp679-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (rebooted comp679)
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
  )
)
(:action evaluate-comp679-all-on
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (not (rebooted comp679))
    (running comp678)
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
    (all-on comp679)
  )
)
(:action evaluate-comp679-off-comp678
  :parameters ()
  :precondition (and
    (evaluate comp679)
    (not (rebooted comp679))
    (not (running comp678))
  )
  :effect (and
    (not (evaluate comp679))
    (evaluate comp680)
    (one-off comp679)
  )
)
(:action evaluate-comp680-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (rebooted comp680)
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
  )
)
(:action evaluate-comp680-all-on
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (running comp350)
    (running comp406)
    (running comp422)
    (running comp679)
    (running comp837)
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (all-on comp680)
  )
)
(:action evaluate-comp680-off-comp350
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (not (running comp350))
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (one-off comp680)
  )
)
(:action evaluate-comp680-off-comp406
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (not (running comp406))
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (one-off comp680)
  )
)
(:action evaluate-comp680-off-comp422
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (not (running comp422))
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (one-off comp680)
  )
)
(:action evaluate-comp680-off-comp679
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (not (running comp679))
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (one-off comp680)
  )
)
(:action evaluate-comp680-off-comp837
  :parameters ()
  :precondition (and
    (evaluate comp680)
    (not (rebooted comp680))
    (not (running comp837))
  )
  :effect (and
    (not (evaluate comp680))
    (evaluate comp681)
    (one-off comp680)
  )
)
(:action evaluate-comp681-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (rebooted comp681)
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
  )
)
(:action evaluate-comp681-all-on
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (not (rebooted comp681))
    (running comp560)
    (running comp680)
    (running comp685)
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
    (all-on comp681)
  )
)
(:action evaluate-comp681-off-comp560
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (not (rebooted comp681))
    (not (running comp560))
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
    (one-off comp681)
  )
)
(:action evaluate-comp681-off-comp680
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (not (rebooted comp681))
    (not (running comp680))
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
    (one-off comp681)
  )
)
(:action evaluate-comp681-off-comp685
  :parameters ()
  :precondition (and
    (evaluate comp681)
    (not (rebooted comp681))
    (not (running comp685))
  )
  :effect (and
    (not (evaluate comp681))
    (evaluate comp682)
    (one-off comp681)
  )
)
(:action evaluate-comp682-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (rebooted comp682)
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
  )
)
(:action evaluate-comp682-all-on
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (not (rebooted comp682))
    (running comp681)
    (running comp797)
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
    (all-on comp682)
  )
)
(:action evaluate-comp682-off-comp681
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (not (rebooted comp682))
    (not (running comp681))
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
    (one-off comp682)
  )
)
(:action evaluate-comp682-off-comp797
  :parameters ()
  :precondition (and
    (evaluate comp682)
    (not (rebooted comp682))
    (not (running comp797))
  )
  :effect (and
    (not (evaluate comp682))
    (evaluate comp683)
    (one-off comp682)
  )
)
(:action evaluate-comp683-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp683)
    (rebooted comp683)
  )
  :effect (and
    (not (evaluate comp683))
    (evaluate comp684)
  )
)
(:action evaluate-comp683-all-on
  :parameters ()
  :precondition (and
    (evaluate comp683)
    (not (rebooted comp683))
    (running comp682)
  )
  :effect (and
    (not (evaluate comp683))
    (evaluate comp684)
    (all-on comp683)
  )
)
(:action evaluate-comp683-off-comp682
  :parameters ()
  :precondition (and
    (evaluate comp683)
    (not (rebooted comp683))
    (not (running comp682))
  )
  :effect (and
    (not (evaluate comp683))
    (evaluate comp684)
    (one-off comp683)
  )
)
(:action evaluate-comp684-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp684)
    (rebooted comp684)
  )
  :effect (and
    (not (evaluate comp684))
    (evaluate comp685)
  )
)
(:action evaluate-comp684-all-on
  :parameters ()
  :precondition (and
    (evaluate comp684)
    (not (rebooted comp684))
    (running comp683)
  )
  :effect (and
    (not (evaluate comp684))
    (evaluate comp685)
    (all-on comp684)
  )
)
(:action evaluate-comp684-off-comp683
  :parameters ()
  :precondition (and
    (evaluate comp684)
    (not (rebooted comp684))
    (not (running comp683))
  )
  :effect (and
    (not (evaluate comp684))
    (evaluate comp685)
    (one-off comp684)
  )
)
(:action evaluate-comp685-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp685)
    (rebooted comp685)
  )
  :effect (and
    (not (evaluate comp685))
    (evaluate comp686)
  )
)
(:action evaluate-comp685-all-on
  :parameters ()
  :precondition (and
    (evaluate comp685)
    (not (rebooted comp685))
    (running comp684)
  )
  :effect (and
    (not (evaluate comp685))
    (evaluate comp686)
    (all-on comp685)
  )
)
(:action evaluate-comp685-off-comp684
  :parameters ()
  :precondition (and
    (evaluate comp685)
    (not (rebooted comp685))
    (not (running comp684))
  )
  :effect (and
    (not (evaluate comp685))
    (evaluate comp686)
    (one-off comp685)
  )
)
(:action evaluate-comp686-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (rebooted comp686)
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
  )
)
(:action evaluate-comp686-all-on
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (not (rebooted comp686))
    (running comp685)
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
    (all-on comp686)
  )
)
(:action evaluate-comp686-off-comp685
  :parameters ()
  :precondition (and
    (evaluate comp686)
    (not (rebooted comp686))
    (not (running comp685))
  )
  :effect (and
    (not (evaluate comp686))
    (evaluate comp687)
    (one-off comp686)
  )
)
(:action evaluate-comp687-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp687)
    (rebooted comp687)
  )
  :effect (and
    (not (evaluate comp687))
    (evaluate comp688)
  )
)
(:action evaluate-comp687-all-on
  :parameters ()
  :precondition (and
    (evaluate comp687)
    (not (rebooted comp687))
    (running comp111)
    (running comp686)
  )
  :effect (and
    (not (evaluate comp687))
    (evaluate comp688)
    (all-on comp687)
  )
)
(:action evaluate-comp687-off-comp111
  :parameters ()
  :precondition (and
    (evaluate comp687)
    (not (rebooted comp687))
    (not (running comp111))
  )
  :effect (and
    (not (evaluate comp687))
    (evaluate comp688)
    (one-off comp687)
  )
)
(:action evaluate-comp687-off-comp686
  :parameters ()
  :precondition (and
    (evaluate comp687)
    (not (rebooted comp687))
    (not (running comp686))
  )
  :effect (and
    (not (evaluate comp687))
    (evaluate comp688)
    (one-off comp687)
  )
)
(:action evaluate-comp688-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp688)
    (rebooted comp688)
  )
  :effect (and
    (not (evaluate comp688))
    (evaluate comp689)
  )
)
(:action evaluate-comp688-all-on
  :parameters ()
  :precondition (and
    (evaluate comp688)
    (not (rebooted comp688))
    (running comp149)
    (running comp687)
  )
  :effect (and
    (not (evaluate comp688))
    (evaluate comp689)
    (all-on comp688)
  )
)
(:action evaluate-comp688-off-comp149
  :parameters ()
  :precondition (and
    (evaluate comp688)
    (not (rebooted comp688))
    (not (running comp149))
  )
  :effect (and
    (not (evaluate comp688))
    (evaluate comp689)
    (one-off comp688)
  )
)
(:action evaluate-comp688-off-comp687
  :parameters ()
  :precondition (and
    (evaluate comp688)
    (not (rebooted comp688))
    (not (running comp687))
  )
  :effect (and
    (not (evaluate comp688))
    (evaluate comp689)
    (one-off comp688)
  )
)
(:action evaluate-comp689-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp689)
    (rebooted comp689)
  )
  :effect (and
    (not (evaluate comp689))
    (evaluate comp690)
  )
)
(:action evaluate-comp689-all-on
  :parameters ()
  :precondition (and
    (evaluate comp689)
    (not (rebooted comp689))
    (running comp688)
  )
  :effect (and
    (not (evaluate comp689))
    (evaluate comp690)
    (all-on comp689)
  )
)
(:action evaluate-comp689-off-comp688
  :parameters ()
  :precondition (and
    (evaluate comp689)
    (not (rebooted comp689))
    (not (running comp688))
  )
  :effect (and
    (not (evaluate comp689))
    (evaluate comp690)
    (one-off comp689)
  )
)
(:action evaluate-comp690-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (rebooted comp690)
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
  )
)
(:action evaluate-comp690-all-on
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (not (rebooted comp690))
    (running comp689)
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
    (all-on comp690)
  )
)
(:action evaluate-comp690-off-comp689
  :parameters ()
  :precondition (and
    (evaluate comp690)
    (not (rebooted comp690))
    (not (running comp689))
  )
  :effect (and
    (not (evaluate comp690))
    (evaluate comp691)
    (one-off comp690)
  )
)
(:action evaluate-comp691-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp691)
    (rebooted comp691)
  )
  :effect (and
    (not (evaluate comp691))
    (evaluate comp692)
  )
)
(:action evaluate-comp691-all-on
  :parameters ()
  :precondition (and
    (evaluate comp691)
    (not (rebooted comp691))
    (running comp690)
    (running comp865)
  )
  :effect (and
    (not (evaluate comp691))
    (evaluate comp692)
    (all-on comp691)
  )
)
(:action evaluate-comp691-off-comp690
  :parameters ()
  :precondition (and
    (evaluate comp691)
    (not (rebooted comp691))
    (not (running comp690))
  )
  :effect (and
    (not (evaluate comp691))
    (evaluate comp692)
    (one-off comp691)
  )
)
(:action evaluate-comp691-off-comp865
  :parameters ()
  :precondition (and
    (evaluate comp691)
    (not (rebooted comp691))
    (not (running comp865))
  )
  :effect (and
    (not (evaluate comp691))
    (evaluate comp692)
    (one-off comp691)
  )
)
(:action evaluate-comp692-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp692)
    (rebooted comp692)
  )
  :effect (and
    (not (evaluate comp692))
    (evaluate comp693)
  )
)
(:action evaluate-comp692-all-on
  :parameters ()
  :precondition (and
    (evaluate comp692)
    (not (rebooted comp692))
    (running comp691)
  )
  :effect (and
    (not (evaluate comp692))
    (evaluate comp693)
    (all-on comp692)
  )
)
(:action evaluate-comp692-off-comp691
  :parameters ()
  :precondition (and
    (evaluate comp692)
    (not (rebooted comp692))
    (not (running comp691))
  )
  :effect (and
    (not (evaluate comp692))
    (evaluate comp693)
    (one-off comp692)
  )
)
(:action evaluate-comp693-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp693)
    (rebooted comp693)
  )
  :effect (and
    (not (evaluate comp693))
    (evaluate comp694)
  )
)
(:action evaluate-comp693-all-on
  :parameters ()
  :precondition (and
    (evaluate comp693)
    (not (rebooted comp693))
    (running comp692)
  )
  :effect (and
    (not (evaluate comp693))
    (evaluate comp694)
    (all-on comp693)
  )
)
(:action evaluate-comp693-off-comp692
  :parameters ()
  :precondition (and
    (evaluate comp693)
    (not (rebooted comp693))
    (not (running comp692))
  )
  :effect (and
    (not (evaluate comp693))
    (evaluate comp694)
    (one-off comp693)
  )
)
(:action evaluate-comp694-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp694)
    (rebooted comp694)
  )
  :effect (and
    (not (evaluate comp694))
    (evaluate comp695)
  )
)
(:action evaluate-comp694-all-on
  :parameters ()
  :precondition (and
    (evaluate comp694)
    (not (rebooted comp694))
    (running comp88)
    (running comp693)
  )
  :effect (and
    (not (evaluate comp694))
    (evaluate comp695)
    (all-on comp694)
  )
)
(:action evaluate-comp694-off-comp88
  :parameters ()
  :precondition (and
    (evaluate comp694)
    (not (rebooted comp694))
    (not (running comp88))
  )
  :effect (and
    (not (evaluate comp694))
    (evaluate comp695)
    (one-off comp694)
  )
)
(:action evaluate-comp694-off-comp693
  :parameters ()
  :precondition (and
    (evaluate comp694)
    (not (rebooted comp694))
    (not (running comp693))
  )
  :effect (and
    (not (evaluate comp694))
    (evaluate comp695)
    (one-off comp694)
  )
)
(:action evaluate-comp695-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp695)
    (rebooted comp695)
  )
  :effect (and
    (not (evaluate comp695))
    (evaluate comp696)
  )
)
(:action evaluate-comp695-all-on
  :parameters ()
  :precondition (and
    (evaluate comp695)
    (not (rebooted comp695))
    (running comp694)
  )
  :effect (and
    (not (evaluate comp695))
    (evaluate comp696)
    (all-on comp695)
  )
)
(:action evaluate-comp695-off-comp694
  :parameters ()
  :precondition (and
    (evaluate comp695)
    (not (rebooted comp695))
    (not (running comp694))
  )
  :effect (and
    (not (evaluate comp695))
    (evaluate comp696)
    (one-off comp695)
  )
)
(:action evaluate-comp696-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp696)
    (rebooted comp696)
  )
  :effect (and
    (not (evaluate comp696))
    (evaluate comp697)
  )
)
(:action evaluate-comp696-all-on
  :parameters ()
  :precondition (and
    (evaluate comp696)
    (not (rebooted comp696))
    (running comp695)
  )
  :effect (and
    (not (evaluate comp696))
    (evaluate comp697)
    (all-on comp696)
  )
)
(:action evaluate-comp696-off-comp695
  :parameters ()
  :precondition (and
    (evaluate comp696)
    (not (rebooted comp696))
    (not (running comp695))
  )
  :effect (and
    (not (evaluate comp696))
    (evaluate comp697)
    (one-off comp696)
  )
)
(:action evaluate-comp697-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp697)
    (rebooted comp697)
  )
  :effect (and
    (not (evaluate comp697))
    (evaluate comp698)
  )
)
(:action evaluate-comp697-all-on
  :parameters ()
  :precondition (and
    (evaluate comp697)
    (not (rebooted comp697))
    (running comp696)
  )
  :effect (and
    (not (evaluate comp697))
    (evaluate comp698)
    (all-on comp697)
  )
)
(:action evaluate-comp697-off-comp696
  :parameters ()
  :precondition (and
    (evaluate comp697)
    (not (rebooted comp697))
    (not (running comp696))
  )
  :effect (and
    (not (evaluate comp697))
    (evaluate comp698)
    (one-off comp697)
  )
)
(:action evaluate-comp698-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp698)
    (rebooted comp698)
  )
  :effect (and
    (not (evaluate comp698))
    (evaluate comp699)
  )
)
(:action evaluate-comp698-all-on
  :parameters ()
  :precondition (and
    (evaluate comp698)
    (not (rebooted comp698))
    (running comp697)
  )
  :effect (and
    (not (evaluate comp698))
    (evaluate comp699)
    (all-on comp698)
  )
)
(:action evaluate-comp698-off-comp697
  :parameters ()
  :precondition (and
    (evaluate comp698)
    (not (rebooted comp698))
    (not (running comp697))
  )
  :effect (and
    (not (evaluate comp698))
    (evaluate comp699)
    (one-off comp698)
  )
)
(:action evaluate-comp699-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (rebooted comp699)
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
  )
)
(:action evaluate-comp699-all-on
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (not (rebooted comp699))
    (running comp279)
    (running comp698)
    (running comp832)
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
    (all-on comp699)
  )
)
(:action evaluate-comp699-off-comp279
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (not (rebooted comp699))
    (not (running comp279))
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
    (one-off comp699)
  )
)
(:action evaluate-comp699-off-comp698
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (not (rebooted comp699))
    (not (running comp698))
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
    (one-off comp699)
  )
)
(:action evaluate-comp699-off-comp832
  :parameters ()
  :precondition (and
    (evaluate comp699)
    (not (rebooted comp699))
    (not (running comp832))
  )
  :effect (and
    (not (evaluate comp699))
    (evaluate comp700)
    (one-off comp699)
  )
)
(:action evaluate-comp700-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (rebooted comp700)
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
  )
)
(:action evaluate-comp700-all-on
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (not (rebooted comp700))
    (running comp528)
    (running comp699)
    (running comp714)
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
    (all-on comp700)
  )
)
(:action evaluate-comp700-off-comp528
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (not (rebooted comp700))
    (not (running comp528))
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
    (one-off comp700)
  )
)
(:action evaluate-comp700-off-comp699
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (not (rebooted comp700))
    (not (running comp699))
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
    (one-off comp700)
  )
)
(:action evaluate-comp700-off-comp714
  :parameters ()
  :precondition (and
    (evaluate comp700)
    (not (rebooted comp700))
    (not (running comp714))
  )
  :effect (and
    (not (evaluate comp700))
    (evaluate comp701)
    (one-off comp700)
  )
)
(:action evaluate-comp701-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp701)
    (rebooted comp701)
  )
  :effect (and
    (not (evaluate comp701))
    (evaluate comp702)
  )
)
(:action evaluate-comp701-all-on
  :parameters ()
  :precondition (and
    (evaluate comp701)
    (not (rebooted comp701))
    (running comp700)
  )
  :effect (and
    (not (evaluate comp701))
    (evaluate comp702)
    (all-on comp701)
  )
)
(:action evaluate-comp701-off-comp700
  :parameters ()
  :precondition (and
    (evaluate comp701)
    (not (rebooted comp701))
    (not (running comp700))
  )
  :effect (and
    (not (evaluate comp701))
    (evaluate comp702)
    (one-off comp701)
  )
)
(:action evaluate-comp702-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp702)
    (rebooted comp702)
  )
  :effect (and
    (not (evaluate comp702))
    (evaluate comp703)
  )
)
(:action evaluate-comp702-all-on
  :parameters ()
  :precondition (and
    (evaluate comp702)
    (not (rebooted comp702))
    (running comp222)
    (running comp701)
  )
  :effect (and
    (not (evaluate comp702))
    (evaluate comp703)
    (all-on comp702)
  )
)
(:action evaluate-comp702-off-comp222
  :parameters ()
  :precondition (and
    (evaluate comp702)
    (not (rebooted comp702))
    (not (running comp222))
  )
  :effect (and
    (not (evaluate comp702))
    (evaluate comp703)
    (one-off comp702)
  )
)
(:action evaluate-comp702-off-comp701
  :parameters ()
  :precondition (and
    (evaluate comp702)
    (not (rebooted comp702))
    (not (running comp701))
  )
  :effect (and
    (not (evaluate comp702))
    (evaluate comp703)
    (one-off comp702)
  )
)
(:action evaluate-comp703-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (rebooted comp703)
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
  )
)
(:action evaluate-comp703-all-on
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (not (rebooted comp703))
    (running comp483)
    (running comp702)
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
    (all-on comp703)
  )
)
(:action evaluate-comp703-off-comp483
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (not (rebooted comp703))
    (not (running comp483))
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
    (one-off comp703)
  )
)
(:action evaluate-comp703-off-comp702
  :parameters ()
  :precondition (and
    (evaluate comp703)
    (not (rebooted comp703))
    (not (running comp702))
  )
  :effect (and
    (not (evaluate comp703))
    (evaluate comp704)
    (one-off comp703)
  )
)
(:action evaluate-comp704-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (rebooted comp704)
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
  )
)
(:action evaluate-comp704-all-on
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (not (rebooted comp704))
    (running comp703)
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
    (all-on comp704)
  )
)
(:action evaluate-comp704-off-comp703
  :parameters ()
  :precondition (and
    (evaluate comp704)
    (not (rebooted comp704))
    (not (running comp703))
  )
  :effect (and
    (not (evaluate comp704))
    (evaluate comp705)
    (one-off comp704)
  )
)
(:action evaluate-comp705-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp705)
    (rebooted comp705)
  )
  :effect (and
    (not (evaluate comp705))
    (evaluate comp706)
  )
)
(:action evaluate-comp705-all-on
  :parameters ()
  :precondition (and
    (evaluate comp705)
    (not (rebooted comp705))
    (running comp704)
  )
  :effect (and
    (not (evaluate comp705))
    (evaluate comp706)
    (all-on comp705)
  )
)
(:action evaluate-comp705-off-comp704
  :parameters ()
  :precondition (and
    (evaluate comp705)
    (not (rebooted comp705))
    (not (running comp704))
  )
  :effect (and
    (not (evaluate comp705))
    (evaluate comp706)
    (one-off comp705)
  )
)
(:action evaluate-comp706-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp706)
    (rebooted comp706)
  )
  :effect (and
    (not (evaluate comp706))
    (evaluate comp707)
  )
)
(:action evaluate-comp706-all-on
  :parameters ()
  :precondition (and
    (evaluate comp706)
    (not (rebooted comp706))
    (running comp705)
  )
  :effect (and
    (not (evaluate comp706))
    (evaluate comp707)
    (all-on comp706)
  )
)
(:action evaluate-comp706-off-comp705
  :parameters ()
  :precondition (and
    (evaluate comp706)
    (not (rebooted comp706))
    (not (running comp705))
  )
  :effect (and
    (not (evaluate comp706))
    (evaluate comp707)
    (one-off comp706)
  )
)
(:action evaluate-comp707-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp707)
    (rebooted comp707)
  )
  :effect (and
    (not (evaluate comp707))
    (evaluate comp708)
  )
)
(:action evaluate-comp707-all-on
  :parameters ()
  :precondition (and
    (evaluate comp707)
    (not (rebooted comp707))
    (running comp71)
    (running comp706)
  )
  :effect (and
    (not (evaluate comp707))
    (evaluate comp708)
    (all-on comp707)
  )
)
(:action evaluate-comp707-off-comp71
  :parameters ()
  :precondition (and
    (evaluate comp707)
    (not (rebooted comp707))
    (not (running comp71))
  )
  :effect (and
    (not (evaluate comp707))
    (evaluate comp708)
    (one-off comp707)
  )
)
(:action evaluate-comp707-off-comp706
  :parameters ()
  :precondition (and
    (evaluate comp707)
    (not (rebooted comp707))
    (not (running comp706))
  )
  :effect (and
    (not (evaluate comp707))
    (evaluate comp708)
    (one-off comp707)
  )
)
(:action evaluate-comp708-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp708)
    (rebooted comp708)
  )
  :effect (and
    (not (evaluate comp708))
    (evaluate comp709)
  )
)
(:action evaluate-comp708-all-on
  :parameters ()
  :precondition (and
    (evaluate comp708)
    (not (rebooted comp708))
    (running comp707)
  )
  :effect (and
    (not (evaluate comp708))
    (evaluate comp709)
    (all-on comp708)
  )
)
(:action evaluate-comp708-off-comp707
  :parameters ()
  :precondition (and
    (evaluate comp708)
    (not (rebooted comp708))
    (not (running comp707))
  )
  :effect (and
    (not (evaluate comp708))
    (evaluate comp709)
    (one-off comp708)
  )
)
(:action evaluate-comp709-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp709)
    (rebooted comp709)
  )
  :effect (and
    (not (evaluate comp709))
    (evaluate comp710)
  )
)
(:action evaluate-comp709-all-on
  :parameters ()
  :precondition (and
    (evaluate comp709)
    (not (rebooted comp709))
    (running comp708)
  )
  :effect (and
    (not (evaluate comp709))
    (evaluate comp710)
    (all-on comp709)
  )
)
(:action evaluate-comp709-off-comp708
  :parameters ()
  :precondition (and
    (evaluate comp709)
    (not (rebooted comp709))
    (not (running comp708))
  )
  :effect (and
    (not (evaluate comp709))
    (evaluate comp710)
    (one-off comp709)
  )
)
(:action evaluate-comp710-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp710)
    (rebooted comp710)
  )
  :effect (and
    (not (evaluate comp710))
    (evaluate comp711)
  )
)
(:action evaluate-comp710-all-on
  :parameters ()
  :precondition (and
    (evaluate comp710)
    (not (rebooted comp710))
    (running comp378)
    (running comp709)
  )
  :effect (and
    (not (evaluate comp710))
    (evaluate comp711)
    (all-on comp710)
  )
)
(:action evaluate-comp710-off-comp378
  :parameters ()
  :precondition (and
    (evaluate comp710)
    (not (rebooted comp710))
    (not (running comp378))
  )
  :effect (and
    (not (evaluate comp710))
    (evaluate comp711)
    (one-off comp710)
  )
)
(:action evaluate-comp710-off-comp709
  :parameters ()
  :precondition (and
    (evaluate comp710)
    (not (rebooted comp710))
    (not (running comp709))
  )
  :effect (and
    (not (evaluate comp710))
    (evaluate comp711)
    (one-off comp710)
  )
)
(:action evaluate-comp711-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (rebooted comp711)
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
  )
)
(:action evaluate-comp711-all-on
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (not (rebooted comp711))
    (running comp710)
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
    (all-on comp711)
  )
)
(:action evaluate-comp711-off-comp710
  :parameters ()
  :precondition (and
    (evaluate comp711)
    (not (rebooted comp711))
    (not (running comp710))
  )
  :effect (and
    (not (evaluate comp711))
    (evaluate comp712)
    (one-off comp711)
  )
)
(:action evaluate-comp712-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp712)
    (rebooted comp712)
  )
  :effect (and
    (not (evaluate comp712))
    (evaluate comp713)
  )
)
(:action evaluate-comp712-all-on
  :parameters ()
  :precondition (and
    (evaluate comp712)
    (not (rebooted comp712))
    (running comp711)
  )
  :effect (and
    (not (evaluate comp712))
    (evaluate comp713)
    (all-on comp712)
  )
)
(:action evaluate-comp712-off-comp711
  :parameters ()
  :precondition (and
    (evaluate comp712)
    (not (rebooted comp712))
    (not (running comp711))
  )
  :effect (and
    (not (evaluate comp712))
    (evaluate comp713)
    (one-off comp712)
  )
)
(:action evaluate-comp713-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp713)
    (rebooted comp713)
  )
  :effect (and
    (not (evaluate comp713))
    (evaluate comp714)
  )
)
(:action evaluate-comp713-all-on
  :parameters ()
  :precondition (and
    (evaluate comp713)
    (not (rebooted comp713))
    (running comp712)
  )
  :effect (and
    (not (evaluate comp713))
    (evaluate comp714)
    (all-on comp713)
  )
)
(:action evaluate-comp713-off-comp712
  :parameters ()
  :precondition (and
    (evaluate comp713)
    (not (rebooted comp713))
    (not (running comp712))
  )
  :effect (and
    (not (evaluate comp713))
    (evaluate comp714)
    (one-off comp713)
  )
)
(:action evaluate-comp714-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (rebooted comp714)
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
  )
)
(:action evaluate-comp714-all-on
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (not (rebooted comp714))
    (running comp93)
    (running comp713)
    (running comp890)
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
    (all-on comp714)
  )
)
(:action evaluate-comp714-off-comp93
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (not (rebooted comp714))
    (not (running comp93))
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
    (one-off comp714)
  )
)
(:action evaluate-comp714-off-comp713
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (not (rebooted comp714))
    (not (running comp713))
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
    (one-off comp714)
  )
)
(:action evaluate-comp714-off-comp890
  :parameters ()
  :precondition (and
    (evaluate comp714)
    (not (rebooted comp714))
    (not (running comp890))
  )
  :effect (and
    (not (evaluate comp714))
    (evaluate comp715)
    (one-off comp714)
  )
)
(:action evaluate-comp715-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (rebooted comp715)
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
  )
)
(:action evaluate-comp715-all-on
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (running comp87)
    (running comp714)
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (all-on comp715)
  )
)
(:action evaluate-comp715-off-comp87
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (not (running comp87))
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (one-off comp715)
  )
)
(:action evaluate-comp715-off-comp714
  :parameters ()
  :precondition (and
    (evaluate comp715)
    (not (rebooted comp715))
    (not (running comp714))
  )
  :effect (and
    (not (evaluate comp715))
    (evaluate comp716)
    (one-off comp715)
  )
)
(:action evaluate-comp716-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (rebooted comp716)
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
  )
)
(:action evaluate-comp716-all-on
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (not (rebooted comp716))
    (running comp715)
    (running comp875)
    (running comp924)
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
    (all-on comp716)
  )
)
(:action evaluate-comp716-off-comp715
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (not (rebooted comp716))
    (not (running comp715))
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
    (one-off comp716)
  )
)
(:action evaluate-comp716-off-comp875
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (not (rebooted comp716))
    (not (running comp875))
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
    (one-off comp716)
  )
)
(:action evaluate-comp716-off-comp924
  :parameters ()
  :precondition (and
    (evaluate comp716)
    (not (rebooted comp716))
    (not (running comp924))
  )
  :effect (and
    (not (evaluate comp716))
    (evaluate comp717)
    (one-off comp716)
  )
)
(:action evaluate-comp717-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp717)
    (rebooted comp717)
  )
  :effect (and
    (not (evaluate comp717))
    (evaluate comp718)
  )
)
(:action evaluate-comp717-all-on
  :parameters ()
  :precondition (and
    (evaluate comp717)
    (not (rebooted comp717))
    (running comp716)
  )
  :effect (and
    (not (evaluate comp717))
    (evaluate comp718)
    (all-on comp717)
  )
)
(:action evaluate-comp717-off-comp716
  :parameters ()
  :precondition (and
    (evaluate comp717)
    (not (rebooted comp717))
    (not (running comp716))
  )
  :effect (and
    (not (evaluate comp717))
    (evaluate comp718)
    (one-off comp717)
  )
)
(:action evaluate-comp718-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp718)
    (rebooted comp718)
  )
  :effect (and
    (not (evaluate comp718))
    (evaluate comp719)
  )
)
(:action evaluate-comp718-all-on
  :parameters ()
  :precondition (and
    (evaluate comp718)
    (not (rebooted comp718))
    (running comp717)
  )
  :effect (and
    (not (evaluate comp718))
    (evaluate comp719)
    (all-on comp718)
  )
)
(:action evaluate-comp718-off-comp717
  :parameters ()
  :precondition (and
    (evaluate comp718)
    (not (rebooted comp718))
    (not (running comp717))
  )
  :effect (and
    (not (evaluate comp718))
    (evaluate comp719)
    (one-off comp718)
  )
)
(:action evaluate-comp719-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp719)
    (rebooted comp719)
  )
  :effect (and
    (not (evaluate comp719))
    (evaluate comp720)
  )
)
(:action evaluate-comp719-all-on
  :parameters ()
  :precondition (and
    (evaluate comp719)
    (not (rebooted comp719))
    (running comp718)
  )
  :effect (and
    (not (evaluate comp719))
    (evaluate comp720)
    (all-on comp719)
  )
)
(:action evaluate-comp719-off-comp718
  :parameters ()
  :precondition (and
    (evaluate comp719)
    (not (rebooted comp719))
    (not (running comp718))
  )
  :effect (and
    (not (evaluate comp719))
    (evaluate comp720)
    (one-off comp719)
  )
)
(:action evaluate-comp720-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (rebooted comp720)
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
  )
)
(:action evaluate-comp720-all-on
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (not (rebooted comp720))
    (running comp64)
    (running comp719)
    (running comp884)
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
    (all-on comp720)
  )
)
(:action evaluate-comp720-off-comp64
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (not (rebooted comp720))
    (not (running comp64))
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
    (one-off comp720)
  )
)
(:action evaluate-comp720-off-comp719
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (not (rebooted comp720))
    (not (running comp719))
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
    (one-off comp720)
  )
)
(:action evaluate-comp720-off-comp884
  :parameters ()
  :precondition (and
    (evaluate comp720)
    (not (rebooted comp720))
    (not (running comp884))
  )
  :effect (and
    (not (evaluate comp720))
    (evaluate comp721)
    (one-off comp720)
  )
)
(:action evaluate-comp721-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp721)
    (rebooted comp721)
  )
  :effect (and
    (not (evaluate comp721))
    (evaluate comp722)
  )
)
(:action evaluate-comp721-all-on
  :parameters ()
  :precondition (and
    (evaluate comp721)
    (not (rebooted comp721))
    (running comp345)
    (running comp720)
  )
  :effect (and
    (not (evaluate comp721))
    (evaluate comp722)
    (all-on comp721)
  )
)
(:action evaluate-comp721-off-comp345
  :parameters ()
  :precondition (and
    (evaluate comp721)
    (not (rebooted comp721))
    (not (running comp345))
  )
  :effect (and
    (not (evaluate comp721))
    (evaluate comp722)
    (one-off comp721)
  )
)
(:action evaluate-comp721-off-comp720
  :parameters ()
  :precondition (and
    (evaluate comp721)
    (not (rebooted comp721))
    (not (running comp720))
  )
  :effect (and
    (not (evaluate comp721))
    (evaluate comp722)
    (one-off comp721)
  )
)
(:action evaluate-comp722-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp722)
    (rebooted comp722)
  )
  :effect (and
    (not (evaluate comp722))
    (evaluate comp723)
  )
)
(:action evaluate-comp722-all-on
  :parameters ()
  :precondition (and
    (evaluate comp722)
    (not (rebooted comp722))
    (running comp721)
  )
  :effect (and
    (not (evaluate comp722))
    (evaluate comp723)
    (all-on comp722)
  )
)
(:action evaluate-comp722-off-comp721
  :parameters ()
  :precondition (and
    (evaluate comp722)
    (not (rebooted comp722))
    (not (running comp721))
  )
  :effect (and
    (not (evaluate comp722))
    (evaluate comp723)
    (one-off comp722)
  )
)
(:action evaluate-comp723-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp723)
    (rebooted comp723)
  )
  :effect (and
    (not (evaluate comp723))
    (evaluate comp724)
  )
)
(:action evaluate-comp723-all-on
  :parameters ()
  :precondition (and
    (evaluate comp723)
    (not (rebooted comp723))
    (running comp722)
  )
  :effect (and
    (not (evaluate comp723))
    (evaluate comp724)
    (all-on comp723)
  )
)
(:action evaluate-comp723-off-comp722
  :parameters ()
  :precondition (and
    (evaluate comp723)
    (not (rebooted comp723))
    (not (running comp722))
  )
  :effect (and
    (not (evaluate comp723))
    (evaluate comp724)
    (one-off comp723)
  )
)
(:action evaluate-comp724-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp724)
    (rebooted comp724)
  )
  :effect (and
    (not (evaluate comp724))
    (evaluate comp725)
  )
)
(:action evaluate-comp724-all-on
  :parameters ()
  :precondition (and
    (evaluate comp724)
    (not (rebooted comp724))
    (running comp723)
  )
  :effect (and
    (not (evaluate comp724))
    (evaluate comp725)
    (all-on comp724)
  )
)
(:action evaluate-comp724-off-comp723
  :parameters ()
  :precondition (and
    (evaluate comp724)
    (not (rebooted comp724))
    (not (running comp723))
  )
  :effect (and
    (not (evaluate comp724))
    (evaluate comp725)
    (one-off comp724)
  )
)
(:action evaluate-comp725-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (rebooted comp725)
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
  )
)
(:action evaluate-comp725-all-on
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (not (rebooted comp725))
    (running comp724)
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
    (all-on comp725)
  )
)
(:action evaluate-comp725-off-comp724
  :parameters ()
  :precondition (and
    (evaluate comp725)
    (not (rebooted comp725))
    (not (running comp724))
  )
  :effect (and
    (not (evaluate comp725))
    (evaluate comp726)
    (one-off comp725)
  )
)
(:action evaluate-comp726-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (rebooted comp726)
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
  )
)
(:action evaluate-comp726-all-on
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (not (rebooted comp726))
    (running comp90)
    (running comp725)
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
    (all-on comp726)
  )
)
(:action evaluate-comp726-off-comp90
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (not (rebooted comp726))
    (not (running comp90))
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
    (one-off comp726)
  )
)
(:action evaluate-comp726-off-comp725
  :parameters ()
  :precondition (and
    (evaluate comp726)
    (not (rebooted comp726))
    (not (running comp725))
  )
  :effect (and
    (not (evaluate comp726))
    (evaluate comp727)
    (one-off comp726)
  )
)
(:action evaluate-comp727-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp727)
    (rebooted comp727)
  )
  :effect (and
    (not (evaluate comp727))
    (evaluate comp728)
  )
)
(:action evaluate-comp727-all-on
  :parameters ()
  :precondition (and
    (evaluate comp727)
    (not (rebooted comp727))
    (running comp726)
  )
  :effect (and
    (not (evaluate comp727))
    (evaluate comp728)
    (all-on comp727)
  )
)
(:action evaluate-comp727-off-comp726
  :parameters ()
  :precondition (and
    (evaluate comp727)
    (not (rebooted comp727))
    (not (running comp726))
  )
  :effect (and
    (not (evaluate comp727))
    (evaluate comp728)
    (one-off comp727)
  )
)
(:action evaluate-comp728-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp728)
    (rebooted comp728)
  )
  :effect (and
    (not (evaluate comp728))
    (evaluate comp729)
  )
)
(:action evaluate-comp728-all-on
  :parameters ()
  :precondition (and
    (evaluate comp728)
    (not (rebooted comp728))
    (running comp727)
  )
  :effect (and
    (not (evaluate comp728))
    (evaluate comp729)
    (all-on comp728)
  )
)
(:action evaluate-comp728-off-comp727
  :parameters ()
  :precondition (and
    (evaluate comp728)
    (not (rebooted comp728))
    (not (running comp727))
  )
  :effect (and
    (not (evaluate comp728))
    (evaluate comp729)
    (one-off comp728)
  )
)
(:action evaluate-comp729-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp729)
    (rebooted comp729)
  )
  :effect (and
    (not (evaluate comp729))
    (evaluate comp730)
  )
)
(:action evaluate-comp729-all-on
  :parameters ()
  :precondition (and
    (evaluate comp729)
    (not (rebooted comp729))
    (running comp728)
  )
  :effect (and
    (not (evaluate comp729))
    (evaluate comp730)
    (all-on comp729)
  )
)
(:action evaluate-comp729-off-comp728
  :parameters ()
  :precondition (and
    (evaluate comp729)
    (not (rebooted comp729))
    (not (running comp728))
  )
  :effect (and
    (not (evaluate comp729))
    (evaluate comp730)
    (one-off comp729)
  )
)
(:action evaluate-comp730-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (rebooted comp730)
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
  )
)
(:action evaluate-comp730-all-on
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (not (rebooted comp730))
    (running comp541)
    (running comp633)
    (running comp729)
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
    (all-on comp730)
  )
)
(:action evaluate-comp730-off-comp541
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (not (rebooted comp730))
    (not (running comp541))
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
    (one-off comp730)
  )
)
(:action evaluate-comp730-off-comp633
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (not (rebooted comp730))
    (not (running comp633))
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
    (one-off comp730)
  )
)
(:action evaluate-comp730-off-comp729
  :parameters ()
  :precondition (and
    (evaluate comp730)
    (not (rebooted comp730))
    (not (running comp729))
  )
  :effect (and
    (not (evaluate comp730))
    (evaluate comp731)
    (one-off comp730)
  )
)
(:action evaluate-comp731-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (rebooted comp731)
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
  )
)
(:action evaluate-comp731-all-on
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (not (rebooted comp731))
    (running comp434)
    (running comp730)
    (running comp852)
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
    (all-on comp731)
  )
)
(:action evaluate-comp731-off-comp434
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (not (rebooted comp731))
    (not (running comp434))
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
    (one-off comp731)
  )
)
(:action evaluate-comp731-off-comp730
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (not (rebooted comp731))
    (not (running comp730))
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
    (one-off comp731)
  )
)
(:action evaluate-comp731-off-comp852
  :parameters ()
  :precondition (and
    (evaluate comp731)
    (not (rebooted comp731))
    (not (running comp852))
  )
  :effect (and
    (not (evaluate comp731))
    (evaluate comp732)
    (one-off comp731)
  )
)
(:action evaluate-comp732-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp732)
    (rebooted comp732)
  )
  :effect (and
    (not (evaluate comp732))
    (evaluate comp733)
  )
)
(:action evaluate-comp732-all-on
  :parameters ()
  :precondition (and
    (evaluate comp732)
    (not (rebooted comp732))
    (running comp731)
  )
  :effect (and
    (not (evaluate comp732))
    (evaluate comp733)
    (all-on comp732)
  )
)
(:action evaluate-comp732-off-comp731
  :parameters ()
  :precondition (and
    (evaluate comp732)
    (not (rebooted comp732))
    (not (running comp731))
  )
  :effect (and
    (not (evaluate comp732))
    (evaluate comp733)
    (one-off comp732)
  )
)
(:action evaluate-comp733-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp733)
    (rebooted comp733)
  )
  :effect (and
    (not (evaluate comp733))
    (evaluate comp734)
  )
)
(:action evaluate-comp733-all-on
  :parameters ()
  :precondition (and
    (evaluate comp733)
    (not (rebooted comp733))
    (running comp732)
  )
  :effect (and
    (not (evaluate comp733))
    (evaluate comp734)
    (all-on comp733)
  )
)
(:action evaluate-comp733-off-comp732
  :parameters ()
  :precondition (and
    (evaluate comp733)
    (not (rebooted comp733))
    (not (running comp732))
  )
  :effect (and
    (not (evaluate comp733))
    (evaluate comp734)
    (one-off comp733)
  )
)
(:action evaluate-comp734-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp734)
    (rebooted comp734)
  )
  :effect (and
    (not (evaluate comp734))
    (evaluate comp735)
  )
)
(:action evaluate-comp734-all-on
  :parameters ()
  :precondition (and
    (evaluate comp734)
    (not (rebooted comp734))
    (running comp733)
  )
  :effect (and
    (not (evaluate comp734))
    (evaluate comp735)
    (all-on comp734)
  )
)
(:action evaluate-comp734-off-comp733
  :parameters ()
  :precondition (and
    (evaluate comp734)
    (not (rebooted comp734))
    (not (running comp733))
  )
  :effect (and
    (not (evaluate comp734))
    (evaluate comp735)
    (one-off comp734)
  )
)
(:action evaluate-comp735-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp735)
    (rebooted comp735)
  )
  :effect (and
    (not (evaluate comp735))
    (evaluate comp736)
  )
)
(:action evaluate-comp735-all-on
  :parameters ()
  :precondition (and
    (evaluate comp735)
    (not (rebooted comp735))
    (running comp734)
  )
  :effect (and
    (not (evaluate comp735))
    (evaluate comp736)
    (all-on comp735)
  )
)
(:action evaluate-comp735-off-comp734
  :parameters ()
  :precondition (and
    (evaluate comp735)
    (not (rebooted comp735))
    (not (running comp734))
  )
  :effect (and
    (not (evaluate comp735))
    (evaluate comp736)
    (one-off comp735)
  )
)
(:action evaluate-comp736-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp736)
    (rebooted comp736)
  )
  :effect (and
    (not (evaluate comp736))
    (evaluate comp737)
  )
)
(:action evaluate-comp736-all-on
  :parameters ()
  :precondition (and
    (evaluate comp736)
    (not (rebooted comp736))
    (running comp735)
  )
  :effect (and
    (not (evaluate comp736))
    (evaluate comp737)
    (all-on comp736)
  )
)
(:action evaluate-comp736-off-comp735
  :parameters ()
  :precondition (and
    (evaluate comp736)
    (not (rebooted comp736))
    (not (running comp735))
  )
  :effect (and
    (not (evaluate comp736))
    (evaluate comp737)
    (one-off comp736)
  )
)
(:action evaluate-comp737-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp737)
    (rebooted comp737)
  )
  :effect (and
    (not (evaluate comp737))
    (evaluate comp738)
  )
)
(:action evaluate-comp737-all-on
  :parameters ()
  :precondition (and
    (evaluate comp737)
    (not (rebooted comp737))
    (running comp736)
  )
  :effect (and
    (not (evaluate comp737))
    (evaluate comp738)
    (all-on comp737)
  )
)
(:action evaluate-comp737-off-comp736
  :parameters ()
  :precondition (and
    (evaluate comp737)
    (not (rebooted comp737))
    (not (running comp736))
  )
  :effect (and
    (not (evaluate comp737))
    (evaluate comp738)
    (one-off comp737)
  )
)
(:action evaluate-comp738-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp738)
    (rebooted comp738)
  )
  :effect (and
    (not (evaluate comp738))
    (evaluate comp739)
  )
)
(:action evaluate-comp738-all-on
  :parameters ()
  :precondition (and
    (evaluate comp738)
    (not (rebooted comp738))
    (running comp737)
  )
  :effect (and
    (not (evaluate comp738))
    (evaluate comp739)
    (all-on comp738)
  )
)
(:action evaluate-comp738-off-comp737
  :parameters ()
  :precondition (and
    (evaluate comp738)
    (not (rebooted comp738))
    (not (running comp737))
  )
  :effect (and
    (not (evaluate comp738))
    (evaluate comp739)
    (one-off comp738)
  )
)
(:action evaluate-comp739-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp739)
    (rebooted comp739)
  )
  :effect (and
    (not (evaluate comp739))
    (evaluate comp740)
  )
)
(:action evaluate-comp739-all-on
  :parameters ()
  :precondition (and
    (evaluate comp739)
    (not (rebooted comp739))
    (running comp738)
  )
  :effect (and
    (not (evaluate comp739))
    (evaluate comp740)
    (all-on comp739)
  )
)
(:action evaluate-comp739-off-comp738
  :parameters ()
  :precondition (and
    (evaluate comp739)
    (not (rebooted comp739))
    (not (running comp738))
  )
  :effect (and
    (not (evaluate comp739))
    (evaluate comp740)
    (one-off comp739)
  )
)
(:action evaluate-comp740-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp740)
    (rebooted comp740)
  )
  :effect (and
    (not (evaluate comp740))
    (evaluate comp741)
  )
)
(:action evaluate-comp740-all-on
  :parameters ()
  :precondition (and
    (evaluate comp740)
    (not (rebooted comp740))
    (running comp739)
  )
  :effect (and
    (not (evaluate comp740))
    (evaluate comp741)
    (all-on comp740)
  )
)
(:action evaluate-comp740-off-comp739
  :parameters ()
  :precondition (and
    (evaluate comp740)
    (not (rebooted comp740))
    (not (running comp739))
  )
  :effect (and
    (not (evaluate comp740))
    (evaluate comp741)
    (one-off comp740)
  )
)
(:action evaluate-comp741-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp741)
    (rebooted comp741)
  )
  :effect (and
    (not (evaluate comp741))
    (evaluate comp742)
  )
)
(:action evaluate-comp741-all-on
  :parameters ()
  :precondition (and
    (evaluate comp741)
    (not (rebooted comp741))
    (running comp740)
  )
  :effect (and
    (not (evaluate comp741))
    (evaluate comp742)
    (all-on comp741)
  )
)
(:action evaluate-comp741-off-comp740
  :parameters ()
  :precondition (and
    (evaluate comp741)
    (not (rebooted comp741))
    (not (running comp740))
  )
  :effect (and
    (not (evaluate comp741))
    (evaluate comp742)
    (one-off comp741)
  )
)
(:action evaluate-comp742-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp742)
    (rebooted comp742)
  )
  :effect (and
    (not (evaluate comp742))
    (evaluate comp743)
  )
)
(:action evaluate-comp742-all-on
  :parameters ()
  :precondition (and
    (evaluate comp742)
    (not (rebooted comp742))
    (running comp741)
  )
  :effect (and
    (not (evaluate comp742))
    (evaluate comp743)
    (all-on comp742)
  )
)
(:action evaluate-comp742-off-comp741
  :parameters ()
  :precondition (and
    (evaluate comp742)
    (not (rebooted comp742))
    (not (running comp741))
  )
  :effect (and
    (not (evaluate comp742))
    (evaluate comp743)
    (one-off comp742)
  )
)
(:action evaluate-comp743-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp743)
    (rebooted comp743)
  )
  :effect (and
    (not (evaluate comp743))
    (evaluate comp744)
  )
)
(:action evaluate-comp743-all-on
  :parameters ()
  :precondition (and
    (evaluate comp743)
    (not (rebooted comp743))
    (running comp742)
  )
  :effect (and
    (not (evaluate comp743))
    (evaluate comp744)
    (all-on comp743)
  )
)
(:action evaluate-comp743-off-comp742
  :parameters ()
  :precondition (and
    (evaluate comp743)
    (not (rebooted comp743))
    (not (running comp742))
  )
  :effect (and
    (not (evaluate comp743))
    (evaluate comp744)
    (one-off comp743)
  )
)
(:action evaluate-comp744-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp744)
    (rebooted comp744)
  )
  :effect (and
    (not (evaluate comp744))
    (evaluate comp745)
  )
)
(:action evaluate-comp744-all-on
  :parameters ()
  :precondition (and
    (evaluate comp744)
    (not (rebooted comp744))
    (running comp743)
  )
  :effect (and
    (not (evaluate comp744))
    (evaluate comp745)
    (all-on comp744)
  )
)
(:action evaluate-comp744-off-comp743
  :parameters ()
  :precondition (and
    (evaluate comp744)
    (not (rebooted comp744))
    (not (running comp743))
  )
  :effect (and
    (not (evaluate comp744))
    (evaluate comp745)
    (one-off comp744)
  )
)
(:action evaluate-comp745-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (rebooted comp745)
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
  )
)
(:action evaluate-comp745-all-on
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (not (rebooted comp745))
    (running comp693)
    (running comp744)
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
    (all-on comp745)
  )
)
(:action evaluate-comp745-off-comp693
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (not (rebooted comp745))
    (not (running comp693))
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
    (one-off comp745)
  )
)
(:action evaluate-comp745-off-comp744
  :parameters ()
  :precondition (and
    (evaluate comp745)
    (not (rebooted comp745))
    (not (running comp744))
  )
  :effect (and
    (not (evaluate comp745))
    (evaluate comp746)
    (one-off comp745)
  )
)
(:action evaluate-comp746-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (rebooted comp746)
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
  )
)
(:action evaluate-comp746-all-on
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (not (rebooted comp746))
    (running comp410)
    (running comp745)
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
    (all-on comp746)
  )
)
(:action evaluate-comp746-off-comp410
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (not (rebooted comp746))
    (not (running comp410))
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
    (one-off comp746)
  )
)
(:action evaluate-comp746-off-comp745
  :parameters ()
  :precondition (and
    (evaluate comp746)
    (not (rebooted comp746))
    (not (running comp745))
  )
  :effect (and
    (not (evaluate comp746))
    (evaluate comp747)
    (one-off comp746)
  )
)
(:action evaluate-comp747-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (rebooted comp747)
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
  )
)
(:action evaluate-comp747-all-on
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (not (rebooted comp747))
    (running comp600)
    (running comp746)
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
    (all-on comp747)
  )
)
(:action evaluate-comp747-off-comp600
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (not (rebooted comp747))
    (not (running comp600))
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
    (one-off comp747)
  )
)
(:action evaluate-comp747-off-comp746
  :parameters ()
  :precondition (and
    (evaluate comp747)
    (not (rebooted comp747))
    (not (running comp746))
  )
  :effect (and
    (not (evaluate comp747))
    (evaluate comp748)
    (one-off comp747)
  )
)
(:action evaluate-comp748-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (rebooted comp748)
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
  )
)
(:action evaluate-comp748-all-on
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (not (rebooted comp748))
    (running comp747)
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
    (all-on comp748)
  )
)
(:action evaluate-comp748-off-comp747
  :parameters ()
  :precondition (and
    (evaluate comp748)
    (not (rebooted comp748))
    (not (running comp747))
  )
  :effect (and
    (not (evaluate comp748))
    (evaluate comp749)
    (one-off comp748)
  )
)
(:action evaluate-comp749-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (rebooted comp749)
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
  )
)
(:action evaluate-comp749-all-on
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (not (rebooted comp749))
    (running comp177)
    (running comp692)
    (running comp748)
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
    (all-on comp749)
  )
)
(:action evaluate-comp749-off-comp177
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (not (rebooted comp749))
    (not (running comp177))
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
    (one-off comp749)
  )
)
(:action evaluate-comp749-off-comp692
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (not (rebooted comp749))
    (not (running comp692))
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
    (one-off comp749)
  )
)
(:action evaluate-comp749-off-comp748
  :parameters ()
  :precondition (and
    (evaluate comp749)
    (not (rebooted comp749))
    (not (running comp748))
  )
  :effect (and
    (not (evaluate comp749))
    (evaluate comp750)
    (one-off comp749)
  )
)
(:action evaluate-comp750-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (rebooted comp750)
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
  )
)
(:action evaluate-comp750-all-on
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (running comp299)
    (running comp749)
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (all-on comp750)
  )
)
(:action evaluate-comp750-off-comp299
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (not (running comp299))
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (one-off comp750)
  )
)
(:action evaluate-comp750-off-comp749
  :parameters ()
  :precondition (and
    (evaluate comp750)
    (not (rebooted comp750))
    (not (running comp749))
  )
  :effect (and
    (not (evaluate comp750))
    (evaluate comp751)
    (one-off comp750)
  )
)
(:action evaluate-comp751-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp751)
    (rebooted comp751)
  )
  :effect (and
    (not (evaluate comp751))
    (evaluate comp752)
  )
)
(:action evaluate-comp751-all-on
  :parameters ()
  :precondition (and
    (evaluate comp751)
    (not (rebooted comp751))
    (running comp750)
  )
  :effect (and
    (not (evaluate comp751))
    (evaluate comp752)
    (all-on comp751)
  )
)
(:action evaluate-comp751-off-comp750
  :parameters ()
  :precondition (and
    (evaluate comp751)
    (not (rebooted comp751))
    (not (running comp750))
  )
  :effect (and
    (not (evaluate comp751))
    (evaluate comp752)
    (one-off comp751)
  )
)
(:action evaluate-comp752-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (rebooted comp752)
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
  )
)
(:action evaluate-comp752-all-on
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (not (rebooted comp752))
    (running comp751)
    (running comp923)
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
    (all-on comp752)
  )
)
(:action evaluate-comp752-off-comp751
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (not (rebooted comp752))
    (not (running comp751))
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
    (one-off comp752)
  )
)
(:action evaluate-comp752-off-comp923
  :parameters ()
  :precondition (and
    (evaluate comp752)
    (not (rebooted comp752))
    (not (running comp923))
  )
  :effect (and
    (not (evaluate comp752))
    (evaluate comp753)
    (one-off comp752)
  )
)
(:action evaluate-comp753-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp753)
    (rebooted comp753)
  )
  :effect (and
    (not (evaluate comp753))
    (evaluate comp754)
  )
)
(:action evaluate-comp753-all-on
  :parameters ()
  :precondition (and
    (evaluate comp753)
    (not (rebooted comp753))
    (running comp752)
  )
  :effect (and
    (not (evaluate comp753))
    (evaluate comp754)
    (all-on comp753)
  )
)
(:action evaluate-comp753-off-comp752
  :parameters ()
  :precondition (and
    (evaluate comp753)
    (not (rebooted comp753))
    (not (running comp752))
  )
  :effect (and
    (not (evaluate comp753))
    (evaluate comp754)
    (one-off comp753)
  )
)
(:action evaluate-comp754-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp754)
    (rebooted comp754)
  )
  :effect (and
    (not (evaluate comp754))
    (evaluate comp755)
  )
)
(:action evaluate-comp754-all-on
  :parameters ()
  :precondition (and
    (evaluate comp754)
    (not (rebooted comp754))
    (running comp95)
    (running comp753)
  )
  :effect (and
    (not (evaluate comp754))
    (evaluate comp755)
    (all-on comp754)
  )
)
(:action evaluate-comp754-off-comp95
  :parameters ()
  :precondition (and
    (evaluate comp754)
    (not (rebooted comp754))
    (not (running comp95))
  )
  :effect (and
    (not (evaluate comp754))
    (evaluate comp755)
    (one-off comp754)
  )
)
(:action evaluate-comp754-off-comp753
  :parameters ()
  :precondition (and
    (evaluate comp754)
    (not (rebooted comp754))
    (not (running comp753))
  )
  :effect (and
    (not (evaluate comp754))
    (evaluate comp755)
    (one-off comp754)
  )
)
(:action evaluate-comp755-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp755)
    (rebooted comp755)
  )
  :effect (and
    (not (evaluate comp755))
    (evaluate comp756)
  )
)
(:action evaluate-comp755-all-on
  :parameters ()
  :precondition (and
    (evaluate comp755)
    (not (rebooted comp755))
    (running comp754)
  )
  :effect (and
    (not (evaluate comp755))
    (evaluate comp756)
    (all-on comp755)
  )
)
(:action evaluate-comp755-off-comp754
  :parameters ()
  :precondition (and
    (evaluate comp755)
    (not (rebooted comp755))
    (not (running comp754))
  )
  :effect (and
    (not (evaluate comp755))
    (evaluate comp756)
    (one-off comp755)
  )
)
(:action evaluate-comp756-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (rebooted comp756)
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
  )
)
(:action evaluate-comp756-all-on
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (not (rebooted comp756))
    (running comp755)
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
    (all-on comp756)
  )
)
(:action evaluate-comp756-off-comp755
  :parameters ()
  :precondition (and
    (evaluate comp756)
    (not (rebooted comp756))
    (not (running comp755))
  )
  :effect (and
    (not (evaluate comp756))
    (evaluate comp757)
    (one-off comp756)
  )
)
(:action evaluate-comp757-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp757)
    (rebooted comp757)
  )
  :effect (and
    (not (evaluate comp757))
    (evaluate comp758)
  )
)
(:action evaluate-comp757-all-on
  :parameters ()
  :precondition (and
    (evaluate comp757)
    (not (rebooted comp757))
    (running comp756)
  )
  :effect (and
    (not (evaluate comp757))
    (evaluate comp758)
    (all-on comp757)
  )
)
(:action evaluate-comp757-off-comp756
  :parameters ()
  :precondition (and
    (evaluate comp757)
    (not (rebooted comp757))
    (not (running comp756))
  )
  :effect (and
    (not (evaluate comp757))
    (evaluate comp758)
    (one-off comp757)
  )
)
(:action evaluate-comp758-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (rebooted comp758)
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
  )
)
(:action evaluate-comp758-all-on
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (not (rebooted comp758))
    (running comp352)
    (running comp757)
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
    (all-on comp758)
  )
)
(:action evaluate-comp758-off-comp352
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (not (rebooted comp758))
    (not (running comp352))
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
    (one-off comp758)
  )
)
(:action evaluate-comp758-off-comp757
  :parameters ()
  :precondition (and
    (evaluate comp758)
    (not (rebooted comp758))
    (not (running comp757))
  )
  :effect (and
    (not (evaluate comp758))
    (evaluate comp759)
    (one-off comp758)
  )
)
(:action evaluate-comp759-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp759)
    (rebooted comp759)
  )
  :effect (and
    (not (evaluate comp759))
    (evaluate comp760)
  )
)
(:action evaluate-comp759-all-on
  :parameters ()
  :precondition (and
    (evaluate comp759)
    (not (rebooted comp759))
    (running comp758)
  )
  :effect (and
    (not (evaluate comp759))
    (evaluate comp760)
    (all-on comp759)
  )
)
(:action evaluate-comp759-off-comp758
  :parameters ()
  :precondition (and
    (evaluate comp759)
    (not (rebooted comp759))
    (not (running comp758))
  )
  :effect (and
    (not (evaluate comp759))
    (evaluate comp760)
    (one-off comp759)
  )
)
(:action evaluate-comp760-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp760)
    (rebooted comp760)
  )
  :effect (and
    (not (evaluate comp760))
    (evaluate comp761)
  )
)
(:action evaluate-comp760-all-on
  :parameters ()
  :precondition (and
    (evaluate comp760)
    (not (rebooted comp760))
    (running comp759)
    (running comp827)
  )
  :effect (and
    (not (evaluate comp760))
    (evaluate comp761)
    (all-on comp760)
  )
)
(:action evaluate-comp760-off-comp759
  :parameters ()
  :precondition (and
    (evaluate comp760)
    (not (rebooted comp760))
    (not (running comp759))
  )
  :effect (and
    (not (evaluate comp760))
    (evaluate comp761)
    (one-off comp760)
  )
)
(:action evaluate-comp760-off-comp827
  :parameters ()
  :precondition (and
    (evaluate comp760)
    (not (rebooted comp760))
    (not (running comp827))
  )
  :effect (and
    (not (evaluate comp760))
    (evaluate comp761)
    (one-off comp760)
  )
)
(:action evaluate-comp761-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (rebooted comp761)
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
  )
)
(:action evaluate-comp761-all-on
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (not (rebooted comp761))
    (running comp454)
    (running comp760)
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
    (all-on comp761)
  )
)
(:action evaluate-comp761-off-comp454
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (not (rebooted comp761))
    (not (running comp454))
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
    (one-off comp761)
  )
)
(:action evaluate-comp761-off-comp760
  :parameters ()
  :precondition (and
    (evaluate comp761)
    (not (rebooted comp761))
    (not (running comp760))
  )
  :effect (and
    (not (evaluate comp761))
    (evaluate comp762)
    (one-off comp761)
  )
)
(:action evaluate-comp762-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp762)
    (rebooted comp762)
  )
  :effect (and
    (not (evaluate comp762))
    (evaluate comp763)
  )
)
(:action evaluate-comp762-all-on
  :parameters ()
  :precondition (and
    (evaluate comp762)
    (not (rebooted comp762))
    (running comp264)
    (running comp761)
  )
  :effect (and
    (not (evaluate comp762))
    (evaluate comp763)
    (all-on comp762)
  )
)
(:action evaluate-comp762-off-comp264
  :parameters ()
  :precondition (and
    (evaluate comp762)
    (not (rebooted comp762))
    (not (running comp264))
  )
  :effect (and
    (not (evaluate comp762))
    (evaluate comp763)
    (one-off comp762)
  )
)
(:action evaluate-comp762-off-comp761
  :parameters ()
  :precondition (and
    (evaluate comp762)
    (not (rebooted comp762))
    (not (running comp761))
  )
  :effect (and
    (not (evaluate comp762))
    (evaluate comp763)
    (one-off comp762)
  )
)
(:action evaluate-comp763-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (rebooted comp763)
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
  )
)
(:action evaluate-comp763-all-on
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (not (rebooted comp763))
    (running comp72)
    (running comp762)
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
    (all-on comp763)
  )
)
(:action evaluate-comp763-off-comp72
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (not (rebooted comp763))
    (not (running comp72))
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
    (one-off comp763)
  )
)
(:action evaluate-comp763-off-comp762
  :parameters ()
  :precondition (and
    (evaluate comp763)
    (not (rebooted comp763))
    (not (running comp762))
  )
  :effect (and
    (not (evaluate comp763))
    (evaluate comp764)
    (one-off comp763)
  )
)
(:action evaluate-comp764-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp764)
    (rebooted comp764)
  )
  :effect (and
    (not (evaluate comp764))
    (evaluate comp765)
  )
)
(:action evaluate-comp764-all-on
  :parameters ()
  :precondition (and
    (evaluate comp764)
    (not (rebooted comp764))
    (running comp763)
  )
  :effect (and
    (not (evaluate comp764))
    (evaluate comp765)
    (all-on comp764)
  )
)
(:action evaluate-comp764-off-comp763
  :parameters ()
  :precondition (and
    (evaluate comp764)
    (not (rebooted comp764))
    (not (running comp763))
  )
  :effect (and
    (not (evaluate comp764))
    (evaluate comp765)
    (one-off comp764)
  )
)
(:action evaluate-comp765-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp765)
    (rebooted comp765)
  )
  :effect (and
    (not (evaluate comp765))
    (evaluate comp766)
  )
)
(:action evaluate-comp765-all-on
  :parameters ()
  :precondition (and
    (evaluate comp765)
    (not (rebooted comp765))
    (running comp132)
    (running comp764)
  )
  :effect (and
    (not (evaluate comp765))
    (evaluate comp766)
    (all-on comp765)
  )
)
(:action evaluate-comp765-off-comp132
  :parameters ()
  :precondition (and
    (evaluate comp765)
    (not (rebooted comp765))
    (not (running comp132))
  )
  :effect (and
    (not (evaluate comp765))
    (evaluate comp766)
    (one-off comp765)
  )
)
(:action evaluate-comp765-off-comp764
  :parameters ()
  :precondition (and
    (evaluate comp765)
    (not (rebooted comp765))
    (not (running comp764))
  )
  :effect (and
    (not (evaluate comp765))
    (evaluate comp766)
    (one-off comp765)
  )
)
(:action evaluate-comp766-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp766)
    (rebooted comp766)
  )
  :effect (and
    (not (evaluate comp766))
    (evaluate comp767)
  )
)
(:action evaluate-comp766-all-on
  :parameters ()
  :precondition (and
    (evaluate comp766)
    (not (rebooted comp766))
    (running comp765)
  )
  :effect (and
    (not (evaluate comp766))
    (evaluate comp767)
    (all-on comp766)
  )
)
(:action evaluate-comp766-off-comp765
  :parameters ()
  :precondition (and
    (evaluate comp766)
    (not (rebooted comp766))
    (not (running comp765))
  )
  :effect (and
    (not (evaluate comp766))
    (evaluate comp767)
    (one-off comp766)
  )
)
(:action evaluate-comp767-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (rebooted comp767)
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
  )
)
(:action evaluate-comp767-all-on
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (not (rebooted comp767))
    (running comp766)
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
    (all-on comp767)
  )
)
(:action evaluate-comp767-off-comp766
  :parameters ()
  :precondition (and
    (evaluate comp767)
    (not (rebooted comp767))
    (not (running comp766))
  )
  :effect (and
    (not (evaluate comp767))
    (evaluate comp768)
    (one-off comp767)
  )
)
(:action evaluate-comp768-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp768)
    (rebooted comp768)
  )
  :effect (and
    (not (evaluate comp768))
    (evaluate comp769)
  )
)
(:action evaluate-comp768-all-on
  :parameters ()
  :precondition (and
    (evaluate comp768)
    (not (rebooted comp768))
    (running comp767)
  )
  :effect (and
    (not (evaluate comp768))
    (evaluate comp769)
    (all-on comp768)
  )
)
(:action evaluate-comp768-off-comp767
  :parameters ()
  :precondition (and
    (evaluate comp768)
    (not (rebooted comp768))
    (not (running comp767))
  )
  :effect (and
    (not (evaluate comp768))
    (evaluate comp769)
    (one-off comp768)
  )
)
(:action evaluate-comp769-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp769)
    (rebooted comp769)
  )
  :effect (and
    (not (evaluate comp769))
    (evaluate comp770)
  )
)
(:action evaluate-comp769-all-on
  :parameters ()
  :precondition (and
    (evaluate comp769)
    (not (rebooted comp769))
    (running comp768)
  )
  :effect (and
    (not (evaluate comp769))
    (evaluate comp770)
    (all-on comp769)
  )
)
(:action evaluate-comp769-off-comp768
  :parameters ()
  :precondition (and
    (evaluate comp769)
    (not (rebooted comp769))
    (not (running comp768))
  )
  :effect (and
    (not (evaluate comp769))
    (evaluate comp770)
    (one-off comp769)
  )
)
(:action evaluate-comp770-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp770)
    (rebooted comp770)
  )
  :effect (and
    (not (evaluate comp770))
    (evaluate comp771)
  )
)
(:action evaluate-comp770-all-on
  :parameters ()
  :precondition (and
    (evaluate comp770)
    (not (rebooted comp770))
    (running comp769)
  )
  :effect (and
    (not (evaluate comp770))
    (evaluate comp771)
    (all-on comp770)
  )
)
(:action evaluate-comp770-off-comp769
  :parameters ()
  :precondition (and
    (evaluate comp770)
    (not (rebooted comp770))
    (not (running comp769))
  )
  :effect (and
    (not (evaluate comp770))
    (evaluate comp771)
    (one-off comp770)
  )
)
(:action evaluate-comp771-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp771)
    (rebooted comp771)
  )
  :effect (and
    (not (evaluate comp771))
    (evaluate comp772)
  )
)
(:action evaluate-comp771-all-on
  :parameters ()
  :precondition (and
    (evaluate comp771)
    (not (rebooted comp771))
    (running comp770)
  )
  :effect (and
    (not (evaluate comp771))
    (evaluate comp772)
    (all-on comp771)
  )
)
(:action evaluate-comp771-off-comp770
  :parameters ()
  :precondition (and
    (evaluate comp771)
    (not (rebooted comp771))
    (not (running comp770))
  )
  :effect (and
    (not (evaluate comp771))
    (evaluate comp772)
    (one-off comp771)
  )
)
(:action evaluate-comp772-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp772)
    (rebooted comp772)
  )
  :effect (and
    (not (evaluate comp772))
    (evaluate comp773)
  )
)
(:action evaluate-comp772-all-on
  :parameters ()
  :precondition (and
    (evaluate comp772)
    (not (rebooted comp772))
    (running comp771)
  )
  :effect (and
    (not (evaluate comp772))
    (evaluate comp773)
    (all-on comp772)
  )
)
(:action evaluate-comp772-off-comp771
  :parameters ()
  :precondition (and
    (evaluate comp772)
    (not (rebooted comp772))
    (not (running comp771))
  )
  :effect (and
    (not (evaluate comp772))
    (evaluate comp773)
    (one-off comp772)
  )
)
(:action evaluate-comp773-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp773)
    (rebooted comp773)
  )
  :effect (and
    (not (evaluate comp773))
    (evaluate comp774)
  )
)
(:action evaluate-comp773-all-on
  :parameters ()
  :precondition (and
    (evaluate comp773)
    (not (rebooted comp773))
    (running comp772)
  )
  :effect (and
    (not (evaluate comp773))
    (evaluate comp774)
    (all-on comp773)
  )
)
(:action evaluate-comp773-off-comp772
  :parameters ()
  :precondition (and
    (evaluate comp773)
    (not (rebooted comp773))
    (not (running comp772))
  )
  :effect (and
    (not (evaluate comp773))
    (evaluate comp774)
    (one-off comp773)
  )
)
(:action evaluate-comp774-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp774)
    (rebooted comp774)
  )
  :effect (and
    (not (evaluate comp774))
    (evaluate comp775)
  )
)
(:action evaluate-comp774-all-on
  :parameters ()
  :precondition (and
    (evaluate comp774)
    (not (rebooted comp774))
    (running comp209)
    (running comp773)
  )
  :effect (and
    (not (evaluate comp774))
    (evaluate comp775)
    (all-on comp774)
  )
)
(:action evaluate-comp774-off-comp209
  :parameters ()
  :precondition (and
    (evaluate comp774)
    (not (rebooted comp774))
    (not (running comp209))
  )
  :effect (and
    (not (evaluate comp774))
    (evaluate comp775)
    (one-off comp774)
  )
)
(:action evaluate-comp774-off-comp773
  :parameters ()
  :precondition (and
    (evaluate comp774)
    (not (rebooted comp774))
    (not (running comp773))
  )
  :effect (and
    (not (evaluate comp774))
    (evaluate comp775)
    (one-off comp774)
  )
)
(:action evaluate-comp775-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp775)
    (rebooted comp775)
  )
  :effect (and
    (not (evaluate comp775))
    (evaluate comp776)
  )
)
(:action evaluate-comp775-all-on
  :parameters ()
  :precondition (and
    (evaluate comp775)
    (not (rebooted comp775))
    (running comp774)
  )
  :effect (and
    (not (evaluate comp775))
    (evaluate comp776)
    (all-on comp775)
  )
)
(:action evaluate-comp775-off-comp774
  :parameters ()
  :precondition (and
    (evaluate comp775)
    (not (rebooted comp775))
    (not (running comp774))
  )
  :effect (and
    (not (evaluate comp775))
    (evaluate comp776)
    (one-off comp775)
  )
)
(:action evaluate-comp776-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (rebooted comp776)
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
  )
)
(:action evaluate-comp776-all-on
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (not (rebooted comp776))
    (running comp722)
    (running comp775)
    (running comp844)
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
    (all-on comp776)
  )
)
(:action evaluate-comp776-off-comp722
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (not (rebooted comp776))
    (not (running comp722))
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
    (one-off comp776)
  )
)
(:action evaluate-comp776-off-comp775
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (not (rebooted comp776))
    (not (running comp775))
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
    (one-off comp776)
  )
)
(:action evaluate-comp776-off-comp844
  :parameters ()
  :precondition (and
    (evaluate comp776)
    (not (rebooted comp776))
    (not (running comp844))
  )
  :effect (and
    (not (evaluate comp776))
    (evaluate comp777)
    (one-off comp776)
  )
)
(:action evaluate-comp777-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp777)
    (rebooted comp777)
  )
  :effect (and
    (not (evaluate comp777))
    (evaluate comp778)
  )
)
(:action evaluate-comp777-all-on
  :parameters ()
  :precondition (and
    (evaluate comp777)
    (not (rebooted comp777))
    (running comp776)
  )
  :effect (and
    (not (evaluate comp777))
    (evaluate comp778)
    (all-on comp777)
  )
)
(:action evaluate-comp777-off-comp776
  :parameters ()
  :precondition (and
    (evaluate comp777)
    (not (rebooted comp777))
    (not (running comp776))
  )
  :effect (and
    (not (evaluate comp777))
    (evaluate comp778)
    (one-off comp777)
  )
)
(:action evaluate-comp778-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp778)
    (rebooted comp778)
  )
  :effect (and
    (not (evaluate comp778))
    (evaluate comp779)
  )
)
(:action evaluate-comp778-all-on
  :parameters ()
  :precondition (and
    (evaluate comp778)
    (not (rebooted comp778))
    (running comp777)
  )
  :effect (and
    (not (evaluate comp778))
    (evaluate comp779)
    (all-on comp778)
  )
)
(:action evaluate-comp778-off-comp777
  :parameters ()
  :precondition (and
    (evaluate comp778)
    (not (rebooted comp778))
    (not (running comp777))
  )
  :effect (and
    (not (evaluate comp778))
    (evaluate comp779)
    (one-off comp778)
  )
)
(:action evaluate-comp779-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp779)
    (rebooted comp779)
  )
  :effect (and
    (not (evaluate comp779))
    (evaluate comp780)
  )
)
(:action evaluate-comp779-all-on
  :parameters ()
  :precondition (and
    (evaluate comp779)
    (not (rebooted comp779))
    (running comp778)
  )
  :effect (and
    (not (evaluate comp779))
    (evaluate comp780)
    (all-on comp779)
  )
)
(:action evaluate-comp779-off-comp778
  :parameters ()
  :precondition (and
    (evaluate comp779)
    (not (rebooted comp779))
    (not (running comp778))
  )
  :effect (and
    (not (evaluate comp779))
    (evaluate comp780)
    (one-off comp779)
  )
)
(:action evaluate-comp780-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp780)
    (rebooted comp780)
  )
  :effect (and
    (not (evaluate comp780))
    (evaluate comp781)
  )
)
(:action evaluate-comp780-all-on
  :parameters ()
  :precondition (and
    (evaluate comp780)
    (not (rebooted comp780))
    (running comp779)
  )
  :effect (and
    (not (evaluate comp780))
    (evaluate comp781)
    (all-on comp780)
  )
)
(:action evaluate-comp780-off-comp779
  :parameters ()
  :precondition (and
    (evaluate comp780)
    (not (rebooted comp780))
    (not (running comp779))
  )
  :effect (and
    (not (evaluate comp780))
    (evaluate comp781)
    (one-off comp780)
  )
)
(:action evaluate-comp781-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp781)
    (rebooted comp781)
  )
  :effect (and
    (not (evaluate comp781))
    (evaluate comp782)
  )
)
(:action evaluate-comp781-all-on
  :parameters ()
  :precondition (and
    (evaluate comp781)
    (not (rebooted comp781))
    (running comp780)
  )
  :effect (and
    (not (evaluate comp781))
    (evaluate comp782)
    (all-on comp781)
  )
)
(:action evaluate-comp781-off-comp780
  :parameters ()
  :precondition (and
    (evaluate comp781)
    (not (rebooted comp781))
    (not (running comp780))
  )
  :effect (and
    (not (evaluate comp781))
    (evaluate comp782)
    (one-off comp781)
  )
)
(:action evaluate-comp782-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp782)
    (rebooted comp782)
  )
  :effect (and
    (not (evaluate comp782))
    (evaluate comp783)
  )
)
(:action evaluate-comp782-all-on
  :parameters ()
  :precondition (and
    (evaluate comp782)
    (not (rebooted comp782))
    (running comp781)
  )
  :effect (and
    (not (evaluate comp782))
    (evaluate comp783)
    (all-on comp782)
  )
)
(:action evaluate-comp782-off-comp781
  :parameters ()
  :precondition (and
    (evaluate comp782)
    (not (rebooted comp782))
    (not (running comp781))
  )
  :effect (and
    (not (evaluate comp782))
    (evaluate comp783)
    (one-off comp782)
  )
)
(:action evaluate-comp783-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp783)
    (rebooted comp783)
  )
  :effect (and
    (not (evaluate comp783))
    (evaluate comp784)
  )
)
(:action evaluate-comp783-all-on
  :parameters ()
  :precondition (and
    (evaluate comp783)
    (not (rebooted comp783))
    (running comp782)
  )
  :effect (and
    (not (evaluate comp783))
    (evaluate comp784)
    (all-on comp783)
  )
)
(:action evaluate-comp783-off-comp782
  :parameters ()
  :precondition (and
    (evaluate comp783)
    (not (rebooted comp783))
    (not (running comp782))
  )
  :effect (and
    (not (evaluate comp783))
    (evaluate comp784)
    (one-off comp783)
  )
)
(:action evaluate-comp784-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (rebooted comp784)
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
  )
)
(:action evaluate-comp784-all-on
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (not (rebooted comp784))
    (running comp783)
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
    (all-on comp784)
  )
)
(:action evaluate-comp784-off-comp783
  :parameters ()
  :precondition (and
    (evaluate comp784)
    (not (rebooted comp784))
    (not (running comp783))
  )
  :effect (and
    (not (evaluate comp784))
    (evaluate comp785)
    (one-off comp784)
  )
)
(:action evaluate-comp785-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (rebooted comp785)
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
  )
)
(:action evaluate-comp785-all-on
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (not (rebooted comp785))
    (running comp154)
    (running comp751)
    (running comp784)
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
    (all-on comp785)
  )
)
(:action evaluate-comp785-off-comp154
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (not (rebooted comp785))
    (not (running comp154))
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
    (one-off comp785)
  )
)
(:action evaluate-comp785-off-comp751
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (not (rebooted comp785))
    (not (running comp751))
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
    (one-off comp785)
  )
)
(:action evaluate-comp785-off-comp784
  :parameters ()
  :precondition (and
    (evaluate comp785)
    (not (rebooted comp785))
    (not (running comp784))
  )
  :effect (and
    (not (evaluate comp785))
    (evaluate comp786)
    (one-off comp785)
  )
)
(:action evaluate-comp786-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp786)
    (rebooted comp786)
  )
  :effect (and
    (not (evaluate comp786))
    (evaluate comp787)
  )
)
(:action evaluate-comp786-all-on
  :parameters ()
  :precondition (and
    (evaluate comp786)
    (not (rebooted comp786))
    (running comp785)
  )
  :effect (and
    (not (evaluate comp786))
    (evaluate comp787)
    (all-on comp786)
  )
)
(:action evaluate-comp786-off-comp785
  :parameters ()
  :precondition (and
    (evaluate comp786)
    (not (rebooted comp786))
    (not (running comp785))
  )
  :effect (and
    (not (evaluate comp786))
    (evaluate comp787)
    (one-off comp786)
  )
)
(:action evaluate-comp787-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp787)
    (rebooted comp787)
  )
  :effect (and
    (not (evaluate comp787))
    (evaluate comp788)
  )
)
(:action evaluate-comp787-all-on
  :parameters ()
  :precondition (and
    (evaluate comp787)
    (not (rebooted comp787))
    (running comp181)
    (running comp786)
  )
  :effect (and
    (not (evaluate comp787))
    (evaluate comp788)
    (all-on comp787)
  )
)
(:action evaluate-comp787-off-comp181
  :parameters ()
  :precondition (and
    (evaluate comp787)
    (not (rebooted comp787))
    (not (running comp181))
  )
  :effect (and
    (not (evaluate comp787))
    (evaluate comp788)
    (one-off comp787)
  )
)
(:action evaluate-comp787-off-comp786
  :parameters ()
  :precondition (and
    (evaluate comp787)
    (not (rebooted comp787))
    (not (running comp786))
  )
  :effect (and
    (not (evaluate comp787))
    (evaluate comp788)
    (one-off comp787)
  )
)
(:action evaluate-comp788-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp788)
    (rebooted comp788)
  )
  :effect (and
    (not (evaluate comp788))
    (evaluate comp789)
  )
)
(:action evaluate-comp788-all-on
  :parameters ()
  :precondition (and
    (evaluate comp788)
    (not (rebooted comp788))
    (running comp787)
  )
  :effect (and
    (not (evaluate comp788))
    (evaluate comp789)
    (all-on comp788)
  )
)
(:action evaluate-comp788-off-comp787
  :parameters ()
  :precondition (and
    (evaluate comp788)
    (not (rebooted comp788))
    (not (running comp787))
  )
  :effect (and
    (not (evaluate comp788))
    (evaluate comp789)
    (one-off comp788)
  )
)
(:action evaluate-comp789-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (rebooted comp789)
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
  )
)
(:action evaluate-comp789-all-on
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (not (rebooted comp789))
    (running comp788)
    (running comp952)
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
    (all-on comp789)
  )
)
(:action evaluate-comp789-off-comp788
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (not (rebooted comp789))
    (not (running comp788))
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
    (one-off comp789)
  )
)
(:action evaluate-comp789-off-comp952
  :parameters ()
  :precondition (and
    (evaluate comp789)
    (not (rebooted comp789))
    (not (running comp952))
  )
  :effect (and
    (not (evaluate comp789))
    (evaluate comp790)
    (one-off comp789)
  )
)
(:action evaluate-comp790-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (rebooted comp790)
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
  )
)
(:action evaluate-comp790-all-on
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (not (rebooted comp790))
    (running comp789)
    (running comp827)
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
    (all-on comp790)
  )
)
(:action evaluate-comp790-off-comp789
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (not (rebooted comp790))
    (not (running comp789))
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
    (one-off comp790)
  )
)
(:action evaluate-comp790-off-comp827
  :parameters ()
  :precondition (and
    (evaluate comp790)
    (not (rebooted comp790))
    (not (running comp827))
  )
  :effect (and
    (not (evaluate comp790))
    (evaluate comp791)
    (one-off comp790)
  )
)
(:action evaluate-comp791-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp791)
    (rebooted comp791)
  )
  :effect (and
    (not (evaluate comp791))
    (evaluate comp792)
  )
)
(:action evaluate-comp791-all-on
  :parameters ()
  :precondition (and
    (evaluate comp791)
    (not (rebooted comp791))
    (running comp790)
  )
  :effect (and
    (not (evaluate comp791))
    (evaluate comp792)
    (all-on comp791)
  )
)
(:action evaluate-comp791-off-comp790
  :parameters ()
  :precondition (and
    (evaluate comp791)
    (not (rebooted comp791))
    (not (running comp790))
  )
  :effect (and
    (not (evaluate comp791))
    (evaluate comp792)
    (one-off comp791)
  )
)
(:action evaluate-comp792-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp792)
    (rebooted comp792)
  )
  :effect (and
    (not (evaluate comp792))
    (evaluate comp793)
  )
)
(:action evaluate-comp792-all-on
  :parameters ()
  :precondition (and
    (evaluate comp792)
    (not (rebooted comp792))
    (running comp791)
  )
  :effect (and
    (not (evaluate comp792))
    (evaluate comp793)
    (all-on comp792)
  )
)
(:action evaluate-comp792-off-comp791
  :parameters ()
  :precondition (and
    (evaluate comp792)
    (not (rebooted comp792))
    (not (running comp791))
  )
  :effect (and
    (not (evaluate comp792))
    (evaluate comp793)
    (one-off comp792)
  )
)
(:action evaluate-comp793-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (rebooted comp793)
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
  )
)
(:action evaluate-comp793-all-on
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (not (rebooted comp793))
    (running comp699)
    (running comp792)
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
    (all-on comp793)
  )
)
(:action evaluate-comp793-off-comp699
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (not (rebooted comp793))
    (not (running comp699))
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
    (one-off comp793)
  )
)
(:action evaluate-comp793-off-comp792
  :parameters ()
  :precondition (and
    (evaluate comp793)
    (not (rebooted comp793))
    (not (running comp792))
  )
  :effect (and
    (not (evaluate comp793))
    (evaluate comp794)
    (one-off comp793)
  )
)
(:action evaluate-comp794-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp794)
    (rebooted comp794)
  )
  :effect (and
    (not (evaluate comp794))
    (evaluate comp795)
  )
)
(:action evaluate-comp794-all-on
  :parameters ()
  :precondition (and
    (evaluate comp794)
    (not (rebooted comp794))
    (running comp793)
  )
  :effect (and
    (not (evaluate comp794))
    (evaluate comp795)
    (all-on comp794)
  )
)
(:action evaluate-comp794-off-comp793
  :parameters ()
  :precondition (and
    (evaluate comp794)
    (not (rebooted comp794))
    (not (running comp793))
  )
  :effect (and
    (not (evaluate comp794))
    (evaluate comp795)
    (one-off comp794)
  )
)
(:action evaluate-comp795-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (rebooted comp795)
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
  )
)
(:action evaluate-comp795-all-on
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (not (rebooted comp795))
    (running comp794)
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
    (all-on comp795)
  )
)
(:action evaluate-comp795-off-comp794
  :parameters ()
  :precondition (and
    (evaluate comp795)
    (not (rebooted comp795))
    (not (running comp794))
  )
  :effect (and
    (not (evaluate comp795))
    (evaluate comp796)
    (one-off comp795)
  )
)
(:action evaluate-comp796-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp796)
    (rebooted comp796)
  )
  :effect (and
    (not (evaluate comp796))
    (evaluate comp797)
  )
)
(:action evaluate-comp796-all-on
  :parameters ()
  :precondition (and
    (evaluate comp796)
    (not (rebooted comp796))
    (running comp795)
  )
  :effect (and
    (not (evaluate comp796))
    (evaluate comp797)
    (all-on comp796)
  )
)
(:action evaluate-comp796-off-comp795
  :parameters ()
  :precondition (and
    (evaluate comp796)
    (not (rebooted comp796))
    (not (running comp795))
  )
  :effect (and
    (not (evaluate comp796))
    (evaluate comp797)
    (one-off comp796)
  )
)
(:action evaluate-comp797-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp797)
    (rebooted comp797)
  )
  :effect (and
    (not (evaluate comp797))
    (evaluate comp798)
  )
)
(:action evaluate-comp797-all-on
  :parameters ()
  :precondition (and
    (evaluate comp797)
    (not (rebooted comp797))
    (running comp796)
  )
  :effect (and
    (not (evaluate comp797))
    (evaluate comp798)
    (all-on comp797)
  )
)
(:action evaluate-comp797-off-comp796
  :parameters ()
  :precondition (and
    (evaluate comp797)
    (not (rebooted comp797))
    (not (running comp796))
  )
  :effect (and
    (not (evaluate comp797))
    (evaluate comp798)
    (one-off comp797)
  )
)
(:action evaluate-comp798-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp798)
    (rebooted comp798)
  )
  :effect (and
    (not (evaluate comp798))
    (evaluate comp799)
  )
)
(:action evaluate-comp798-all-on
  :parameters ()
  :precondition (and
    (evaluate comp798)
    (not (rebooted comp798))
    (running comp797)
  )
  :effect (and
    (not (evaluate comp798))
    (evaluate comp799)
    (all-on comp798)
  )
)
(:action evaluate-comp798-off-comp797
  :parameters ()
  :precondition (and
    (evaluate comp798)
    (not (rebooted comp798))
    (not (running comp797))
  )
  :effect (and
    (not (evaluate comp798))
    (evaluate comp799)
    (one-off comp798)
  )
)
(:action evaluate-comp799-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp799)
    (rebooted comp799)
  )
  :effect (and
    (not (evaluate comp799))
    (evaluate comp800)
  )
)
(:action evaluate-comp799-all-on
  :parameters ()
  :precondition (and
    (evaluate comp799)
    (not (rebooted comp799))
    (running comp798)
  )
  :effect (and
    (not (evaluate comp799))
    (evaluate comp800)
    (all-on comp799)
  )
)
(:action evaluate-comp799-off-comp798
  :parameters ()
  :precondition (and
    (evaluate comp799)
    (not (rebooted comp799))
    (not (running comp798))
  )
  :effect (and
    (not (evaluate comp799))
    (evaluate comp800)
    (one-off comp799)
  )
)
(:action evaluate-comp800-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp800)
    (rebooted comp800)
  )
  :effect (and
    (not (evaluate comp800))
    (evaluate comp801)
  )
)
(:action evaluate-comp800-all-on
  :parameters ()
  :precondition (and
    (evaluate comp800)
    (not (rebooted comp800))
    (running comp799)
  )
  :effect (and
    (not (evaluate comp800))
    (evaluate comp801)
    (all-on comp800)
  )
)
(:action evaluate-comp800-off-comp799
  :parameters ()
  :precondition (and
    (evaluate comp800)
    (not (rebooted comp800))
    (not (running comp799))
  )
  :effect (and
    (not (evaluate comp800))
    (evaluate comp801)
    (one-off comp800)
  )
)
(:action evaluate-comp801-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp801)
    (rebooted comp801)
  )
  :effect (and
    (not (evaluate comp801))
    (evaluate comp802)
  )
)
(:action evaluate-comp801-all-on
  :parameters ()
  :precondition (and
    (evaluate comp801)
    (not (rebooted comp801))
    (running comp800)
  )
  :effect (and
    (not (evaluate comp801))
    (evaluate comp802)
    (all-on comp801)
  )
)
(:action evaluate-comp801-off-comp800
  :parameters ()
  :precondition (and
    (evaluate comp801)
    (not (rebooted comp801))
    (not (running comp800))
  )
  :effect (and
    (not (evaluate comp801))
    (evaluate comp802)
    (one-off comp801)
  )
)
(:action evaluate-comp802-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp802)
    (rebooted comp802)
  )
  :effect (and
    (not (evaluate comp802))
    (evaluate comp803)
  )
)
(:action evaluate-comp802-all-on
  :parameters ()
  :precondition (and
    (evaluate comp802)
    (not (rebooted comp802))
    (running comp801)
  )
  :effect (and
    (not (evaluate comp802))
    (evaluate comp803)
    (all-on comp802)
  )
)
(:action evaluate-comp802-off-comp801
  :parameters ()
  :precondition (and
    (evaluate comp802)
    (not (rebooted comp802))
    (not (running comp801))
  )
  :effect (and
    (not (evaluate comp802))
    (evaluate comp803)
    (one-off comp802)
  )
)
(:action evaluate-comp803-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp803)
    (rebooted comp803)
  )
  :effect (and
    (not (evaluate comp803))
    (evaluate comp804)
  )
)
(:action evaluate-comp803-all-on
  :parameters ()
  :precondition (and
    (evaluate comp803)
    (not (rebooted comp803))
    (running comp802)
  )
  :effect (and
    (not (evaluate comp803))
    (evaluate comp804)
    (all-on comp803)
  )
)
(:action evaluate-comp803-off-comp802
  :parameters ()
  :precondition (and
    (evaluate comp803)
    (not (rebooted comp803))
    (not (running comp802))
  )
  :effect (and
    (not (evaluate comp803))
    (evaluate comp804)
    (one-off comp803)
  )
)
(:action evaluate-comp804-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp804)
    (rebooted comp804)
  )
  :effect (and
    (not (evaluate comp804))
    (evaluate comp805)
  )
)
(:action evaluate-comp804-all-on
  :parameters ()
  :precondition (and
    (evaluate comp804)
    (not (rebooted comp804))
    (running comp803)
  )
  :effect (and
    (not (evaluate comp804))
    (evaluate comp805)
    (all-on comp804)
  )
)
(:action evaluate-comp804-off-comp803
  :parameters ()
  :precondition (and
    (evaluate comp804)
    (not (rebooted comp804))
    (not (running comp803))
  )
  :effect (and
    (not (evaluate comp804))
    (evaluate comp805)
    (one-off comp804)
  )
)
(:action evaluate-comp805-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (rebooted comp805)
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
  )
)
(:action evaluate-comp805-all-on
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (not (rebooted comp805))
    (running comp325)
    (running comp804)
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
    (all-on comp805)
  )
)
(:action evaluate-comp805-off-comp325
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (not (rebooted comp805))
    (not (running comp325))
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
    (one-off comp805)
  )
)
(:action evaluate-comp805-off-comp804
  :parameters ()
  :precondition (and
    (evaluate comp805)
    (not (rebooted comp805))
    (not (running comp804))
  )
  :effect (and
    (not (evaluate comp805))
    (evaluate comp806)
    (one-off comp805)
  )
)
(:action evaluate-comp806-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp806)
    (rebooted comp806)
  )
  :effect (and
    (not (evaluate comp806))
    (evaluate comp807)
  )
)
(:action evaluate-comp806-all-on
  :parameters ()
  :precondition (and
    (evaluate comp806)
    (not (rebooted comp806))
    (running comp805)
  )
  :effect (and
    (not (evaluate comp806))
    (evaluate comp807)
    (all-on comp806)
  )
)
(:action evaluate-comp806-off-comp805
  :parameters ()
  :precondition (and
    (evaluate comp806)
    (not (rebooted comp806))
    (not (running comp805))
  )
  :effect (and
    (not (evaluate comp806))
    (evaluate comp807)
    (one-off comp806)
  )
)
(:action evaluate-comp807-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (rebooted comp807)
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
  )
)
(:action evaluate-comp807-all-on
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (not (rebooted comp807))
    (running comp806)
    (running comp945)
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
    (all-on comp807)
  )
)
(:action evaluate-comp807-off-comp806
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (not (rebooted comp807))
    (not (running comp806))
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
    (one-off comp807)
  )
)
(:action evaluate-comp807-off-comp945
  :parameters ()
  :precondition (and
    (evaluate comp807)
    (not (rebooted comp807))
    (not (running comp945))
  )
  :effect (and
    (not (evaluate comp807))
    (evaluate comp808)
    (one-off comp807)
  )
)
(:action evaluate-comp808-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (rebooted comp808)
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
  )
)
(:action evaluate-comp808-all-on
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (not (rebooted comp808))
    (running comp92)
    (running comp807)
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
    (all-on comp808)
  )
)
(:action evaluate-comp808-off-comp92
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (not (rebooted comp808))
    (not (running comp92))
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
    (one-off comp808)
  )
)
(:action evaluate-comp808-off-comp807
  :parameters ()
  :precondition (and
    (evaluate comp808)
    (not (rebooted comp808))
    (not (running comp807))
  )
  :effect (and
    (not (evaluate comp808))
    (evaluate comp809)
    (one-off comp808)
  )
)
(:action evaluate-comp809-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (rebooted comp809)
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
  )
)
(:action evaluate-comp809-all-on
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (not (rebooted comp809))
    (running comp252)
    (running comp380)
    (running comp808)
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
    (all-on comp809)
  )
)
(:action evaluate-comp809-off-comp252
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (not (rebooted comp809))
    (not (running comp252))
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
    (one-off comp809)
  )
)
(:action evaluate-comp809-off-comp380
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (not (rebooted comp809))
    (not (running comp380))
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
    (one-off comp809)
  )
)
(:action evaluate-comp809-off-comp808
  :parameters ()
  :precondition (and
    (evaluate comp809)
    (not (rebooted comp809))
    (not (running comp808))
  )
  :effect (and
    (not (evaluate comp809))
    (evaluate comp810)
    (one-off comp809)
  )
)
(:action evaluate-comp810-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp810)
    (rebooted comp810)
  )
  :effect (and
    (not (evaluate comp810))
    (evaluate comp811)
  )
)
(:action evaluate-comp810-all-on
  :parameters ()
  :precondition (and
    (evaluate comp810)
    (not (rebooted comp810))
    (running comp316)
    (running comp809)
  )
  :effect (and
    (not (evaluate comp810))
    (evaluate comp811)
    (all-on comp810)
  )
)
(:action evaluate-comp810-off-comp316
  :parameters ()
  :precondition (and
    (evaluate comp810)
    (not (rebooted comp810))
    (not (running comp316))
  )
  :effect (and
    (not (evaluate comp810))
    (evaluate comp811)
    (one-off comp810)
  )
)
(:action evaluate-comp810-off-comp809
  :parameters ()
  :precondition (and
    (evaluate comp810)
    (not (rebooted comp810))
    (not (running comp809))
  )
  :effect (and
    (not (evaluate comp810))
    (evaluate comp811)
    (one-off comp810)
  )
)
(:action evaluate-comp811-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp811)
    (rebooted comp811)
  )
  :effect (and
    (not (evaluate comp811))
    (evaluate comp812)
  )
)
(:action evaluate-comp811-all-on
  :parameters ()
  :precondition (and
    (evaluate comp811)
    (not (rebooted comp811))
    (running comp810)
  )
  :effect (and
    (not (evaluate comp811))
    (evaluate comp812)
    (all-on comp811)
  )
)
(:action evaluate-comp811-off-comp810
  :parameters ()
  :precondition (and
    (evaluate comp811)
    (not (rebooted comp811))
    (not (running comp810))
  )
  :effect (and
    (not (evaluate comp811))
    (evaluate comp812)
    (one-off comp811)
  )
)
(:action evaluate-comp812-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp812)
    (rebooted comp812)
  )
  :effect (and
    (not (evaluate comp812))
    (evaluate comp813)
  )
)
(:action evaluate-comp812-all-on
  :parameters ()
  :precondition (and
    (evaluate comp812)
    (not (rebooted comp812))
    (running comp811)
  )
  :effect (and
    (not (evaluate comp812))
    (evaluate comp813)
    (all-on comp812)
  )
)
(:action evaluate-comp812-off-comp811
  :parameters ()
  :precondition (and
    (evaluate comp812)
    (not (rebooted comp812))
    (not (running comp811))
  )
  :effect (and
    (not (evaluate comp812))
    (evaluate comp813)
    (one-off comp812)
  )
)
(:action evaluate-comp813-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp813)
    (rebooted comp813)
  )
  :effect (and
    (not (evaluate comp813))
    (evaluate comp814)
  )
)
(:action evaluate-comp813-all-on
  :parameters ()
  :precondition (and
    (evaluate comp813)
    (not (rebooted comp813))
    (running comp781)
    (running comp812)
  )
  :effect (and
    (not (evaluate comp813))
    (evaluate comp814)
    (all-on comp813)
  )
)
(:action evaluate-comp813-off-comp781
  :parameters ()
  :precondition (and
    (evaluate comp813)
    (not (rebooted comp813))
    (not (running comp781))
  )
  :effect (and
    (not (evaluate comp813))
    (evaluate comp814)
    (one-off comp813)
  )
)
(:action evaluate-comp813-off-comp812
  :parameters ()
  :precondition (and
    (evaluate comp813)
    (not (rebooted comp813))
    (not (running comp812))
  )
  :effect (and
    (not (evaluate comp813))
    (evaluate comp814)
    (one-off comp813)
  )
)
(:action evaluate-comp814-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp814)
    (rebooted comp814)
  )
  :effect (and
    (not (evaluate comp814))
    (evaluate comp815)
  )
)
(:action evaluate-comp814-all-on
  :parameters ()
  :precondition (and
    (evaluate comp814)
    (not (rebooted comp814))
    (running comp813)
  )
  :effect (and
    (not (evaluate comp814))
    (evaluate comp815)
    (all-on comp814)
  )
)
(:action evaluate-comp814-off-comp813
  :parameters ()
  :precondition (and
    (evaluate comp814)
    (not (rebooted comp814))
    (not (running comp813))
  )
  :effect (and
    (not (evaluate comp814))
    (evaluate comp815)
    (one-off comp814)
  )
)
(:action evaluate-comp815-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp815)
    (rebooted comp815)
  )
  :effect (and
    (not (evaluate comp815))
    (evaluate comp816)
  )
)
(:action evaluate-comp815-all-on
  :parameters ()
  :precondition (and
    (evaluate comp815)
    (not (rebooted comp815))
    (running comp426)
    (running comp814)
  )
  :effect (and
    (not (evaluate comp815))
    (evaluate comp816)
    (all-on comp815)
  )
)
(:action evaluate-comp815-off-comp426
  :parameters ()
  :precondition (and
    (evaluate comp815)
    (not (rebooted comp815))
    (not (running comp426))
  )
  :effect (and
    (not (evaluate comp815))
    (evaluate comp816)
    (one-off comp815)
  )
)
(:action evaluate-comp815-off-comp814
  :parameters ()
  :precondition (and
    (evaluate comp815)
    (not (rebooted comp815))
    (not (running comp814))
  )
  :effect (and
    (not (evaluate comp815))
    (evaluate comp816)
    (one-off comp815)
  )
)
(:action evaluate-comp816-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp816)
    (rebooted comp816)
  )
  :effect (and
    (not (evaluate comp816))
    (evaluate comp817)
  )
)
(:action evaluate-comp816-all-on
  :parameters ()
  :precondition (and
    (evaluate comp816)
    (not (rebooted comp816))
    (running comp815)
  )
  :effect (and
    (not (evaluate comp816))
    (evaluate comp817)
    (all-on comp816)
  )
)
(:action evaluate-comp816-off-comp815
  :parameters ()
  :precondition (and
    (evaluate comp816)
    (not (rebooted comp816))
    (not (running comp815))
  )
  :effect (and
    (not (evaluate comp816))
    (evaluate comp817)
    (one-off comp816)
  )
)
(:action evaluate-comp817-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp817)
    (rebooted comp817)
  )
  :effect (and
    (not (evaluate comp817))
    (evaluate comp818)
  )
)
(:action evaluate-comp817-all-on
  :parameters ()
  :precondition (and
    (evaluate comp817)
    (not (rebooted comp817))
    (running comp816)
  )
  :effect (and
    (not (evaluate comp817))
    (evaluate comp818)
    (all-on comp817)
  )
)
(:action evaluate-comp817-off-comp816
  :parameters ()
  :precondition (and
    (evaluate comp817)
    (not (rebooted comp817))
    (not (running comp816))
  )
  :effect (and
    (not (evaluate comp817))
    (evaluate comp818)
    (one-off comp817)
  )
)
(:action evaluate-comp818-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (rebooted comp818)
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
  )
)
(:action evaluate-comp818-all-on
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (not (rebooted comp818))
    (running comp744)
    (running comp817)
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
    (all-on comp818)
  )
)
(:action evaluate-comp818-off-comp744
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (not (rebooted comp818))
    (not (running comp744))
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
    (one-off comp818)
  )
)
(:action evaluate-comp818-off-comp817
  :parameters ()
  :precondition (and
    (evaluate comp818)
    (not (rebooted comp818))
    (not (running comp817))
  )
  :effect (and
    (not (evaluate comp818))
    (evaluate comp819)
    (one-off comp818)
  )
)
(:action evaluate-comp819-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp819)
    (rebooted comp819)
  )
  :effect (and
    (not (evaluate comp819))
    (evaluate comp820)
  )
)
(:action evaluate-comp819-all-on
  :parameters ()
  :precondition (and
    (evaluate comp819)
    (not (rebooted comp819))
    (running comp515)
    (running comp818)
  )
  :effect (and
    (not (evaluate comp819))
    (evaluate comp820)
    (all-on comp819)
  )
)
(:action evaluate-comp819-off-comp515
  :parameters ()
  :precondition (and
    (evaluate comp819)
    (not (rebooted comp819))
    (not (running comp515))
  )
  :effect (and
    (not (evaluate comp819))
    (evaluate comp820)
    (one-off comp819)
  )
)
(:action evaluate-comp819-off-comp818
  :parameters ()
  :precondition (and
    (evaluate comp819)
    (not (rebooted comp819))
    (not (running comp818))
  )
  :effect (and
    (not (evaluate comp819))
    (evaluate comp820)
    (one-off comp819)
  )
)
(:action evaluate-comp820-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp820)
    (rebooted comp820)
  )
  :effect (and
    (not (evaluate comp820))
    (evaluate comp821)
  )
)
(:action evaluate-comp820-all-on
  :parameters ()
  :precondition (and
    (evaluate comp820)
    (not (rebooted comp820))
    (running comp819)
  )
  :effect (and
    (not (evaluate comp820))
    (evaluate comp821)
    (all-on comp820)
  )
)
(:action evaluate-comp820-off-comp819
  :parameters ()
  :precondition (and
    (evaluate comp820)
    (not (rebooted comp820))
    (not (running comp819))
  )
  :effect (and
    (not (evaluate comp820))
    (evaluate comp821)
    (one-off comp820)
  )
)
(:action evaluate-comp821-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp821)
    (rebooted comp821)
  )
  :effect (and
    (not (evaluate comp821))
    (evaluate comp822)
  )
)
(:action evaluate-comp821-all-on
  :parameters ()
  :precondition (and
    (evaluate comp821)
    (not (rebooted comp821))
    (running comp820)
  )
  :effect (and
    (not (evaluate comp821))
    (evaluate comp822)
    (all-on comp821)
  )
)
(:action evaluate-comp821-off-comp820
  :parameters ()
  :precondition (and
    (evaluate comp821)
    (not (rebooted comp821))
    (not (running comp820))
  )
  :effect (and
    (not (evaluate comp821))
    (evaluate comp822)
    (one-off comp821)
  )
)
(:action evaluate-comp822-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp822)
    (rebooted comp822)
  )
  :effect (and
    (not (evaluate comp822))
    (evaluate comp823)
  )
)
(:action evaluate-comp822-all-on
  :parameters ()
  :precondition (and
    (evaluate comp822)
    (not (rebooted comp822))
    (running comp480)
    (running comp821)
  )
  :effect (and
    (not (evaluate comp822))
    (evaluate comp823)
    (all-on comp822)
  )
)
(:action evaluate-comp822-off-comp480
  :parameters ()
  :precondition (and
    (evaluate comp822)
    (not (rebooted comp822))
    (not (running comp480))
  )
  :effect (and
    (not (evaluate comp822))
    (evaluate comp823)
    (one-off comp822)
  )
)
(:action evaluate-comp822-off-comp821
  :parameters ()
  :precondition (and
    (evaluate comp822)
    (not (rebooted comp822))
    (not (running comp821))
  )
  :effect (and
    (not (evaluate comp822))
    (evaluate comp823)
    (one-off comp822)
  )
)
(:action evaluate-comp823-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (rebooted comp823)
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
  )
)
(:action evaluate-comp823-all-on
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (running comp8)
    (running comp522)
    (running comp747)
    (running comp793)
    (running comp822)
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (all-on comp823)
  )
)
(:action evaluate-comp823-off-comp8
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (not (running comp8))
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (one-off comp823)
  )
)
(:action evaluate-comp823-off-comp522
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (not (running comp522))
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (one-off comp823)
  )
)
(:action evaluate-comp823-off-comp747
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (not (running comp747))
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (one-off comp823)
  )
)
(:action evaluate-comp823-off-comp793
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (not (running comp793))
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (one-off comp823)
  )
)
(:action evaluate-comp823-off-comp822
  :parameters ()
  :precondition (and
    (evaluate comp823)
    (not (rebooted comp823))
    (not (running comp822))
  )
  :effect (and
    (not (evaluate comp823))
    (evaluate comp824)
    (one-off comp823)
  )
)
(:action evaluate-comp824-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp824)
    (rebooted comp824)
  )
  :effect (and
    (not (evaluate comp824))
    (evaluate comp825)
  )
)
(:action evaluate-comp824-all-on
  :parameters ()
  :precondition (and
    (evaluate comp824)
    (not (rebooted comp824))
    (running comp823)
    (running comp947)
  )
  :effect (and
    (not (evaluate comp824))
    (evaluate comp825)
    (all-on comp824)
  )
)
(:action evaluate-comp824-off-comp823
  :parameters ()
  :precondition (and
    (evaluate comp824)
    (not (rebooted comp824))
    (not (running comp823))
  )
  :effect (and
    (not (evaluate comp824))
    (evaluate comp825)
    (one-off comp824)
  )
)
(:action evaluate-comp824-off-comp947
  :parameters ()
  :precondition (and
    (evaluate comp824)
    (not (rebooted comp824))
    (not (running comp947))
  )
  :effect (and
    (not (evaluate comp824))
    (evaluate comp825)
    (one-off comp824)
  )
)
(:action evaluate-comp825-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp825)
    (rebooted comp825)
  )
  :effect (and
    (not (evaluate comp825))
    (evaluate comp826)
  )
)
(:action evaluate-comp825-all-on
  :parameters ()
  :precondition (and
    (evaluate comp825)
    (not (rebooted comp825))
    (running comp824)
  )
  :effect (and
    (not (evaluate comp825))
    (evaluate comp826)
    (all-on comp825)
  )
)
(:action evaluate-comp825-off-comp824
  :parameters ()
  :precondition (and
    (evaluate comp825)
    (not (rebooted comp825))
    (not (running comp824))
  )
  :effect (and
    (not (evaluate comp825))
    (evaluate comp826)
    (one-off comp825)
  )
)
(:action evaluate-comp826-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp826)
    (rebooted comp826)
  )
  :effect (and
    (not (evaluate comp826))
    (evaluate comp827)
  )
)
(:action evaluate-comp826-all-on
  :parameters ()
  :precondition (and
    (evaluate comp826)
    (not (rebooted comp826))
    (running comp825)
  )
  :effect (and
    (not (evaluate comp826))
    (evaluate comp827)
    (all-on comp826)
  )
)
(:action evaluate-comp826-off-comp825
  :parameters ()
  :precondition (and
    (evaluate comp826)
    (not (rebooted comp826))
    (not (running comp825))
  )
  :effect (and
    (not (evaluate comp826))
    (evaluate comp827)
    (one-off comp826)
  )
)
(:action evaluate-comp827-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp827)
    (rebooted comp827)
  )
  :effect (and
    (not (evaluate comp827))
    (evaluate comp828)
  )
)
(:action evaluate-comp827-all-on
  :parameters ()
  :precondition (and
    (evaluate comp827)
    (not (rebooted comp827))
    (running comp826)
  )
  :effect (and
    (not (evaluate comp827))
    (evaluate comp828)
    (all-on comp827)
  )
)
(:action evaluate-comp827-off-comp826
  :parameters ()
  :precondition (and
    (evaluate comp827)
    (not (rebooted comp827))
    (not (running comp826))
  )
  :effect (and
    (not (evaluate comp827))
    (evaluate comp828)
    (one-off comp827)
  )
)
(:action evaluate-comp828-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp828)
    (rebooted comp828)
  )
  :effect (and
    (not (evaluate comp828))
    (evaluate comp829)
  )
)
(:action evaluate-comp828-all-on
  :parameters ()
  :precondition (and
    (evaluate comp828)
    (not (rebooted comp828))
    (running comp379)
    (running comp827)
  )
  :effect (and
    (not (evaluate comp828))
    (evaluate comp829)
    (all-on comp828)
  )
)
(:action evaluate-comp828-off-comp379
  :parameters ()
  :precondition (and
    (evaluate comp828)
    (not (rebooted comp828))
    (not (running comp379))
  )
  :effect (and
    (not (evaluate comp828))
    (evaluate comp829)
    (one-off comp828)
  )
)
(:action evaluate-comp828-off-comp827
  :parameters ()
  :precondition (and
    (evaluate comp828)
    (not (rebooted comp828))
    (not (running comp827))
  )
  :effect (and
    (not (evaluate comp828))
    (evaluate comp829)
    (one-off comp828)
  )
)
(:action evaluate-comp829-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (rebooted comp829)
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
  )
)
(:action evaluate-comp829-all-on
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (not (rebooted comp829))
    (running comp466)
    (running comp828)
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
    (all-on comp829)
  )
)
(:action evaluate-comp829-off-comp466
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (not (rebooted comp829))
    (not (running comp466))
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
    (one-off comp829)
  )
)
(:action evaluate-comp829-off-comp828
  :parameters ()
  :precondition (and
    (evaluate comp829)
    (not (rebooted comp829))
    (not (running comp828))
  )
  :effect (and
    (not (evaluate comp829))
    (evaluate comp830)
    (one-off comp829)
  )
)
(:action evaluate-comp830-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp830)
    (rebooted comp830)
  )
  :effect (and
    (not (evaluate comp830))
    (evaluate comp831)
  )
)
(:action evaluate-comp830-all-on
  :parameters ()
  :precondition (and
    (evaluate comp830)
    (not (rebooted comp830))
    (running comp496)
    (running comp829)
  )
  :effect (and
    (not (evaluate comp830))
    (evaluate comp831)
    (all-on comp830)
  )
)
(:action evaluate-comp830-off-comp496
  :parameters ()
  :precondition (and
    (evaluate comp830)
    (not (rebooted comp830))
    (not (running comp496))
  )
  :effect (and
    (not (evaluate comp830))
    (evaluate comp831)
    (one-off comp830)
  )
)
(:action evaluate-comp830-off-comp829
  :parameters ()
  :precondition (and
    (evaluate comp830)
    (not (rebooted comp830))
    (not (running comp829))
  )
  :effect (and
    (not (evaluate comp830))
    (evaluate comp831)
    (one-off comp830)
  )
)
(:action evaluate-comp831-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp831)
    (rebooted comp831)
  )
  :effect (and
    (not (evaluate comp831))
    (evaluate comp832)
  )
)
(:action evaluate-comp831-all-on
  :parameters ()
  :precondition (and
    (evaluate comp831)
    (not (rebooted comp831))
    (running comp830)
  )
  :effect (and
    (not (evaluate comp831))
    (evaluate comp832)
    (all-on comp831)
  )
)
(:action evaluate-comp831-off-comp830
  :parameters ()
  :precondition (and
    (evaluate comp831)
    (not (rebooted comp831))
    (not (running comp830))
  )
  :effect (and
    (not (evaluate comp831))
    (evaluate comp832)
    (one-off comp831)
  )
)
(:action evaluate-comp832-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp832)
    (rebooted comp832)
  )
  :effect (and
    (not (evaluate comp832))
    (evaluate comp833)
  )
)
(:action evaluate-comp832-all-on
  :parameters ()
  :precondition (and
    (evaluate comp832)
    (not (rebooted comp832))
    (running comp831)
  )
  :effect (and
    (not (evaluate comp832))
    (evaluate comp833)
    (all-on comp832)
  )
)
(:action evaluate-comp832-off-comp831
  :parameters ()
  :precondition (and
    (evaluate comp832)
    (not (rebooted comp832))
    (not (running comp831))
  )
  :effect (and
    (not (evaluate comp832))
    (evaluate comp833)
    (one-off comp832)
  )
)
(:action evaluate-comp833-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp833)
    (rebooted comp833)
  )
  :effect (and
    (not (evaluate comp833))
    (evaluate comp834)
  )
)
(:action evaluate-comp833-all-on
  :parameters ()
  :precondition (and
    (evaluate comp833)
    (not (rebooted comp833))
    (running comp832)
  )
  :effect (and
    (not (evaluate comp833))
    (evaluate comp834)
    (all-on comp833)
  )
)
(:action evaluate-comp833-off-comp832
  :parameters ()
  :precondition (and
    (evaluate comp833)
    (not (rebooted comp833))
    (not (running comp832))
  )
  :effect (and
    (not (evaluate comp833))
    (evaluate comp834)
    (one-off comp833)
  )
)
(:action evaluate-comp834-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp834)
    (rebooted comp834)
  )
  :effect (and
    (not (evaluate comp834))
    (evaluate comp835)
  )
)
(:action evaluate-comp834-all-on
  :parameters ()
  :precondition (and
    (evaluate comp834)
    (not (rebooted comp834))
    (running comp833)
  )
  :effect (and
    (not (evaluate comp834))
    (evaluate comp835)
    (all-on comp834)
  )
)
(:action evaluate-comp834-off-comp833
  :parameters ()
  :precondition (and
    (evaluate comp834)
    (not (rebooted comp834))
    (not (running comp833))
  )
  :effect (and
    (not (evaluate comp834))
    (evaluate comp835)
    (one-off comp834)
  )
)
(:action evaluate-comp835-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (rebooted comp835)
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
  )
)
(:action evaluate-comp835-all-on
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (not (rebooted comp835))
    (running comp371)
    (running comp669)
    (running comp834)
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
    (all-on comp835)
  )
)
(:action evaluate-comp835-off-comp371
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (not (rebooted comp835))
    (not (running comp371))
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
    (one-off comp835)
  )
)
(:action evaluate-comp835-off-comp669
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (not (rebooted comp835))
    (not (running comp669))
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
    (one-off comp835)
  )
)
(:action evaluate-comp835-off-comp834
  :parameters ()
  :precondition (and
    (evaluate comp835)
    (not (rebooted comp835))
    (not (running comp834))
  )
  :effect (and
    (not (evaluate comp835))
    (evaluate comp836)
    (one-off comp835)
  )
)
(:action evaluate-comp836-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp836)
    (rebooted comp836)
  )
  :effect (and
    (not (evaluate comp836))
    (evaluate comp837)
  )
)
(:action evaluate-comp836-all-on
  :parameters ()
  :precondition (and
    (evaluate comp836)
    (not (rebooted comp836))
    (running comp835)
  )
  :effect (and
    (not (evaluate comp836))
    (evaluate comp837)
    (all-on comp836)
  )
)
(:action evaluate-comp836-off-comp835
  :parameters ()
  :precondition (and
    (evaluate comp836)
    (not (rebooted comp836))
    (not (running comp835))
  )
  :effect (and
    (not (evaluate comp836))
    (evaluate comp837)
    (one-off comp836)
  )
)
(:action evaluate-comp837-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp837)
    (rebooted comp837)
  )
  :effect (and
    (not (evaluate comp837))
    (evaluate comp838)
  )
)
(:action evaluate-comp837-all-on
  :parameters ()
  :precondition (and
    (evaluate comp837)
    (not (rebooted comp837))
    (running comp836)
  )
  :effect (and
    (not (evaluate comp837))
    (evaluate comp838)
    (all-on comp837)
  )
)
(:action evaluate-comp837-off-comp836
  :parameters ()
  :precondition (and
    (evaluate comp837)
    (not (rebooted comp837))
    (not (running comp836))
  )
  :effect (and
    (not (evaluate comp837))
    (evaluate comp838)
    (one-off comp837)
  )
)
(:action evaluate-comp838-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp838)
    (rebooted comp838)
  )
  :effect (and
    (not (evaluate comp838))
    (evaluate comp839)
  )
)
(:action evaluate-comp838-all-on
  :parameters ()
  :precondition (and
    (evaluate comp838)
    (not (rebooted comp838))
    (running comp837)
  )
  :effect (and
    (not (evaluate comp838))
    (evaluate comp839)
    (all-on comp838)
  )
)
(:action evaluate-comp838-off-comp837
  :parameters ()
  :precondition (and
    (evaluate comp838)
    (not (rebooted comp838))
    (not (running comp837))
  )
  :effect (and
    (not (evaluate comp838))
    (evaluate comp839)
    (one-off comp838)
  )
)
(:action evaluate-comp839-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp839)
    (rebooted comp839)
  )
  :effect (and
    (not (evaluate comp839))
    (evaluate comp840)
  )
)
(:action evaluate-comp839-all-on
  :parameters ()
  :precondition (and
    (evaluate comp839)
    (not (rebooted comp839))
    (running comp838)
  )
  :effect (and
    (not (evaluate comp839))
    (evaluate comp840)
    (all-on comp839)
  )
)
(:action evaluate-comp839-off-comp838
  :parameters ()
  :precondition (and
    (evaluate comp839)
    (not (rebooted comp839))
    (not (running comp838))
  )
  :effect (and
    (not (evaluate comp839))
    (evaluate comp840)
    (one-off comp839)
  )
)
(:action evaluate-comp840-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp840)
    (rebooted comp840)
  )
  :effect (and
    (not (evaluate comp840))
    (evaluate comp841)
  )
)
(:action evaluate-comp840-all-on
  :parameters ()
  :precondition (and
    (evaluate comp840)
    (not (rebooted comp840))
    (running comp839)
    (running comp952)
  )
  :effect (and
    (not (evaluate comp840))
    (evaluate comp841)
    (all-on comp840)
  )
)
(:action evaluate-comp840-off-comp839
  :parameters ()
  :precondition (and
    (evaluate comp840)
    (not (rebooted comp840))
    (not (running comp839))
  )
  :effect (and
    (not (evaluate comp840))
    (evaluate comp841)
    (one-off comp840)
  )
)
(:action evaluate-comp840-off-comp952
  :parameters ()
  :precondition (and
    (evaluate comp840)
    (not (rebooted comp840))
    (not (running comp952))
  )
  :effect (and
    (not (evaluate comp840))
    (evaluate comp841)
    (one-off comp840)
  )
)
(:action evaluate-comp841-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp841)
    (rebooted comp841)
  )
  :effect (and
    (not (evaluate comp841))
    (evaluate comp842)
  )
)
(:action evaluate-comp841-all-on
  :parameters ()
  :precondition (and
    (evaluate comp841)
    (not (rebooted comp841))
    (running comp840)
  )
  :effect (and
    (not (evaluate comp841))
    (evaluate comp842)
    (all-on comp841)
  )
)
(:action evaluate-comp841-off-comp840
  :parameters ()
  :precondition (and
    (evaluate comp841)
    (not (rebooted comp841))
    (not (running comp840))
  )
  :effect (and
    (not (evaluate comp841))
    (evaluate comp842)
    (one-off comp841)
  )
)
(:action evaluate-comp842-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp842)
    (rebooted comp842)
  )
  :effect (and
    (not (evaluate comp842))
    (evaluate comp843)
  )
)
(:action evaluate-comp842-all-on
  :parameters ()
  :precondition (and
    (evaluate comp842)
    (not (rebooted comp842))
    (running comp841)
  )
  :effect (and
    (not (evaluate comp842))
    (evaluate comp843)
    (all-on comp842)
  )
)
(:action evaluate-comp842-off-comp841
  :parameters ()
  :precondition (and
    (evaluate comp842)
    (not (rebooted comp842))
    (not (running comp841))
  )
  :effect (and
    (not (evaluate comp842))
    (evaluate comp843)
    (one-off comp842)
  )
)
(:action evaluate-comp843-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp843)
    (rebooted comp843)
  )
  :effect (and
    (not (evaluate comp843))
    (evaluate comp844)
  )
)
(:action evaluate-comp843-all-on
  :parameters ()
  :precondition (and
    (evaluate comp843)
    (not (rebooted comp843))
    (running comp842)
  )
  :effect (and
    (not (evaluate comp843))
    (evaluate comp844)
    (all-on comp843)
  )
)
(:action evaluate-comp843-off-comp842
  :parameters ()
  :precondition (and
    (evaluate comp843)
    (not (rebooted comp843))
    (not (running comp842))
  )
  :effect (and
    (not (evaluate comp843))
    (evaluate comp844)
    (one-off comp843)
  )
)
(:action evaluate-comp844-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp844)
    (rebooted comp844)
  )
  :effect (and
    (not (evaluate comp844))
    (evaluate comp845)
  )
)
(:action evaluate-comp844-all-on
  :parameters ()
  :precondition (and
    (evaluate comp844)
    (not (rebooted comp844))
    (running comp843)
  )
  :effect (and
    (not (evaluate comp844))
    (evaluate comp845)
    (all-on comp844)
  )
)
(:action evaluate-comp844-off-comp843
  :parameters ()
  :precondition (and
    (evaluate comp844)
    (not (rebooted comp844))
    (not (running comp843))
  )
  :effect (and
    (not (evaluate comp844))
    (evaluate comp845)
    (one-off comp844)
  )
)
(:action evaluate-comp845-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp845)
    (rebooted comp845)
  )
  :effect (and
    (not (evaluate comp845))
    (evaluate comp846)
  )
)
(:action evaluate-comp845-all-on
  :parameters ()
  :precondition (and
    (evaluate comp845)
    (not (rebooted comp845))
    (running comp844)
  )
  :effect (and
    (not (evaluate comp845))
    (evaluate comp846)
    (all-on comp845)
  )
)
(:action evaluate-comp845-off-comp844
  :parameters ()
  :precondition (and
    (evaluate comp845)
    (not (rebooted comp845))
    (not (running comp844))
  )
  :effect (and
    (not (evaluate comp845))
    (evaluate comp846)
    (one-off comp845)
  )
)
(:action evaluate-comp846-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (rebooted comp846)
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
  )
)
(:action evaluate-comp846-all-on
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (not (rebooted comp846))
    (running comp246)
    (running comp646)
    (running comp845)
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
    (all-on comp846)
  )
)
(:action evaluate-comp846-off-comp246
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (not (rebooted comp846))
    (not (running comp246))
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
    (one-off comp846)
  )
)
(:action evaluate-comp846-off-comp646
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (not (rebooted comp846))
    (not (running comp646))
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
    (one-off comp846)
  )
)
(:action evaluate-comp846-off-comp845
  :parameters ()
  :precondition (and
    (evaluate comp846)
    (not (rebooted comp846))
    (not (running comp845))
  )
  :effect (and
    (not (evaluate comp846))
    (evaluate comp847)
    (one-off comp846)
  )
)
(:action evaluate-comp847-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp847)
    (rebooted comp847)
  )
  :effect (and
    (not (evaluate comp847))
    (evaluate comp848)
  )
)
(:action evaluate-comp847-all-on
  :parameters ()
  :precondition (and
    (evaluate comp847)
    (not (rebooted comp847))
    (running comp455)
    (running comp846)
  )
  :effect (and
    (not (evaluate comp847))
    (evaluate comp848)
    (all-on comp847)
  )
)
(:action evaluate-comp847-off-comp455
  :parameters ()
  :precondition (and
    (evaluate comp847)
    (not (rebooted comp847))
    (not (running comp455))
  )
  :effect (and
    (not (evaluate comp847))
    (evaluate comp848)
    (one-off comp847)
  )
)
(:action evaluate-comp847-off-comp846
  :parameters ()
  :precondition (and
    (evaluate comp847)
    (not (rebooted comp847))
    (not (running comp846))
  )
  :effect (and
    (not (evaluate comp847))
    (evaluate comp848)
    (one-off comp847)
  )
)
(:action evaluate-comp848-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (rebooted comp848)
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
  )
)
(:action evaluate-comp848-all-on
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (not (rebooted comp848))
    (running comp847)
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
    (all-on comp848)
  )
)
(:action evaluate-comp848-off-comp847
  :parameters ()
  :precondition (and
    (evaluate comp848)
    (not (rebooted comp848))
    (not (running comp847))
  )
  :effect (and
    (not (evaluate comp848))
    (evaluate comp849)
    (one-off comp848)
  )
)
(:action evaluate-comp849-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (rebooted comp849)
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
  )
)
(:action evaluate-comp849-all-on
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (not (rebooted comp849))
    (running comp435)
    (running comp848)
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
    (all-on comp849)
  )
)
(:action evaluate-comp849-off-comp435
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (not (rebooted comp849))
    (not (running comp435))
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
    (one-off comp849)
  )
)
(:action evaluate-comp849-off-comp848
  :parameters ()
  :precondition (and
    (evaluate comp849)
    (not (rebooted comp849))
    (not (running comp848))
  )
  :effect (and
    (not (evaluate comp849))
    (evaluate comp850)
    (one-off comp849)
  )
)
(:action evaluate-comp850-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp850)
    (rebooted comp850)
  )
  :effect (and
    (not (evaluate comp850))
    (evaluate comp851)
  )
)
(:action evaluate-comp850-all-on
  :parameters ()
  :precondition (and
    (evaluate comp850)
    (not (rebooted comp850))
    (running comp849)
  )
  :effect (and
    (not (evaluate comp850))
    (evaluate comp851)
    (all-on comp850)
  )
)
(:action evaluate-comp850-off-comp849
  :parameters ()
  :precondition (and
    (evaluate comp850)
    (not (rebooted comp850))
    (not (running comp849))
  )
  :effect (and
    (not (evaluate comp850))
    (evaluate comp851)
    (one-off comp850)
  )
)
(:action evaluate-comp851-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp851)
    (rebooted comp851)
  )
  :effect (and
    (not (evaluate comp851))
    (evaluate comp852)
  )
)
(:action evaluate-comp851-all-on
  :parameters ()
  :precondition (and
    (evaluate comp851)
    (not (rebooted comp851))
    (running comp850)
  )
  :effect (and
    (not (evaluate comp851))
    (evaluate comp852)
    (all-on comp851)
  )
)
(:action evaluate-comp851-off-comp850
  :parameters ()
  :precondition (and
    (evaluate comp851)
    (not (rebooted comp851))
    (not (running comp850))
  )
  :effect (and
    (not (evaluate comp851))
    (evaluate comp852)
    (one-off comp851)
  )
)
(:action evaluate-comp852-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (rebooted comp852)
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
  )
)
(:action evaluate-comp852-all-on
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (not (rebooted comp852))
    (running comp299)
    (running comp851)
    (running comp935)
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
    (all-on comp852)
  )
)
(:action evaluate-comp852-off-comp299
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (not (rebooted comp852))
    (not (running comp299))
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
    (one-off comp852)
  )
)
(:action evaluate-comp852-off-comp851
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (not (rebooted comp852))
    (not (running comp851))
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
    (one-off comp852)
  )
)
(:action evaluate-comp852-off-comp935
  :parameters ()
  :precondition (and
    (evaluate comp852)
    (not (rebooted comp852))
    (not (running comp935))
  )
  :effect (and
    (not (evaluate comp852))
    (evaluate comp853)
    (one-off comp852)
  )
)
(:action evaluate-comp853-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp853)
    (rebooted comp853)
  )
  :effect (and
    (not (evaluate comp853))
    (evaluate comp854)
  )
)
(:action evaluate-comp853-all-on
  :parameters ()
  :precondition (and
    (evaluate comp853)
    (not (rebooted comp853))
    (running comp852)
  )
  :effect (and
    (not (evaluate comp853))
    (evaluate comp854)
    (all-on comp853)
  )
)
(:action evaluate-comp853-off-comp852
  :parameters ()
  :precondition (and
    (evaluate comp853)
    (not (rebooted comp853))
    (not (running comp852))
  )
  :effect (and
    (not (evaluate comp853))
    (evaluate comp854)
    (one-off comp853)
  )
)
(:action evaluate-comp854-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp854)
    (rebooted comp854)
  )
  :effect (and
    (not (evaluate comp854))
    (evaluate comp855)
  )
)
(:action evaluate-comp854-all-on
  :parameters ()
  :precondition (and
    (evaluate comp854)
    (not (rebooted comp854))
    (running comp853)
  )
  :effect (and
    (not (evaluate comp854))
    (evaluate comp855)
    (all-on comp854)
  )
)
(:action evaluate-comp854-off-comp853
  :parameters ()
  :precondition (and
    (evaluate comp854)
    (not (rebooted comp854))
    (not (running comp853))
  )
  :effect (and
    (not (evaluate comp854))
    (evaluate comp855)
    (one-off comp854)
  )
)
(:action evaluate-comp855-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp855)
    (rebooted comp855)
  )
  :effect (and
    (not (evaluate comp855))
    (evaluate comp856)
  )
)
(:action evaluate-comp855-all-on
  :parameters ()
  :precondition (and
    (evaluate comp855)
    (not (rebooted comp855))
    (running comp854)
  )
  :effect (and
    (not (evaluate comp855))
    (evaluate comp856)
    (all-on comp855)
  )
)
(:action evaluate-comp855-off-comp854
  :parameters ()
  :precondition (and
    (evaluate comp855)
    (not (rebooted comp855))
    (not (running comp854))
  )
  :effect (and
    (not (evaluate comp855))
    (evaluate comp856)
    (one-off comp855)
  )
)
(:action evaluate-comp856-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp856)
    (rebooted comp856)
  )
  :effect (and
    (not (evaluate comp856))
    (evaluate comp857)
  )
)
(:action evaluate-comp856-all-on
  :parameters ()
  :precondition (and
    (evaluate comp856)
    (not (rebooted comp856))
    (running comp855)
  )
  :effect (and
    (not (evaluate comp856))
    (evaluate comp857)
    (all-on comp856)
  )
)
(:action evaluate-comp856-off-comp855
  :parameters ()
  :precondition (and
    (evaluate comp856)
    (not (rebooted comp856))
    (not (running comp855))
  )
  :effect (and
    (not (evaluate comp856))
    (evaluate comp857)
    (one-off comp856)
  )
)
(:action evaluate-comp857-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp857)
    (rebooted comp857)
  )
  :effect (and
    (not (evaluate comp857))
    (evaluate comp858)
  )
)
(:action evaluate-comp857-all-on
  :parameters ()
  :precondition (and
    (evaluate comp857)
    (not (rebooted comp857))
    (running comp821)
    (running comp856)
  )
  :effect (and
    (not (evaluate comp857))
    (evaluate comp858)
    (all-on comp857)
  )
)
(:action evaluate-comp857-off-comp821
  :parameters ()
  :precondition (and
    (evaluate comp857)
    (not (rebooted comp857))
    (not (running comp821))
  )
  :effect (and
    (not (evaluate comp857))
    (evaluate comp858)
    (one-off comp857)
  )
)
(:action evaluate-comp857-off-comp856
  :parameters ()
  :precondition (and
    (evaluate comp857)
    (not (rebooted comp857))
    (not (running comp856))
  )
  :effect (and
    (not (evaluate comp857))
    (evaluate comp858)
    (one-off comp857)
  )
)
(:action evaluate-comp858-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp858)
    (rebooted comp858)
  )
  :effect (and
    (not (evaluate comp858))
    (evaluate comp859)
  )
)
(:action evaluate-comp858-all-on
  :parameters ()
  :precondition (and
    (evaluate comp858)
    (not (rebooted comp858))
    (running comp857)
  )
  :effect (and
    (not (evaluate comp858))
    (evaluate comp859)
    (all-on comp858)
  )
)
(:action evaluate-comp858-off-comp857
  :parameters ()
  :precondition (and
    (evaluate comp858)
    (not (rebooted comp858))
    (not (running comp857))
  )
  :effect (and
    (not (evaluate comp858))
    (evaluate comp859)
    (one-off comp858)
  )
)
(:action evaluate-comp859-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp859)
    (rebooted comp859)
  )
  :effect (and
    (not (evaluate comp859))
    (evaluate comp860)
  )
)
(:action evaluate-comp859-all-on
  :parameters ()
  :precondition (and
    (evaluate comp859)
    (not (rebooted comp859))
    (running comp858)
  )
  :effect (and
    (not (evaluate comp859))
    (evaluate comp860)
    (all-on comp859)
  )
)
(:action evaluate-comp859-off-comp858
  :parameters ()
  :precondition (and
    (evaluate comp859)
    (not (rebooted comp859))
    (not (running comp858))
  )
  :effect (and
    (not (evaluate comp859))
    (evaluate comp860)
    (one-off comp859)
  )
)
(:action evaluate-comp860-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp860)
    (rebooted comp860)
  )
  :effect (and
    (not (evaluate comp860))
    (evaluate comp861)
  )
)
(:action evaluate-comp860-all-on
  :parameters ()
  :precondition (and
    (evaluate comp860)
    (not (rebooted comp860))
    (running comp859)
  )
  :effect (and
    (not (evaluate comp860))
    (evaluate comp861)
    (all-on comp860)
  )
)
(:action evaluate-comp860-off-comp859
  :parameters ()
  :precondition (and
    (evaluate comp860)
    (not (rebooted comp860))
    (not (running comp859))
  )
  :effect (and
    (not (evaluate comp860))
    (evaluate comp861)
    (one-off comp860)
  )
)
(:action evaluate-comp861-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (rebooted comp861)
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
  )
)
(:action evaluate-comp861-all-on
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (not (rebooted comp861))
    (running comp860)
    (running comp877)
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
    (all-on comp861)
  )
)
(:action evaluate-comp861-off-comp860
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (not (rebooted comp861))
    (not (running comp860))
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
    (one-off comp861)
  )
)
(:action evaluate-comp861-off-comp877
  :parameters ()
  :precondition (and
    (evaluate comp861)
    (not (rebooted comp861))
    (not (running comp877))
  )
  :effect (and
    (not (evaluate comp861))
    (evaluate comp862)
    (one-off comp861)
  )
)
(:action evaluate-comp862-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp862)
    (rebooted comp862)
  )
  :effect (and
    (not (evaluate comp862))
    (evaluate comp863)
  )
)
(:action evaluate-comp862-all-on
  :parameters ()
  :precondition (and
    (evaluate comp862)
    (not (rebooted comp862))
    (running comp861)
  )
  :effect (and
    (not (evaluate comp862))
    (evaluate comp863)
    (all-on comp862)
  )
)
(:action evaluate-comp862-off-comp861
  :parameters ()
  :precondition (and
    (evaluate comp862)
    (not (rebooted comp862))
    (not (running comp861))
  )
  :effect (and
    (not (evaluate comp862))
    (evaluate comp863)
    (one-off comp862)
  )
)
(:action evaluate-comp863-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (rebooted comp863)
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
  )
)
(:action evaluate-comp863-all-on
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (not (rebooted comp863))
    (running comp45)
    (running comp862)
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
    (all-on comp863)
  )
)
(:action evaluate-comp863-off-comp45
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (not (rebooted comp863))
    (not (running comp45))
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
    (one-off comp863)
  )
)
(:action evaluate-comp863-off-comp862
  :parameters ()
  :precondition (and
    (evaluate comp863)
    (not (rebooted comp863))
    (not (running comp862))
  )
  :effect (and
    (not (evaluate comp863))
    (evaluate comp864)
    (one-off comp863)
  )
)
(:action evaluate-comp864-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp864)
    (rebooted comp864)
  )
  :effect (and
    (not (evaluate comp864))
    (evaluate comp865)
  )
)
(:action evaluate-comp864-all-on
  :parameters ()
  :precondition (and
    (evaluate comp864)
    (not (rebooted comp864))
    (running comp863)
  )
  :effect (and
    (not (evaluate comp864))
    (evaluate comp865)
    (all-on comp864)
  )
)
(:action evaluate-comp864-off-comp863
  :parameters ()
  :precondition (and
    (evaluate comp864)
    (not (rebooted comp864))
    (not (running comp863))
  )
  :effect (and
    (not (evaluate comp864))
    (evaluate comp865)
    (one-off comp864)
  )
)
(:action evaluate-comp865-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp865)
    (rebooted comp865)
  )
  :effect (and
    (not (evaluate comp865))
    (evaluate comp866)
  )
)
(:action evaluate-comp865-all-on
  :parameters ()
  :precondition (and
    (evaluate comp865)
    (not (rebooted comp865))
    (running comp46)
    (running comp864)
  )
  :effect (and
    (not (evaluate comp865))
    (evaluate comp866)
    (all-on comp865)
  )
)
(:action evaluate-comp865-off-comp46
  :parameters ()
  :precondition (and
    (evaluate comp865)
    (not (rebooted comp865))
    (not (running comp46))
  )
  :effect (and
    (not (evaluate comp865))
    (evaluate comp866)
    (one-off comp865)
  )
)
(:action evaluate-comp865-off-comp864
  :parameters ()
  :precondition (and
    (evaluate comp865)
    (not (rebooted comp865))
    (not (running comp864))
  )
  :effect (and
    (not (evaluate comp865))
    (evaluate comp866)
    (one-off comp865)
  )
)
(:action evaluate-comp866-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (rebooted comp866)
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
  )
)
(:action evaluate-comp866-all-on
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (not (rebooted comp866))
    (running comp852)
    (running comp865)
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
    (all-on comp866)
  )
)
(:action evaluate-comp866-off-comp852
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (not (rebooted comp866))
    (not (running comp852))
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
    (one-off comp866)
  )
)
(:action evaluate-comp866-off-comp865
  :parameters ()
  :precondition (and
    (evaluate comp866)
    (not (rebooted comp866))
    (not (running comp865))
  )
  :effect (and
    (not (evaluate comp866))
    (evaluate comp867)
    (one-off comp866)
  )
)
(:action evaluate-comp867-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (rebooted comp867)
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
  )
)
(:action evaluate-comp867-all-on
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (not (rebooted comp867))
    (running comp866)
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
    (all-on comp867)
  )
)
(:action evaluate-comp867-off-comp866
  :parameters ()
  :precondition (and
    (evaluate comp867)
    (not (rebooted comp867))
    (not (running comp866))
  )
  :effect (and
    (not (evaluate comp867))
    (evaluate comp868)
    (one-off comp867)
  )
)
(:action evaluate-comp868-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp868)
    (rebooted comp868)
  )
  :effect (and
    (not (evaluate comp868))
    (evaluate comp869)
  )
)
(:action evaluate-comp868-all-on
  :parameters ()
  :precondition (and
    (evaluate comp868)
    (not (rebooted comp868))
    (running comp867)
  )
  :effect (and
    (not (evaluate comp868))
    (evaluate comp869)
    (all-on comp868)
  )
)
(:action evaluate-comp868-off-comp867
  :parameters ()
  :precondition (and
    (evaluate comp868)
    (not (rebooted comp868))
    (not (running comp867))
  )
  :effect (and
    (not (evaluate comp868))
    (evaluate comp869)
    (one-off comp868)
  )
)
(:action evaluate-comp869-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp869)
    (rebooted comp869)
  )
  :effect (and
    (not (evaluate comp869))
    (evaluate comp870)
  )
)
(:action evaluate-comp869-all-on
  :parameters ()
  :precondition (and
    (evaluate comp869)
    (not (rebooted comp869))
    (running comp868)
  )
  :effect (and
    (not (evaluate comp869))
    (evaluate comp870)
    (all-on comp869)
  )
)
(:action evaluate-comp869-off-comp868
  :parameters ()
  :precondition (and
    (evaluate comp869)
    (not (rebooted comp869))
    (not (running comp868))
  )
  :effect (and
    (not (evaluate comp869))
    (evaluate comp870)
    (one-off comp869)
  )
)
(:action evaluate-comp870-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp870)
    (rebooted comp870)
  )
  :effect (and
    (not (evaluate comp870))
    (evaluate comp871)
  )
)
(:action evaluate-comp870-all-on
  :parameters ()
  :precondition (and
    (evaluate comp870)
    (not (rebooted comp870))
    (running comp869)
  )
  :effect (and
    (not (evaluate comp870))
    (evaluate comp871)
    (all-on comp870)
  )
)
(:action evaluate-comp870-off-comp869
  :parameters ()
  :precondition (and
    (evaluate comp870)
    (not (rebooted comp870))
    (not (running comp869))
  )
  :effect (and
    (not (evaluate comp870))
    (evaluate comp871)
    (one-off comp870)
  )
)
(:action evaluate-comp871-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp871)
    (rebooted comp871)
  )
  :effect (and
    (not (evaluate comp871))
    (evaluate comp872)
  )
)
(:action evaluate-comp871-all-on
  :parameters ()
  :precondition (and
    (evaluate comp871)
    (not (rebooted comp871))
    (running comp870)
  )
  :effect (and
    (not (evaluate comp871))
    (evaluate comp872)
    (all-on comp871)
  )
)
(:action evaluate-comp871-off-comp870
  :parameters ()
  :precondition (and
    (evaluate comp871)
    (not (rebooted comp871))
    (not (running comp870))
  )
  :effect (and
    (not (evaluate comp871))
    (evaluate comp872)
    (one-off comp871)
  )
)
(:action evaluate-comp872-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp872)
    (rebooted comp872)
  )
  :effect (and
    (not (evaluate comp872))
    (evaluate comp873)
  )
)
(:action evaluate-comp872-all-on
  :parameters ()
  :precondition (and
    (evaluate comp872)
    (not (rebooted comp872))
    (running comp871)
  )
  :effect (and
    (not (evaluate comp872))
    (evaluate comp873)
    (all-on comp872)
  )
)
(:action evaluate-comp872-off-comp871
  :parameters ()
  :precondition (and
    (evaluate comp872)
    (not (rebooted comp872))
    (not (running comp871))
  )
  :effect (and
    (not (evaluate comp872))
    (evaluate comp873)
    (one-off comp872)
  )
)
(:action evaluate-comp873-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (rebooted comp873)
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
  )
)
(:action evaluate-comp873-all-on
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (not (rebooted comp873))
    (running comp272)
    (running comp872)
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
    (all-on comp873)
  )
)
(:action evaluate-comp873-off-comp272
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (not (rebooted comp873))
    (not (running comp272))
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
    (one-off comp873)
  )
)
(:action evaluate-comp873-off-comp872
  :parameters ()
  :precondition (and
    (evaluate comp873)
    (not (rebooted comp873))
    (not (running comp872))
  )
  :effect (and
    (not (evaluate comp873))
    (evaluate comp874)
    (one-off comp873)
  )
)
(:action evaluate-comp874-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp874)
    (rebooted comp874)
  )
  :effect (and
    (not (evaluate comp874))
    (evaluate comp875)
  )
)
(:action evaluate-comp874-all-on
  :parameters ()
  :precondition (and
    (evaluate comp874)
    (not (rebooted comp874))
    (running comp684)
    (running comp873)
  )
  :effect (and
    (not (evaluate comp874))
    (evaluate comp875)
    (all-on comp874)
  )
)
(:action evaluate-comp874-off-comp684
  :parameters ()
  :precondition (and
    (evaluate comp874)
    (not (rebooted comp874))
    (not (running comp684))
  )
  :effect (and
    (not (evaluate comp874))
    (evaluate comp875)
    (one-off comp874)
  )
)
(:action evaluate-comp874-off-comp873
  :parameters ()
  :precondition (and
    (evaluate comp874)
    (not (rebooted comp874))
    (not (running comp873))
  )
  :effect (and
    (not (evaluate comp874))
    (evaluate comp875)
    (one-off comp874)
  )
)
(:action evaluate-comp875-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp875)
    (rebooted comp875)
  )
  :effect (and
    (not (evaluate comp875))
    (evaluate comp876)
  )
)
(:action evaluate-comp875-all-on
  :parameters ()
  :precondition (and
    (evaluate comp875)
    (not (rebooted comp875))
    (running comp874)
  )
  :effect (and
    (not (evaluate comp875))
    (evaluate comp876)
    (all-on comp875)
  )
)
(:action evaluate-comp875-off-comp874
  :parameters ()
  :precondition (and
    (evaluate comp875)
    (not (rebooted comp875))
    (not (running comp874))
  )
  :effect (and
    (not (evaluate comp875))
    (evaluate comp876)
    (one-off comp875)
  )
)
(:action evaluate-comp876-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp876)
    (rebooted comp876)
  )
  :effect (and
    (not (evaluate comp876))
    (evaluate comp877)
  )
)
(:action evaluate-comp876-all-on
  :parameters ()
  :precondition (and
    (evaluate comp876)
    (not (rebooted comp876))
    (running comp875)
  )
  :effect (and
    (not (evaluate comp876))
    (evaluate comp877)
    (all-on comp876)
  )
)
(:action evaluate-comp876-off-comp875
  :parameters ()
  :precondition (and
    (evaluate comp876)
    (not (rebooted comp876))
    (not (running comp875))
  )
  :effect (and
    (not (evaluate comp876))
    (evaluate comp877)
    (one-off comp876)
  )
)
(:action evaluate-comp877-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp877)
    (rebooted comp877)
  )
  :effect (and
    (not (evaluate comp877))
    (evaluate comp878)
  )
)
(:action evaluate-comp877-all-on
  :parameters ()
  :precondition (and
    (evaluate comp877)
    (not (rebooted comp877))
    (running comp183)
    (running comp876)
  )
  :effect (and
    (not (evaluate comp877))
    (evaluate comp878)
    (all-on comp877)
  )
)
(:action evaluate-comp877-off-comp183
  :parameters ()
  :precondition (and
    (evaluate comp877)
    (not (rebooted comp877))
    (not (running comp183))
  )
  :effect (and
    (not (evaluate comp877))
    (evaluate comp878)
    (one-off comp877)
  )
)
(:action evaluate-comp877-off-comp876
  :parameters ()
  :precondition (and
    (evaluate comp877)
    (not (rebooted comp877))
    (not (running comp876))
  )
  :effect (and
    (not (evaluate comp877))
    (evaluate comp878)
    (one-off comp877)
  )
)
(:action evaluate-comp878-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (rebooted comp878)
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
  )
)
(:action evaluate-comp878-all-on
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (running comp618)
    (running comp745)
    (running comp755)
    (running comp877)
    (running comp881)
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (all-on comp878)
  )
)
(:action evaluate-comp878-off-comp618
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (not (running comp618))
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (one-off comp878)
  )
)
(:action evaluate-comp878-off-comp745
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (not (running comp745))
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (one-off comp878)
  )
)
(:action evaluate-comp878-off-comp755
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (not (running comp755))
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (one-off comp878)
  )
)
(:action evaluate-comp878-off-comp877
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (not (running comp877))
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (one-off comp878)
  )
)
(:action evaluate-comp878-off-comp881
  :parameters ()
  :precondition (and
    (evaluate comp878)
    (not (rebooted comp878))
    (not (running comp881))
  )
  :effect (and
    (not (evaluate comp878))
    (evaluate comp879)
    (one-off comp878)
  )
)
(:action evaluate-comp879-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp879)
    (rebooted comp879)
  )
  :effect (and
    (not (evaluate comp879))
    (evaluate comp880)
  )
)
(:action evaluate-comp879-all-on
  :parameters ()
  :precondition (and
    (evaluate comp879)
    (not (rebooted comp879))
    (running comp727)
    (running comp878)
  )
  :effect (and
    (not (evaluate comp879))
    (evaluate comp880)
    (all-on comp879)
  )
)
(:action evaluate-comp879-off-comp727
  :parameters ()
  :precondition (and
    (evaluate comp879)
    (not (rebooted comp879))
    (not (running comp727))
  )
  :effect (and
    (not (evaluate comp879))
    (evaluate comp880)
    (one-off comp879)
  )
)
(:action evaluate-comp879-off-comp878
  :parameters ()
  :precondition (and
    (evaluate comp879)
    (not (rebooted comp879))
    (not (running comp878))
  )
  :effect (and
    (not (evaluate comp879))
    (evaluate comp880)
    (one-off comp879)
  )
)
(:action evaluate-comp880-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp880)
    (rebooted comp880)
  )
  :effect (and
    (not (evaluate comp880))
    (evaluate comp881)
  )
)
(:action evaluate-comp880-all-on
  :parameters ()
  :precondition (and
    (evaluate comp880)
    (not (rebooted comp880))
    (running comp879)
    (running comp947)
  )
  :effect (and
    (not (evaluate comp880))
    (evaluate comp881)
    (all-on comp880)
  )
)
(:action evaluate-comp880-off-comp879
  :parameters ()
  :precondition (and
    (evaluate comp880)
    (not (rebooted comp880))
    (not (running comp879))
  )
  :effect (and
    (not (evaluate comp880))
    (evaluate comp881)
    (one-off comp880)
  )
)
(:action evaluate-comp880-off-comp947
  :parameters ()
  :precondition (and
    (evaluate comp880)
    (not (rebooted comp880))
    (not (running comp947))
  )
  :effect (and
    (not (evaluate comp880))
    (evaluate comp881)
    (one-off comp880)
  )
)
(:action evaluate-comp881-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp881)
    (rebooted comp881)
  )
  :effect (and
    (not (evaluate comp881))
    (evaluate comp882)
  )
)
(:action evaluate-comp881-all-on
  :parameters ()
  :precondition (and
    (evaluate comp881)
    (not (rebooted comp881))
    (running comp880)
  )
  :effect (and
    (not (evaluate comp881))
    (evaluate comp882)
    (all-on comp881)
  )
)
(:action evaluate-comp881-off-comp880
  :parameters ()
  :precondition (and
    (evaluate comp881)
    (not (rebooted comp881))
    (not (running comp880))
  )
  :effect (and
    (not (evaluate comp881))
    (evaluate comp882)
    (one-off comp881)
  )
)
(:action evaluate-comp882-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp882)
    (rebooted comp882)
  )
  :effect (and
    (not (evaluate comp882))
    (evaluate comp883)
  )
)
(:action evaluate-comp882-all-on
  :parameters ()
  :precondition (and
    (evaluate comp882)
    (not (rebooted comp882))
    (running comp881)
  )
  :effect (and
    (not (evaluate comp882))
    (evaluate comp883)
    (all-on comp882)
  )
)
(:action evaluate-comp882-off-comp881
  :parameters ()
  :precondition (and
    (evaluate comp882)
    (not (rebooted comp882))
    (not (running comp881))
  )
  :effect (and
    (not (evaluate comp882))
    (evaluate comp883)
    (one-off comp882)
  )
)
(:action evaluate-comp883-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp883)
    (rebooted comp883)
  )
  :effect (and
    (not (evaluate comp883))
    (evaluate comp884)
  )
)
(:action evaluate-comp883-all-on
  :parameters ()
  :precondition (and
    (evaluate comp883)
    (not (rebooted comp883))
    (running comp852)
    (running comp882)
  )
  :effect (and
    (not (evaluate comp883))
    (evaluate comp884)
    (all-on comp883)
  )
)
(:action evaluate-comp883-off-comp852
  :parameters ()
  :precondition (and
    (evaluate comp883)
    (not (rebooted comp883))
    (not (running comp852))
  )
  :effect (and
    (not (evaluate comp883))
    (evaluate comp884)
    (one-off comp883)
  )
)
(:action evaluate-comp883-off-comp882
  :parameters ()
  :precondition (and
    (evaluate comp883)
    (not (rebooted comp883))
    (not (running comp882))
  )
  :effect (and
    (not (evaluate comp883))
    (evaluate comp884)
    (one-off comp883)
  )
)
(:action evaluate-comp884-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (rebooted comp884)
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
  )
)
(:action evaluate-comp884-all-on
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (running comp574)
    (running comp883)
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (all-on comp884)
  )
)
(:action evaluate-comp884-off-comp574
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (not (running comp574))
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (one-off comp884)
  )
)
(:action evaluate-comp884-off-comp883
  :parameters ()
  :precondition (and
    (evaluate comp884)
    (not (rebooted comp884))
    (not (running comp883))
  )
  :effect (and
    (not (evaluate comp884))
    (evaluate comp885)
    (one-off comp884)
  )
)
(:action evaluate-comp885-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (rebooted comp885)
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
  )
)
(:action evaluate-comp885-all-on
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (running comp161)
    (running comp224)
    (running comp476)
    (running comp884)
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (all-on comp885)
  )
)
(:action evaluate-comp885-off-comp161
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (not (running comp161))
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (one-off comp885)
  )
)
(:action evaluate-comp885-off-comp224
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (not (running comp224))
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (one-off comp885)
  )
)
(:action evaluate-comp885-off-comp476
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (not (running comp476))
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (one-off comp885)
  )
)
(:action evaluate-comp885-off-comp884
  :parameters ()
  :precondition (and
    (evaluate comp885)
    (not (rebooted comp885))
    (not (running comp884))
  )
  :effect (and
    (not (evaluate comp885))
    (evaluate comp886)
    (one-off comp885)
  )
)
(:action evaluate-comp886-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (rebooted comp886)
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
  )
)
(:action evaluate-comp886-all-on
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (not (rebooted comp886))
    (running comp281)
    (running comp740)
    (running comp885)
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
    (all-on comp886)
  )
)
(:action evaluate-comp886-off-comp281
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (not (rebooted comp886))
    (not (running comp281))
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
    (one-off comp886)
  )
)
(:action evaluate-comp886-off-comp740
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (not (rebooted comp886))
    (not (running comp740))
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
    (one-off comp886)
  )
)
(:action evaluate-comp886-off-comp885
  :parameters ()
  :precondition (and
    (evaluate comp886)
    (not (rebooted comp886))
    (not (running comp885))
  )
  :effect (and
    (not (evaluate comp886))
    (evaluate comp887)
    (one-off comp886)
  )
)
(:action evaluate-comp887-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp887)
    (rebooted comp887)
  )
  :effect (and
    (not (evaluate comp887))
    (evaluate comp888)
  )
)
(:action evaluate-comp887-all-on
  :parameters ()
  :precondition (and
    (evaluate comp887)
    (not (rebooted comp887))
    (running comp807)
    (running comp886)
  )
  :effect (and
    (not (evaluate comp887))
    (evaluate comp888)
    (all-on comp887)
  )
)
(:action evaluate-comp887-off-comp807
  :parameters ()
  :precondition (and
    (evaluate comp887)
    (not (rebooted comp887))
    (not (running comp807))
  )
  :effect (and
    (not (evaluate comp887))
    (evaluate comp888)
    (one-off comp887)
  )
)
(:action evaluate-comp887-off-comp886
  :parameters ()
  :precondition (and
    (evaluate comp887)
    (not (rebooted comp887))
    (not (running comp886))
  )
  :effect (and
    (not (evaluate comp887))
    (evaluate comp888)
    (one-off comp887)
  )
)
(:action evaluate-comp888-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp888)
    (rebooted comp888)
  )
  :effect (and
    (not (evaluate comp888))
    (evaluate comp889)
  )
)
(:action evaluate-comp888-all-on
  :parameters ()
  :precondition (and
    (evaluate comp888)
    (not (rebooted comp888))
    (running comp887)
  )
  :effect (and
    (not (evaluate comp888))
    (evaluate comp889)
    (all-on comp888)
  )
)
(:action evaluate-comp888-off-comp887
  :parameters ()
  :precondition (and
    (evaluate comp888)
    (not (rebooted comp888))
    (not (running comp887))
  )
  :effect (and
    (not (evaluate comp888))
    (evaluate comp889)
    (one-off comp888)
  )
)
(:action evaluate-comp889-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp889)
    (rebooted comp889)
  )
  :effect (and
    (not (evaluate comp889))
    (evaluate comp890)
  )
)
(:action evaluate-comp889-all-on
  :parameters ()
  :precondition (and
    (evaluate comp889)
    (not (rebooted comp889))
    (running comp888)
  )
  :effect (and
    (not (evaluate comp889))
    (evaluate comp890)
    (all-on comp889)
  )
)
(:action evaluate-comp889-off-comp888
  :parameters ()
  :precondition (and
    (evaluate comp889)
    (not (rebooted comp889))
    (not (running comp888))
  )
  :effect (and
    (not (evaluate comp889))
    (evaluate comp890)
    (one-off comp889)
  )
)
(:action evaluate-comp890-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp890)
    (rebooted comp890)
  )
  :effect (and
    (not (evaluate comp890))
    (evaluate comp891)
  )
)
(:action evaluate-comp890-all-on
  :parameters ()
  :precondition (and
    (evaluate comp890)
    (not (rebooted comp890))
    (running comp889)
  )
  :effect (and
    (not (evaluate comp890))
    (evaluate comp891)
    (all-on comp890)
  )
)
(:action evaluate-comp890-off-comp889
  :parameters ()
  :precondition (and
    (evaluate comp890)
    (not (rebooted comp890))
    (not (running comp889))
  )
  :effect (and
    (not (evaluate comp890))
    (evaluate comp891)
    (one-off comp890)
  )
)
(:action evaluate-comp891-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp891)
    (rebooted comp891)
  )
  :effect (and
    (not (evaluate comp891))
    (evaluate comp892)
  )
)
(:action evaluate-comp891-all-on
  :parameters ()
  :precondition (and
    (evaluate comp891)
    (not (rebooted comp891))
    (running comp890)
  )
  :effect (and
    (not (evaluate comp891))
    (evaluate comp892)
    (all-on comp891)
  )
)
(:action evaluate-comp891-off-comp890
  :parameters ()
  :precondition (and
    (evaluate comp891)
    (not (rebooted comp891))
    (not (running comp890))
  )
  :effect (and
    (not (evaluate comp891))
    (evaluate comp892)
    (one-off comp891)
  )
)
(:action evaluate-comp892-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (rebooted comp892)
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
  )
)
(:action evaluate-comp892-all-on
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (not (rebooted comp892))
    (running comp157)
    (running comp192)
    (running comp891)
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
    (all-on comp892)
  )
)
(:action evaluate-comp892-off-comp157
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (not (rebooted comp892))
    (not (running comp157))
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
    (one-off comp892)
  )
)
(:action evaluate-comp892-off-comp192
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (not (rebooted comp892))
    (not (running comp192))
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
    (one-off comp892)
  )
)
(:action evaluate-comp892-off-comp891
  :parameters ()
  :precondition (and
    (evaluate comp892)
    (not (rebooted comp892))
    (not (running comp891))
  )
  :effect (and
    (not (evaluate comp892))
    (evaluate comp893)
    (one-off comp892)
  )
)
(:action evaluate-comp893-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp893)
    (rebooted comp893)
  )
  :effect (and
    (not (evaluate comp893))
    (evaluate comp894)
  )
)
(:action evaluate-comp893-all-on
  :parameters ()
  :precondition (and
    (evaluate comp893)
    (not (rebooted comp893))
    (running comp892)
  )
  :effect (and
    (not (evaluate comp893))
    (evaluate comp894)
    (all-on comp893)
  )
)
(:action evaluate-comp893-off-comp892
  :parameters ()
  :precondition (and
    (evaluate comp893)
    (not (rebooted comp893))
    (not (running comp892))
  )
  :effect (and
    (not (evaluate comp893))
    (evaluate comp894)
    (one-off comp893)
  )
)
(:action evaluate-comp894-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp894)
    (rebooted comp894)
  )
  :effect (and
    (not (evaluate comp894))
    (evaluate comp895)
  )
)
(:action evaluate-comp894-all-on
  :parameters ()
  :precondition (and
    (evaluate comp894)
    (not (rebooted comp894))
    (running comp873)
    (running comp893)
  )
  :effect (and
    (not (evaluate comp894))
    (evaluate comp895)
    (all-on comp894)
  )
)
(:action evaluate-comp894-off-comp873
  :parameters ()
  :precondition (and
    (evaluate comp894)
    (not (rebooted comp894))
    (not (running comp873))
  )
  :effect (and
    (not (evaluate comp894))
    (evaluate comp895)
    (one-off comp894)
  )
)
(:action evaluate-comp894-off-comp893
  :parameters ()
  :precondition (and
    (evaluate comp894)
    (not (rebooted comp894))
    (not (running comp893))
  )
  :effect (and
    (not (evaluate comp894))
    (evaluate comp895)
    (one-off comp894)
  )
)
(:action evaluate-comp895-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp895)
    (rebooted comp895)
  )
  :effect (and
    (not (evaluate comp895))
    (evaluate comp896)
  )
)
(:action evaluate-comp895-all-on
  :parameters ()
  :precondition (and
    (evaluate comp895)
    (not (rebooted comp895))
    (running comp894)
  )
  :effect (and
    (not (evaluate comp895))
    (evaluate comp896)
    (all-on comp895)
  )
)
(:action evaluate-comp895-off-comp894
  :parameters ()
  :precondition (and
    (evaluate comp895)
    (not (rebooted comp895))
    (not (running comp894))
  )
  :effect (and
    (not (evaluate comp895))
    (evaluate comp896)
    (one-off comp895)
  )
)
(:action evaluate-comp896-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp896)
    (rebooted comp896)
  )
  :effect (and
    (not (evaluate comp896))
    (evaluate comp897)
  )
)
(:action evaluate-comp896-all-on
  :parameters ()
  :precondition (and
    (evaluate comp896)
    (not (rebooted comp896))
    (running comp895)
  )
  :effect (and
    (not (evaluate comp896))
    (evaluate comp897)
    (all-on comp896)
  )
)
(:action evaluate-comp896-off-comp895
  :parameters ()
  :precondition (and
    (evaluate comp896)
    (not (rebooted comp896))
    (not (running comp895))
  )
  :effect (and
    (not (evaluate comp896))
    (evaluate comp897)
    (one-off comp896)
  )
)
(:action evaluate-comp897-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp897)
    (rebooted comp897)
  )
  :effect (and
    (not (evaluate comp897))
    (evaluate comp898)
  )
)
(:action evaluate-comp897-all-on
  :parameters ()
  :precondition (and
    (evaluate comp897)
    (not (rebooted comp897))
    (running comp896)
  )
  :effect (and
    (not (evaluate comp897))
    (evaluate comp898)
    (all-on comp897)
  )
)
(:action evaluate-comp897-off-comp896
  :parameters ()
  :precondition (and
    (evaluate comp897)
    (not (rebooted comp897))
    (not (running comp896))
  )
  :effect (and
    (not (evaluate comp897))
    (evaluate comp898)
    (one-off comp897)
  )
)
(:action evaluate-comp898-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp898)
    (rebooted comp898)
  )
  :effect (and
    (not (evaluate comp898))
    (evaluate comp899)
  )
)
(:action evaluate-comp898-all-on
  :parameters ()
  :precondition (and
    (evaluate comp898)
    (not (rebooted comp898))
    (running comp245)
    (running comp897)
  )
  :effect (and
    (not (evaluate comp898))
    (evaluate comp899)
    (all-on comp898)
  )
)
(:action evaluate-comp898-off-comp245
  :parameters ()
  :precondition (and
    (evaluate comp898)
    (not (rebooted comp898))
    (not (running comp245))
  )
  :effect (and
    (not (evaluate comp898))
    (evaluate comp899)
    (one-off comp898)
  )
)
(:action evaluate-comp898-off-comp897
  :parameters ()
  :precondition (and
    (evaluate comp898)
    (not (rebooted comp898))
    (not (running comp897))
  )
  :effect (and
    (not (evaluate comp898))
    (evaluate comp899)
    (one-off comp898)
  )
)
(:action evaluate-comp899-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp899)
    (rebooted comp899)
  )
  :effect (and
    (not (evaluate comp899))
    (evaluate comp900)
  )
)
(:action evaluate-comp899-all-on
  :parameters ()
  :precondition (and
    (evaluate comp899)
    (not (rebooted comp899))
    (running comp898)
  )
  :effect (and
    (not (evaluate comp899))
    (evaluate comp900)
    (all-on comp899)
  )
)
(:action evaluate-comp899-off-comp898
  :parameters ()
  :precondition (and
    (evaluate comp899)
    (not (rebooted comp899))
    (not (running comp898))
  )
  :effect (and
    (not (evaluate comp899))
    (evaluate comp900)
    (one-off comp899)
  )
)
(:action evaluate-comp900-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp900)
    (rebooted comp900)
  )
  :effect (and
    (not (evaluate comp900))
    (evaluate comp901)
  )
)
(:action evaluate-comp900-all-on
  :parameters ()
  :precondition (and
    (evaluate comp900)
    (not (rebooted comp900))
    (running comp899)
  )
  :effect (and
    (not (evaluate comp900))
    (evaluate comp901)
    (all-on comp900)
  )
)
(:action evaluate-comp900-off-comp899
  :parameters ()
  :precondition (and
    (evaluate comp900)
    (not (rebooted comp900))
    (not (running comp899))
  )
  :effect (and
    (not (evaluate comp900))
    (evaluate comp901)
    (one-off comp900)
  )
)
(:action evaluate-comp901-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp901)
    (rebooted comp901)
  )
  :effect (and
    (not (evaluate comp901))
    (evaluate comp902)
  )
)
(:action evaluate-comp901-all-on
  :parameters ()
  :precondition (and
    (evaluate comp901)
    (not (rebooted comp901))
    (running comp900)
  )
  :effect (and
    (not (evaluate comp901))
    (evaluate comp902)
    (all-on comp901)
  )
)
(:action evaluate-comp901-off-comp900
  :parameters ()
  :precondition (and
    (evaluate comp901)
    (not (rebooted comp901))
    (not (running comp900))
  )
  :effect (and
    (not (evaluate comp901))
    (evaluate comp902)
    (one-off comp901)
  )
)
(:action evaluate-comp902-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (rebooted comp902)
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
  )
)
(:action evaluate-comp902-all-on
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (not (rebooted comp902))
    (running comp276)
    (running comp901)
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
    (all-on comp902)
  )
)
(:action evaluate-comp902-off-comp276
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (not (rebooted comp902))
    (not (running comp276))
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
    (one-off comp902)
  )
)
(:action evaluate-comp902-off-comp901
  :parameters ()
  :precondition (and
    (evaluate comp902)
    (not (rebooted comp902))
    (not (running comp901))
  )
  :effect (and
    (not (evaluate comp902))
    (evaluate comp903)
    (one-off comp902)
  )
)
(:action evaluate-comp903-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp903)
    (rebooted comp903)
  )
  :effect (and
    (not (evaluate comp903))
    (evaluate comp904)
  )
)
(:action evaluate-comp903-all-on
  :parameters ()
  :precondition (and
    (evaluate comp903)
    (not (rebooted comp903))
    (running comp902)
  )
  :effect (and
    (not (evaluate comp903))
    (evaluate comp904)
    (all-on comp903)
  )
)
(:action evaluate-comp903-off-comp902
  :parameters ()
  :precondition (and
    (evaluate comp903)
    (not (rebooted comp903))
    (not (running comp902))
  )
  :effect (and
    (not (evaluate comp903))
    (evaluate comp904)
    (one-off comp903)
  )
)
(:action evaluate-comp904-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp904)
    (rebooted comp904)
  )
  :effect (and
    (not (evaluate comp904))
    (evaluate comp905)
  )
)
(:action evaluate-comp904-all-on
  :parameters ()
  :precondition (and
    (evaluate comp904)
    (not (rebooted comp904))
    (running comp903)
  )
  :effect (and
    (not (evaluate comp904))
    (evaluate comp905)
    (all-on comp904)
  )
)
(:action evaluate-comp904-off-comp903
  :parameters ()
  :precondition (and
    (evaluate comp904)
    (not (rebooted comp904))
    (not (running comp903))
  )
  :effect (and
    (not (evaluate comp904))
    (evaluate comp905)
    (one-off comp904)
  )
)
(:action evaluate-comp905-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (rebooted comp905)
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
  )
)
(:action evaluate-comp905-all-on
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (not (rebooted comp905))
    (running comp265)
    (running comp904)
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
    (all-on comp905)
  )
)
(:action evaluate-comp905-off-comp265
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (not (rebooted comp905))
    (not (running comp265))
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
    (one-off comp905)
  )
)
(:action evaluate-comp905-off-comp904
  :parameters ()
  :precondition (and
    (evaluate comp905)
    (not (rebooted comp905))
    (not (running comp904))
  )
  :effect (and
    (not (evaluate comp905))
    (evaluate comp906)
    (one-off comp905)
  )
)
(:action evaluate-comp906-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp906)
    (rebooted comp906)
  )
  :effect (and
    (not (evaluate comp906))
    (evaluate comp907)
  )
)
(:action evaluate-comp906-all-on
  :parameters ()
  :precondition (and
    (evaluate comp906)
    (not (rebooted comp906))
    (running comp905)
  )
  :effect (and
    (not (evaluate comp906))
    (evaluate comp907)
    (all-on comp906)
  )
)
(:action evaluate-comp906-off-comp905
  :parameters ()
  :precondition (and
    (evaluate comp906)
    (not (rebooted comp906))
    (not (running comp905))
  )
  :effect (and
    (not (evaluate comp906))
    (evaluate comp907)
    (one-off comp906)
  )
)
(:action evaluate-comp907-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp907)
    (rebooted comp907)
  )
  :effect (and
    (not (evaluate comp907))
    (evaluate comp908)
  )
)
(:action evaluate-comp907-all-on
  :parameters ()
  :precondition (and
    (evaluate comp907)
    (not (rebooted comp907))
    (running comp906)
  )
  :effect (and
    (not (evaluate comp907))
    (evaluate comp908)
    (all-on comp907)
  )
)
(:action evaluate-comp907-off-comp906
  :parameters ()
  :precondition (and
    (evaluate comp907)
    (not (rebooted comp907))
    (not (running comp906))
  )
  :effect (and
    (not (evaluate comp907))
    (evaluate comp908)
    (one-off comp907)
  )
)
(:action evaluate-comp908-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (rebooted comp908)
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
  )
)
(:action evaluate-comp908-all-on
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (not (rebooted comp908))
    (running comp907)
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
    (all-on comp908)
  )
)
(:action evaluate-comp908-off-comp907
  :parameters ()
  :precondition (and
    (evaluate comp908)
    (not (rebooted comp908))
    (not (running comp907))
  )
  :effect (and
    (not (evaluate comp908))
    (evaluate comp909)
    (one-off comp908)
  )
)
(:action evaluate-comp909-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp909)
    (rebooted comp909)
  )
  :effect (and
    (not (evaluate comp909))
    (evaluate comp910)
  )
)
(:action evaluate-comp909-all-on
  :parameters ()
  :precondition (and
    (evaluate comp909)
    (not (rebooted comp909))
    (running comp908)
  )
  :effect (and
    (not (evaluate comp909))
    (evaluate comp910)
    (all-on comp909)
  )
)
(:action evaluate-comp909-off-comp908
  :parameters ()
  :precondition (and
    (evaluate comp909)
    (not (rebooted comp909))
    (not (running comp908))
  )
  :effect (and
    (not (evaluate comp909))
    (evaluate comp910)
    (one-off comp909)
  )
)
(:action evaluate-comp910-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp910)
    (rebooted comp910)
  )
  :effect (and
    (not (evaluate comp910))
    (evaluate comp911)
  )
)
(:action evaluate-comp910-all-on
  :parameters ()
  :precondition (and
    (evaluate comp910)
    (not (rebooted comp910))
    (running comp909)
  )
  :effect (and
    (not (evaluate comp910))
    (evaluate comp911)
    (all-on comp910)
  )
)
(:action evaluate-comp910-off-comp909
  :parameters ()
  :precondition (and
    (evaluate comp910)
    (not (rebooted comp910))
    (not (running comp909))
  )
  :effect (and
    (not (evaluate comp910))
    (evaluate comp911)
    (one-off comp910)
  )
)
(:action evaluate-comp911-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp911)
    (rebooted comp911)
  )
  :effect (and
    (not (evaluate comp911))
    (evaluate comp912)
  )
)
(:action evaluate-comp911-all-on
  :parameters ()
  :precondition (and
    (evaluate comp911)
    (not (rebooted comp911))
    (running comp306)
    (running comp910)
  )
  :effect (and
    (not (evaluate comp911))
    (evaluate comp912)
    (all-on comp911)
  )
)
(:action evaluate-comp911-off-comp306
  :parameters ()
  :precondition (and
    (evaluate comp911)
    (not (rebooted comp911))
    (not (running comp306))
  )
  :effect (and
    (not (evaluate comp911))
    (evaluate comp912)
    (one-off comp911)
  )
)
(:action evaluate-comp911-off-comp910
  :parameters ()
  :precondition (and
    (evaluate comp911)
    (not (rebooted comp911))
    (not (running comp910))
  )
  :effect (and
    (not (evaluate comp911))
    (evaluate comp912)
    (one-off comp911)
  )
)
(:action evaluate-comp912-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (rebooted comp912)
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
  )
)
(:action evaluate-comp912-all-on
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (not (rebooted comp912))
    (running comp237)
    (running comp603)
    (running comp911)
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
    (all-on comp912)
  )
)
(:action evaluate-comp912-off-comp237
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (not (rebooted comp912))
    (not (running comp237))
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
    (one-off comp912)
  )
)
(:action evaluate-comp912-off-comp603
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (not (rebooted comp912))
    (not (running comp603))
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
    (one-off comp912)
  )
)
(:action evaluate-comp912-off-comp911
  :parameters ()
  :precondition (and
    (evaluate comp912)
    (not (rebooted comp912))
    (not (running comp911))
  )
  :effect (and
    (not (evaluate comp912))
    (evaluate comp913)
    (one-off comp912)
  )
)
(:action evaluate-comp913-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp913)
    (rebooted comp913)
  )
  :effect (and
    (not (evaluate comp913))
    (evaluate comp914)
  )
)
(:action evaluate-comp913-all-on
  :parameters ()
  :precondition (and
    (evaluate comp913)
    (not (rebooted comp913))
    (running comp912)
  )
  :effect (and
    (not (evaluate comp913))
    (evaluate comp914)
    (all-on comp913)
  )
)
(:action evaluate-comp913-off-comp912
  :parameters ()
  :precondition (and
    (evaluate comp913)
    (not (rebooted comp913))
    (not (running comp912))
  )
  :effect (and
    (not (evaluate comp913))
    (evaluate comp914)
    (one-off comp913)
  )
)
(:action evaluate-comp914-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp914)
    (rebooted comp914)
  )
  :effect (and
    (not (evaluate comp914))
    (evaluate comp915)
  )
)
(:action evaluate-comp914-all-on
  :parameters ()
  :precondition (and
    (evaluate comp914)
    (not (rebooted comp914))
    (running comp913)
  )
  :effect (and
    (not (evaluate comp914))
    (evaluate comp915)
    (all-on comp914)
  )
)
(:action evaluate-comp914-off-comp913
  :parameters ()
  :precondition (and
    (evaluate comp914)
    (not (rebooted comp914))
    (not (running comp913))
  )
  :effect (and
    (not (evaluate comp914))
    (evaluate comp915)
    (one-off comp914)
  )
)
(:action evaluate-comp915-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (rebooted comp915)
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
  )
)
(:action evaluate-comp915-all-on
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (not (rebooted comp915))
    (running comp914)
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
    (all-on comp915)
  )
)
(:action evaluate-comp915-off-comp914
  :parameters ()
  :precondition (and
    (evaluate comp915)
    (not (rebooted comp915))
    (not (running comp914))
  )
  :effect (and
    (not (evaluate comp915))
    (evaluate comp916)
    (one-off comp915)
  )
)
(:action evaluate-comp916-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp916)
    (rebooted comp916)
  )
  :effect (and
    (not (evaluate comp916))
    (evaluate comp917)
  )
)
(:action evaluate-comp916-all-on
  :parameters ()
  :precondition (and
    (evaluate comp916)
    (not (rebooted comp916))
    (running comp915)
  )
  :effect (and
    (not (evaluate comp916))
    (evaluate comp917)
    (all-on comp916)
  )
)
(:action evaluate-comp916-off-comp915
  :parameters ()
  :precondition (and
    (evaluate comp916)
    (not (rebooted comp916))
    (not (running comp915))
  )
  :effect (and
    (not (evaluate comp916))
    (evaluate comp917)
    (one-off comp916)
  )
)
(:action evaluate-comp917-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp917)
    (rebooted comp917)
  )
  :effect (and
    (not (evaluate comp917))
    (evaluate comp918)
  )
)
(:action evaluate-comp917-all-on
  :parameters ()
  :precondition (and
    (evaluate comp917)
    (not (rebooted comp917))
    (running comp916)
  )
  :effect (and
    (not (evaluate comp917))
    (evaluate comp918)
    (all-on comp917)
  )
)
(:action evaluate-comp917-off-comp916
  :parameters ()
  :precondition (and
    (evaluate comp917)
    (not (rebooted comp917))
    (not (running comp916))
  )
  :effect (and
    (not (evaluate comp917))
    (evaluate comp918)
    (one-off comp917)
  )
)
(:action evaluate-comp918-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp918)
    (rebooted comp918)
  )
  :effect (and
    (not (evaluate comp918))
    (evaluate comp919)
  )
)
(:action evaluate-comp918-all-on
  :parameters ()
  :precondition (and
    (evaluate comp918)
    (not (rebooted comp918))
    (running comp213)
    (running comp917)
  )
  :effect (and
    (not (evaluate comp918))
    (evaluate comp919)
    (all-on comp918)
  )
)
(:action evaluate-comp918-off-comp213
  :parameters ()
  :precondition (and
    (evaluate comp918)
    (not (rebooted comp918))
    (not (running comp213))
  )
  :effect (and
    (not (evaluate comp918))
    (evaluate comp919)
    (one-off comp918)
  )
)
(:action evaluate-comp918-off-comp917
  :parameters ()
  :precondition (and
    (evaluate comp918)
    (not (rebooted comp918))
    (not (running comp917))
  )
  :effect (and
    (not (evaluate comp918))
    (evaluate comp919)
    (one-off comp918)
  )
)
(:action evaluate-comp919-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp919)
    (rebooted comp919)
  )
  :effect (and
    (not (evaluate comp919))
    (evaluate comp920)
  )
)
(:action evaluate-comp919-all-on
  :parameters ()
  :precondition (and
    (evaluate comp919)
    (not (rebooted comp919))
    (running comp918)
  )
  :effect (and
    (not (evaluate comp919))
    (evaluate comp920)
    (all-on comp919)
  )
)
(:action evaluate-comp919-off-comp918
  :parameters ()
  :precondition (and
    (evaluate comp919)
    (not (rebooted comp919))
    (not (running comp918))
  )
  :effect (and
    (not (evaluate comp919))
    (evaluate comp920)
    (one-off comp919)
  )
)
(:action evaluate-comp920-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (rebooted comp920)
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
  )
)
(:action evaluate-comp920-all-on
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (not (rebooted comp920))
    (running comp525)
    (running comp919)
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
    (all-on comp920)
  )
)
(:action evaluate-comp920-off-comp525
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (not (rebooted comp920))
    (not (running comp525))
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
    (one-off comp920)
  )
)
(:action evaluate-comp920-off-comp919
  :parameters ()
  :precondition (and
    (evaluate comp920)
    (not (rebooted comp920))
    (not (running comp919))
  )
  :effect (and
    (not (evaluate comp920))
    (evaluate comp921)
    (one-off comp920)
  )
)
(:action evaluate-comp921-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp921)
    (rebooted comp921)
  )
  :effect (and
    (not (evaluate comp921))
    (evaluate comp922)
  )
)
(:action evaluate-comp921-all-on
  :parameters ()
  :precondition (and
    (evaluate comp921)
    (not (rebooted comp921))
    (running comp920)
  )
  :effect (and
    (not (evaluate comp921))
    (evaluate comp922)
    (all-on comp921)
  )
)
(:action evaluate-comp921-off-comp920
  :parameters ()
  :precondition (and
    (evaluate comp921)
    (not (rebooted comp921))
    (not (running comp920))
  )
  :effect (and
    (not (evaluate comp921))
    (evaluate comp922)
    (one-off comp921)
  )
)
(:action evaluate-comp922-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (rebooted comp922)
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
  )
)
(:action evaluate-comp922-all-on
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (not (rebooted comp922))
    (running comp921)
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
    (all-on comp922)
  )
)
(:action evaluate-comp922-off-comp921
  :parameters ()
  :precondition (and
    (evaluate comp922)
    (not (rebooted comp922))
    (not (running comp921))
  )
  :effect (and
    (not (evaluate comp922))
    (evaluate comp923)
    (one-off comp922)
  )
)
(:action evaluate-comp923-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp923)
    (rebooted comp923)
  )
  :effect (and
    (not (evaluate comp923))
    (evaluate comp924)
  )
)
(:action evaluate-comp923-all-on
  :parameters ()
  :precondition (and
    (evaluate comp923)
    (not (rebooted comp923))
    (running comp922)
  )
  :effect (and
    (not (evaluate comp923))
    (evaluate comp924)
    (all-on comp923)
  )
)
(:action evaluate-comp923-off-comp922
  :parameters ()
  :precondition (and
    (evaluate comp923)
    (not (rebooted comp923))
    (not (running comp922))
  )
  :effect (and
    (not (evaluate comp923))
    (evaluate comp924)
    (one-off comp923)
  )
)
(:action evaluate-comp924-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp924)
    (rebooted comp924)
  )
  :effect (and
    (not (evaluate comp924))
    (evaluate comp925)
  )
)
(:action evaluate-comp924-all-on
  :parameters ()
  :precondition (and
    (evaluate comp924)
    (not (rebooted comp924))
    (running comp923)
  )
  :effect (and
    (not (evaluate comp924))
    (evaluate comp925)
    (all-on comp924)
  )
)
(:action evaluate-comp924-off-comp923
  :parameters ()
  :precondition (and
    (evaluate comp924)
    (not (rebooted comp924))
    (not (running comp923))
  )
  :effect (and
    (not (evaluate comp924))
    (evaluate comp925)
    (one-off comp924)
  )
)
(:action evaluate-comp925-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp925)
    (rebooted comp925)
  )
  :effect (and
    (not (evaluate comp925))
    (evaluate comp926)
  )
)
(:action evaluate-comp925-all-on
  :parameters ()
  :precondition (and
    (evaluate comp925)
    (not (rebooted comp925))
    (running comp924)
  )
  :effect (and
    (not (evaluate comp925))
    (evaluate comp926)
    (all-on comp925)
  )
)
(:action evaluate-comp925-off-comp924
  :parameters ()
  :precondition (and
    (evaluate comp925)
    (not (rebooted comp925))
    (not (running comp924))
  )
  :effect (and
    (not (evaluate comp925))
    (evaluate comp926)
    (one-off comp925)
  )
)
(:action evaluate-comp926-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp926)
    (rebooted comp926)
  )
  :effect (and
    (not (evaluate comp926))
    (evaluate comp927)
  )
)
(:action evaluate-comp926-all-on
  :parameters ()
  :precondition (and
    (evaluate comp926)
    (not (rebooted comp926))
    (running comp925)
  )
  :effect (and
    (not (evaluate comp926))
    (evaluate comp927)
    (all-on comp926)
  )
)
(:action evaluate-comp926-off-comp925
  :parameters ()
  :precondition (and
    (evaluate comp926)
    (not (rebooted comp926))
    (not (running comp925))
  )
  :effect (and
    (not (evaluate comp926))
    (evaluate comp927)
    (one-off comp926)
  )
)
(:action evaluate-comp927-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (rebooted comp927)
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
  )
)
(:action evaluate-comp927-all-on
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (not (rebooted comp927))
    (running comp585)
    (running comp681)
    (running comp926)
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
    (all-on comp927)
  )
)
(:action evaluate-comp927-off-comp585
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (not (rebooted comp927))
    (not (running comp585))
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
    (one-off comp927)
  )
)
(:action evaluate-comp927-off-comp681
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (not (rebooted comp927))
    (not (running comp681))
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
    (one-off comp927)
  )
)
(:action evaluate-comp927-off-comp926
  :parameters ()
  :precondition (and
    (evaluate comp927)
    (not (rebooted comp927))
    (not (running comp926))
  )
  :effect (and
    (not (evaluate comp927))
    (evaluate comp928)
    (one-off comp927)
  )
)
(:action evaluate-comp928-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp928)
    (rebooted comp928)
  )
  :effect (and
    (not (evaluate comp928))
    (evaluate comp929)
  )
)
(:action evaluate-comp928-all-on
  :parameters ()
  :precondition (and
    (evaluate comp928)
    (not (rebooted comp928))
    (running comp927)
  )
  :effect (and
    (not (evaluate comp928))
    (evaluate comp929)
    (all-on comp928)
  )
)
(:action evaluate-comp928-off-comp927
  :parameters ()
  :precondition (and
    (evaluate comp928)
    (not (rebooted comp928))
    (not (running comp927))
  )
  :effect (and
    (not (evaluate comp928))
    (evaluate comp929)
    (one-off comp928)
  )
)
(:action evaluate-comp929-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp929)
    (rebooted comp929)
  )
  :effect (and
    (not (evaluate comp929))
    (evaluate comp930)
  )
)
(:action evaluate-comp929-all-on
  :parameters ()
  :precondition (and
    (evaluate comp929)
    (not (rebooted comp929))
    (running comp928)
  )
  :effect (and
    (not (evaluate comp929))
    (evaluate comp930)
    (all-on comp929)
  )
)
(:action evaluate-comp929-off-comp928
  :parameters ()
  :precondition (and
    (evaluate comp929)
    (not (rebooted comp929))
    (not (running comp928))
  )
  :effect (and
    (not (evaluate comp929))
    (evaluate comp930)
    (one-off comp929)
  )
)
(:action evaluate-comp930-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp930)
    (rebooted comp930)
  )
  :effect (and
    (not (evaluate comp930))
    (evaluate comp931)
  )
)
(:action evaluate-comp930-all-on
  :parameters ()
  :precondition (and
    (evaluate comp930)
    (not (rebooted comp930))
    (running comp929)
  )
  :effect (and
    (not (evaluate comp930))
    (evaluate comp931)
    (all-on comp930)
  )
)
(:action evaluate-comp930-off-comp929
  :parameters ()
  :precondition (and
    (evaluate comp930)
    (not (rebooted comp930))
    (not (running comp929))
  )
  :effect (and
    (not (evaluate comp930))
    (evaluate comp931)
    (one-off comp930)
  )
)
(:action evaluate-comp931-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp931)
    (rebooted comp931)
  )
  :effect (and
    (not (evaluate comp931))
    (evaluate comp932)
  )
)
(:action evaluate-comp931-all-on
  :parameters ()
  :precondition (and
    (evaluate comp931)
    (not (rebooted comp931))
    (running comp930)
  )
  :effect (and
    (not (evaluate comp931))
    (evaluate comp932)
    (all-on comp931)
  )
)
(:action evaluate-comp931-off-comp930
  :parameters ()
  :precondition (and
    (evaluate comp931)
    (not (rebooted comp931))
    (not (running comp930))
  )
  :effect (and
    (not (evaluate comp931))
    (evaluate comp932)
    (one-off comp931)
  )
)
(:action evaluate-comp932-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp932)
    (rebooted comp932)
  )
  :effect (and
    (not (evaluate comp932))
    (evaluate comp933)
  )
)
(:action evaluate-comp932-all-on
  :parameters ()
  :precondition (and
    (evaluate comp932)
    (not (rebooted comp932))
    (running comp931)
  )
  :effect (and
    (not (evaluate comp932))
    (evaluate comp933)
    (all-on comp932)
  )
)
(:action evaluate-comp932-off-comp931
  :parameters ()
  :precondition (and
    (evaluate comp932)
    (not (rebooted comp932))
    (not (running comp931))
  )
  :effect (and
    (not (evaluate comp932))
    (evaluate comp933)
    (one-off comp932)
  )
)
(:action evaluate-comp933-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp933)
    (rebooted comp933)
  )
  :effect (and
    (not (evaluate comp933))
    (evaluate comp934)
  )
)
(:action evaluate-comp933-all-on
  :parameters ()
  :precondition (and
    (evaluate comp933)
    (not (rebooted comp933))
    (running comp932)
  )
  :effect (and
    (not (evaluate comp933))
    (evaluate comp934)
    (all-on comp933)
  )
)
(:action evaluate-comp933-off-comp932
  :parameters ()
  :precondition (and
    (evaluate comp933)
    (not (rebooted comp933))
    (not (running comp932))
  )
  :effect (and
    (not (evaluate comp933))
    (evaluate comp934)
    (one-off comp933)
  )
)
(:action evaluate-comp934-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (rebooted comp934)
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
  )
)
(:action evaluate-comp934-all-on
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (not (rebooted comp934))
    (running comp217)
    (running comp464)
    (running comp933)
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
    (all-on comp934)
  )
)
(:action evaluate-comp934-off-comp217
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (not (rebooted comp934))
    (not (running comp217))
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
    (one-off comp934)
  )
)
(:action evaluate-comp934-off-comp464
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (not (rebooted comp934))
    (not (running comp464))
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
    (one-off comp934)
  )
)
(:action evaluate-comp934-off-comp933
  :parameters ()
  :precondition (and
    (evaluate comp934)
    (not (rebooted comp934))
    (not (running comp933))
  )
  :effect (and
    (not (evaluate comp934))
    (evaluate comp935)
    (one-off comp934)
  )
)
(:action evaluate-comp935-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (rebooted comp935)
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
  )
)
(:action evaluate-comp935-all-on
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (not (rebooted comp935))
    (running comp909)
    (running comp934)
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
    (all-on comp935)
  )
)
(:action evaluate-comp935-off-comp909
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (not (rebooted comp935))
    (not (running comp909))
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
    (one-off comp935)
  )
)
(:action evaluate-comp935-off-comp934
  :parameters ()
  :precondition (and
    (evaluate comp935)
    (not (rebooted comp935))
    (not (running comp934))
  )
  :effect (and
    (not (evaluate comp935))
    (evaluate comp936)
    (one-off comp935)
  )
)
(:action evaluate-comp936-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp936)
    (rebooted comp936)
  )
  :effect (and
    (not (evaluate comp936))
    (evaluate comp937)
  )
)
(:action evaluate-comp936-all-on
  :parameters ()
  :precondition (and
    (evaluate comp936)
    (not (rebooted comp936))
    (running comp522)
    (running comp935)
  )
  :effect (and
    (not (evaluate comp936))
    (evaluate comp937)
    (all-on comp936)
  )
)
(:action evaluate-comp936-off-comp522
  :parameters ()
  :precondition (and
    (evaluate comp936)
    (not (rebooted comp936))
    (not (running comp522))
  )
  :effect (and
    (not (evaluate comp936))
    (evaluate comp937)
    (one-off comp936)
  )
)
(:action evaluate-comp936-off-comp935
  :parameters ()
  :precondition (and
    (evaluate comp936)
    (not (rebooted comp936))
    (not (running comp935))
  )
  :effect (and
    (not (evaluate comp936))
    (evaluate comp937)
    (one-off comp936)
  )
)
(:action evaluate-comp937-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp937)
    (rebooted comp937)
  )
  :effect (and
    (not (evaluate comp937))
    (evaluate comp938)
  )
)
(:action evaluate-comp937-all-on
  :parameters ()
  :precondition (and
    (evaluate comp937)
    (not (rebooted comp937))
    (running comp936)
  )
  :effect (and
    (not (evaluate comp937))
    (evaluate comp938)
    (all-on comp937)
  )
)
(:action evaluate-comp937-off-comp936
  :parameters ()
  :precondition (and
    (evaluate comp937)
    (not (rebooted comp937))
    (not (running comp936))
  )
  :effect (and
    (not (evaluate comp937))
    (evaluate comp938)
    (one-off comp937)
  )
)
(:action evaluate-comp938-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (rebooted comp938)
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
  )
)
(:action evaluate-comp938-all-on
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (not (rebooted comp938))
    (running comp937)
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
    (all-on comp938)
  )
)
(:action evaluate-comp938-off-comp937
  :parameters ()
  :precondition (and
    (evaluate comp938)
    (not (rebooted comp938))
    (not (running comp937))
  )
  :effect (and
    (not (evaluate comp938))
    (evaluate comp939)
    (one-off comp938)
  )
)
(:action evaluate-comp939-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp939)
    (rebooted comp939)
  )
  :effect (and
    (not (evaluate comp939))
    (evaluate comp940)
  )
)
(:action evaluate-comp939-all-on
  :parameters ()
  :precondition (and
    (evaluate comp939)
    (not (rebooted comp939))
    (running comp938)
  )
  :effect (and
    (not (evaluate comp939))
    (evaluate comp940)
    (all-on comp939)
  )
)
(:action evaluate-comp939-off-comp938
  :parameters ()
  :precondition (and
    (evaluate comp939)
    (not (rebooted comp939))
    (not (running comp938))
  )
  :effect (and
    (not (evaluate comp939))
    (evaluate comp940)
    (one-off comp939)
  )
)
(:action evaluate-comp940-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp940)
    (rebooted comp940)
  )
  :effect (and
    (not (evaluate comp940))
    (evaluate comp941)
  )
)
(:action evaluate-comp940-all-on
  :parameters ()
  :precondition (and
    (evaluate comp940)
    (not (rebooted comp940))
    (running comp939)
  )
  :effect (and
    (not (evaluate comp940))
    (evaluate comp941)
    (all-on comp940)
  )
)
(:action evaluate-comp940-off-comp939
  :parameters ()
  :precondition (and
    (evaluate comp940)
    (not (rebooted comp940))
    (not (running comp939))
  )
  :effect (and
    (not (evaluate comp940))
    (evaluate comp941)
    (one-off comp940)
  )
)
(:action evaluate-comp941-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp941)
    (rebooted comp941)
  )
  :effect (and
    (not (evaluate comp941))
    (evaluate comp942)
  )
)
(:action evaluate-comp941-all-on
  :parameters ()
  :precondition (and
    (evaluate comp941)
    (not (rebooted comp941))
    (running comp940)
  )
  :effect (and
    (not (evaluate comp941))
    (evaluate comp942)
    (all-on comp941)
  )
)
(:action evaluate-comp941-off-comp940
  :parameters ()
  :precondition (and
    (evaluate comp941)
    (not (rebooted comp941))
    (not (running comp940))
  )
  :effect (and
    (not (evaluate comp941))
    (evaluate comp942)
    (one-off comp941)
  )
)
(:action evaluate-comp942-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp942)
    (rebooted comp942)
  )
  :effect (and
    (not (evaluate comp942))
    (evaluate comp943)
  )
)
(:action evaluate-comp942-all-on
  :parameters ()
  :precondition (and
    (evaluate comp942)
    (not (rebooted comp942))
    (running comp941)
  )
  :effect (and
    (not (evaluate comp942))
    (evaluate comp943)
    (all-on comp942)
  )
)
(:action evaluate-comp942-off-comp941
  :parameters ()
  :precondition (and
    (evaluate comp942)
    (not (rebooted comp942))
    (not (running comp941))
  )
  :effect (and
    (not (evaluate comp942))
    (evaluate comp943)
    (one-off comp942)
  )
)
(:action evaluate-comp943-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp943)
    (rebooted comp943)
  )
  :effect (and
    (not (evaluate comp943))
    (evaluate comp944)
  )
)
(:action evaluate-comp943-all-on
  :parameters ()
  :precondition (and
    (evaluate comp943)
    (not (rebooted comp943))
    (running comp942)
  )
  :effect (and
    (not (evaluate comp943))
    (evaluate comp944)
    (all-on comp943)
  )
)
(:action evaluate-comp943-off-comp942
  :parameters ()
  :precondition (and
    (evaluate comp943)
    (not (rebooted comp943))
    (not (running comp942))
  )
  :effect (and
    (not (evaluate comp943))
    (evaluate comp944)
    (one-off comp943)
  )
)
(:action evaluate-comp944-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp944)
    (rebooted comp944)
  )
  :effect (and
    (not (evaluate comp944))
    (evaluate comp945)
  )
)
(:action evaluate-comp944-all-on
  :parameters ()
  :precondition (and
    (evaluate comp944)
    (not (rebooted comp944))
    (running comp943)
  )
  :effect (and
    (not (evaluate comp944))
    (evaluate comp945)
    (all-on comp944)
  )
)
(:action evaluate-comp944-off-comp943
  :parameters ()
  :precondition (and
    (evaluate comp944)
    (not (rebooted comp944))
    (not (running comp943))
  )
  :effect (and
    (not (evaluate comp944))
    (evaluate comp945)
    (one-off comp944)
  )
)
(:action evaluate-comp945-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp945)
    (rebooted comp945)
  )
  :effect (and
    (not (evaluate comp945))
    (evaluate comp946)
  )
)
(:action evaluate-comp945-all-on
  :parameters ()
  :precondition (and
    (evaluate comp945)
    (not (rebooted comp945))
    (running comp944)
  )
  :effect (and
    (not (evaluate comp945))
    (evaluate comp946)
    (all-on comp945)
  )
)
(:action evaluate-comp945-off-comp944
  :parameters ()
  :precondition (and
    (evaluate comp945)
    (not (rebooted comp945))
    (not (running comp944))
  )
  :effect (and
    (not (evaluate comp945))
    (evaluate comp946)
    (one-off comp945)
  )
)
(:action evaluate-comp946-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (rebooted comp946)
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
  )
)
(:action evaluate-comp946-all-on
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (not (rebooted comp946))
    (running comp420)
    (running comp945)
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
    (all-on comp946)
  )
)
(:action evaluate-comp946-off-comp420
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (not (rebooted comp946))
    (not (running comp420))
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
    (one-off comp946)
  )
)
(:action evaluate-comp946-off-comp945
  :parameters ()
  :precondition (and
    (evaluate comp946)
    (not (rebooted comp946))
    (not (running comp945))
  )
  :effect (and
    (not (evaluate comp946))
    (evaluate comp947)
    (one-off comp946)
  )
)
(:action evaluate-comp947-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp947)
    (rebooted comp947)
  )
  :effect (and
    (not (evaluate comp947))
    (evaluate comp948)
  )
)
(:action evaluate-comp947-all-on
  :parameters ()
  :precondition (and
    (evaluate comp947)
    (not (rebooted comp947))
    (running comp110)
    (running comp946)
  )
  :effect (and
    (not (evaluate comp947))
    (evaluate comp948)
    (all-on comp947)
  )
)
(:action evaluate-comp947-off-comp110
  :parameters ()
  :precondition (and
    (evaluate comp947)
    (not (rebooted comp947))
    (not (running comp110))
  )
  :effect (and
    (not (evaluate comp947))
    (evaluate comp948)
    (one-off comp947)
  )
)
(:action evaluate-comp947-off-comp946
  :parameters ()
  :precondition (and
    (evaluate comp947)
    (not (rebooted comp947))
    (not (running comp946))
  )
  :effect (and
    (not (evaluate comp947))
    (evaluate comp948)
    (one-off comp947)
  )
)
(:action evaluate-comp948-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp948)
    (rebooted comp948)
  )
  :effect (and
    (not (evaluate comp948))
    (evaluate comp949)
  )
)
(:action evaluate-comp948-all-on
  :parameters ()
  :precondition (and
    (evaluate comp948)
    (not (rebooted comp948))
    (running comp947)
  )
  :effect (and
    (not (evaluate comp948))
    (evaluate comp949)
    (all-on comp948)
  )
)
(:action evaluate-comp948-off-comp947
  :parameters ()
  :precondition (and
    (evaluate comp948)
    (not (rebooted comp948))
    (not (running comp947))
  )
  :effect (and
    (not (evaluate comp948))
    (evaluate comp949)
    (one-off comp948)
  )
)
(:action evaluate-comp949-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp949)
    (rebooted comp949)
  )
  :effect (and
    (not (evaluate comp949))
    (evaluate comp950)
  )
)
(:action evaluate-comp949-all-on
  :parameters ()
  :precondition (and
    (evaluate comp949)
    (not (rebooted comp949))
    (running comp632)
    (running comp948)
  )
  :effect (and
    (not (evaluate comp949))
    (evaluate comp950)
    (all-on comp949)
  )
)
(:action evaluate-comp949-off-comp632
  :parameters ()
  :precondition (and
    (evaluate comp949)
    (not (rebooted comp949))
    (not (running comp632))
  )
  :effect (and
    (not (evaluate comp949))
    (evaluate comp950)
    (one-off comp949)
  )
)
(:action evaluate-comp949-off-comp948
  :parameters ()
  :precondition (and
    (evaluate comp949)
    (not (rebooted comp949))
    (not (running comp948))
  )
  :effect (and
    (not (evaluate comp949))
    (evaluate comp950)
    (one-off comp949)
  )
)
(:action evaluate-comp950-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp950)
    (rebooted comp950)
  )
  :effect (and
    (not (evaluate comp950))
    (evaluate comp951)
  )
)
(:action evaluate-comp950-all-on
  :parameters ()
  :precondition (and
    (evaluate comp950)
    (not (rebooted comp950))
    (running comp326)
    (running comp949)
  )
  :effect (and
    (not (evaluate comp950))
    (evaluate comp951)
    (all-on comp950)
  )
)
(:action evaluate-comp950-off-comp326
  :parameters ()
  :precondition (and
    (evaluate comp950)
    (not (rebooted comp950))
    (not (running comp326))
  )
  :effect (and
    (not (evaluate comp950))
    (evaluate comp951)
    (one-off comp950)
  )
)
(:action evaluate-comp950-off-comp949
  :parameters ()
  :precondition (and
    (evaluate comp950)
    (not (rebooted comp950))
    (not (running comp949))
  )
  :effect (and
    (not (evaluate comp950))
    (evaluate comp951)
    (one-off comp950)
  )
)
(:action evaluate-comp951-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp951)
    (rebooted comp951)
  )
  :effect (and
    (not (evaluate comp951))
    (evaluate comp952)
  )
)
(:action evaluate-comp951-all-on
  :parameters ()
  :precondition (and
    (evaluate comp951)
    (not (rebooted comp951))
    (running comp948)
    (running comp950)
  )
  :effect (and
    (not (evaluate comp951))
    (evaluate comp952)
    (all-on comp951)
  )
)
(:action evaluate-comp951-off-comp948
  :parameters ()
  :precondition (and
    (evaluate comp951)
    (not (rebooted comp951))
    (not (running comp948))
  )
  :effect (and
    (not (evaluate comp951))
    (evaluate comp952)
    (one-off comp951)
  )
)
(:action evaluate-comp951-off-comp950
  :parameters ()
  :precondition (and
    (evaluate comp951)
    (not (rebooted comp951))
    (not (running comp950))
  )
  :effect (and
    (not (evaluate comp951))
    (evaluate comp952)
    (one-off comp951)
  )
)
(:action evaluate-comp952-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp952)
    (rebooted comp952)
  )
  :effect (and
    (not (evaluate comp952))
    (evaluate comp953)
  )
)
(:action evaluate-comp952-all-on
  :parameters ()
  :precondition (and
    (evaluate comp952)
    (not (rebooted comp952))
    (running comp951)
  )
  :effect (and
    (not (evaluate comp952))
    (evaluate comp953)
    (all-on comp952)
  )
)
(:action evaluate-comp952-off-comp951
  :parameters ()
  :precondition (and
    (evaluate comp952)
    (not (rebooted comp952))
    (not (running comp951))
  )
  :effect (and
    (not (evaluate comp952))
    (evaluate comp953)
    (one-off comp952)
  )
)
(:action evaluate-comp953-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp953)
    (rebooted comp953)
  )
  :effect (and
    (not (evaluate comp953))
    (evaluate comp954)
  )
)
(:action evaluate-comp953-all-on
  :parameters ()
  :precondition (and
    (evaluate comp953)
    (not (rebooted comp953))
    (running comp952)
  )
  :effect (and
    (not (evaluate comp953))
    (evaluate comp954)
    (all-on comp953)
  )
)
(:action evaluate-comp953-off-comp952
  :parameters ()
  :precondition (and
    (evaluate comp953)
    (not (rebooted comp953))
    (not (running comp952))
  )
  :effect (and
    (not (evaluate comp953))
    (evaluate comp954)
    (one-off comp953)
  )
)
(:action evaluate-comp954-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp954)
    (rebooted comp954)
  )
  :effect (and
    (not (evaluate comp954))
    (evaluate comp955)
  )
)
(:action evaluate-comp954-all-on
  :parameters ()
  :precondition (and
    (evaluate comp954)
    (not (rebooted comp954))
    (running comp953)
  )
  :effect (and
    (not (evaluate comp954))
    (evaluate comp955)
    (all-on comp954)
  )
)
(:action evaluate-comp954-off-comp953
  :parameters ()
  :precondition (and
    (evaluate comp954)
    (not (rebooted comp954))
    (not (running comp953))
  )
  :effect (and
    (not (evaluate comp954))
    (evaluate comp955)
    (one-off comp954)
  )
)
(:action evaluate-comp955-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp955)
    (rebooted comp955)
  )
  :effect (and
    (not (evaluate comp955))
    (evaluate comp956)
  )
)
(:action evaluate-comp955-all-on
  :parameters ()
  :precondition (and
    (evaluate comp955)
    (not (rebooted comp955))
    (running comp954)
  )
  :effect (and
    (not (evaluate comp955))
    (evaluate comp956)
    (all-on comp955)
  )
)
(:action evaluate-comp955-off-comp954
  :parameters ()
  :precondition (and
    (evaluate comp955)
    (not (rebooted comp955))
    (not (running comp954))
  )
  :effect (and
    (not (evaluate comp955))
    (evaluate comp956)
    (one-off comp955)
  )
)
(:action evaluate-comp956-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (rebooted comp956)
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
  )
)
(:action evaluate-comp956-all-on
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (not (rebooted comp956))
    (running comp576)
    (running comp955)
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
    (all-on comp956)
  )
)
(:action evaluate-comp956-off-comp576
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (not (rebooted comp956))
    (not (running comp576))
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
    (one-off comp956)
  )
)
(:action evaluate-comp956-off-comp955
  :parameters ()
  :precondition (and
    (evaluate comp956)
    (not (rebooted comp956))
    (not (running comp955))
  )
  :effect (and
    (not (evaluate comp956))
    (evaluate comp957)
    (one-off comp956)
  )
)
(:action evaluate-comp957-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (rebooted comp957)
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
  )
)
(:action evaluate-comp957-all-on
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (not (rebooted comp957))
    (running comp444)
    (running comp956)
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
    (all-on comp957)
  )
)
(:action evaluate-comp957-off-comp444
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (not (rebooted comp957))
    (not (running comp444))
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
    (one-off comp957)
  )
)
(:action evaluate-comp957-off-comp956
  :parameters ()
  :precondition (and
    (evaluate comp957)
    (not (rebooted comp957))
    (not (running comp956))
  )
  :effect (and
    (not (evaluate comp957))
    (evaluate comp958)
    (one-off comp957)
  )
)
(:action evaluate-comp958-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp958)
    (rebooted comp958)
  )
  :effect (and
    (not (evaluate comp958))
    (evaluate comp959)
  )
)
(:action evaluate-comp958-all-on
  :parameters ()
  :precondition (and
    (evaluate comp958)
    (not (rebooted comp958))
    (running comp407)
    (running comp957)
  )
  :effect (and
    (not (evaluate comp958))
    (evaluate comp959)
    (all-on comp958)
  )
)
(:action evaluate-comp958-off-comp407
  :parameters ()
  :precondition (and
    (evaluate comp958)
    (not (rebooted comp958))
    (not (running comp407))
  )
  :effect (and
    (not (evaluate comp958))
    (evaluate comp959)
    (one-off comp958)
  )
)
(:action evaluate-comp958-off-comp957
  :parameters ()
  :precondition (and
    (evaluate comp958)
    (not (rebooted comp958))
    (not (running comp957))
  )
  :effect (and
    (not (evaluate comp958))
    (evaluate comp959)
    (one-off comp958)
  )
)
(:action evaluate-comp959-rebooted
  :parameters ()
  :precondition (and
    (evaluate comp959)
    (rebooted comp959)
  )
  :effect (and
    (not (evaluate comp959))
    (update-status comp0)
  )
)
(:action evaluate-comp959-all-on
  :parameters ()
  :precondition (and
    (evaluate comp959)
    (not (rebooted comp959))
    (running comp793)
    (running comp958)
  )
  :effect (and
    (not (evaluate comp959))
    (update-status comp0)
    (all-on comp959)
  )
)
(:action evaluate-comp959-off-comp793
  :parameters ()
  :precondition (and
    (evaluate comp959)
    (not (rebooted comp959))
    (not (running comp793))
  )
  :effect (and
    (not (evaluate comp959))
    (update-status comp0)
    (one-off comp959)
  )
)
(:action evaluate-comp959-off-comp958
  :parameters ()
  :precondition (and
    (evaluate comp959)
    (not (rebooted comp959))
    (not (running comp958))
  )
  :effect (and
    (not (evaluate comp959))
    (update-status comp0)
    (one-off comp959)
  )
)
(:action update-status-comp0-rebooted
  :parameters ()
  :precondition (and
    (update-status comp0)
    (rebooted comp0)
  )
  :effect (and
    (not (update-status comp0))
    (update-status comp1)
    (not (rebooted comp0))
    (probabilistic 9/10 (and (running comp0)) 1/10 (and))
  )
)
(:action update-status-comp0-all-on
  :parameters ()
  :precondition (and
    (update-status comp0)
    (not (rebooted comp0))
    (all-on comp0)
  )
  :effect (and
    (not (update-status comp0))
    (update-status comp1)
    (not (all-on comp0))
    (probabilistic 1/20 (and (not (running comp0))))
  )
)
(:action update-status-comp0-one-off
  :parameters ()
  :precondition (and
    (update-status comp0)
    (not (rebooted comp0))
    (one-off comp0)
  )
  :effect (and
    (not (update-status comp0))
    (update-status comp1)
    (not (one-off comp0))
    (probabilistic 1/4 (and (not (running comp0))))
  )
)
(:action update-status-comp1-rebooted
  :parameters ()
  :precondition (and
    (update-status comp1)
    (rebooted comp1)
  )
  :effect (and
    (not (update-status comp1))
    (update-status comp2)
    (not (rebooted comp1))
    (probabilistic 9/10 (and (running comp1)) 1/10 (and))
  )
)
(:action update-status-comp1-all-on
  :parameters ()
  :precondition (and
    (update-status comp1)
    (not (rebooted comp1))
    (all-on comp1)
  )
  :effect (and
    (not (update-status comp1))
    (update-status comp2)
    (not (all-on comp1))
    (probabilistic 1/20 (and (not (running comp1))))
  )
)
(:action update-status-comp1-one-off
  :parameters ()
  :precondition (and
    (update-status comp1)
    (not (rebooted comp1))
    (one-off comp1)
  )
  :effect (and
    (not (update-status comp1))
    (update-status comp2)
    (not (one-off comp1))
    (probabilistic 1/4 (and (not (running comp1))))
  )
)
(:action update-status-comp2-rebooted
  :parameters ()
  :precondition (and
    (update-status comp2)
    (rebooted comp2)
  )
  :effect (and
    (not (update-status comp2))
    (update-status comp3)
    (not (rebooted comp2))
    (probabilistic 9/10 (and (running comp2)) 1/10 (and))
  )
)
(:action update-status-comp2-all-on
  :parameters ()
  :precondition (and
    (update-status comp2)
    (not (rebooted comp2))
    (all-on comp2)
  )
  :effect (and
    (not (update-status comp2))
    (update-status comp3)
    (not (all-on comp2))
    (probabilistic 1/20 (and (not (running comp2))))
  )
)
(:action update-status-comp2-one-off
  :parameters ()
  :precondition (and
    (update-status comp2)
    (not (rebooted comp2))
    (one-off comp2)
  )
  :effect (and
    (not (update-status comp2))
    (update-status comp3)
    (not (one-off comp2))
    (probabilistic 1/4 (and (not (running comp2))))
  )
)
(:action update-status-comp3-rebooted
  :parameters ()
  :precondition (and
    (update-status comp3)
    (rebooted comp3)
  )
  :effect (and
    (not (update-status comp3))
    (update-status comp4)
    (not (rebooted comp3))
    (probabilistic 9/10 (and (running comp3)) 1/10 (and))
  )
)
(:action update-status-comp3-all-on
  :parameters ()
  :precondition (and
    (update-status comp3)
    (not (rebooted comp3))
    (all-on comp3)
  )
  :effect (and
    (not (update-status comp3))
    (update-status comp4)
    (not (all-on comp3))
    (probabilistic 1/20 (and (not (running comp3))))
  )
)
(:action update-status-comp3-one-off
  :parameters ()
  :precondition (and
    (update-status comp3)
    (not (rebooted comp3))
    (one-off comp3)
  )
  :effect (and
    (not (update-status comp3))
    (update-status comp4)
    (not (one-off comp3))
    (probabilistic 1/4 (and (not (running comp3))))
  )
)
(:action update-status-comp4-rebooted
  :parameters ()
  :precondition (and
    (update-status comp4)
    (rebooted comp4)
  )
  :effect (and
    (not (update-status comp4))
    (update-status comp5)
    (not (rebooted comp4))
    (probabilistic 9/10 (and (running comp4)) 1/10 (and))
  )
)
(:action update-status-comp4-all-on
  :parameters ()
  :precondition (and
    (update-status comp4)
    (not (rebooted comp4))
    (all-on comp4)
  )
  :effect (and
    (not (update-status comp4))
    (update-status comp5)
    (not (all-on comp4))
    (probabilistic 1/20 (and (not (running comp4))))
  )
)
(:action update-status-comp4-one-off
  :parameters ()
  :precondition (and
    (update-status comp4)
    (not (rebooted comp4))
    (one-off comp4)
  )
  :effect (and
    (not (update-status comp4))
    (update-status comp5)
    (not (one-off comp4))
    (probabilistic 1/4 (and (not (running comp4))))
  )
)
(:action update-status-comp5-rebooted
  :parameters ()
  :precondition (and
    (update-status comp5)
    (rebooted comp5)
  )
  :effect (and
    (not (update-status comp5))
    (update-status comp6)
    (not (rebooted comp5))
    (probabilistic 9/10 (and (running comp5)) 1/10 (and))
  )
)
(:action update-status-comp5-all-on
  :parameters ()
  :precondition (and
    (update-status comp5)
    (not (rebooted comp5))
    (all-on comp5)
  )
  :effect (and
    (not (update-status comp5))
    (update-status comp6)
    (not (all-on comp5))
    (probabilistic 1/20 (and (not (running comp5))))
  )
)
(:action update-status-comp5-one-off
  :parameters ()
  :precondition (and
    (update-status comp5)
    (not (rebooted comp5))
    (one-off comp5)
  )
  :effect (and
    (not (update-status comp5))
    (update-status comp6)
    (not (one-off comp5))
    (probabilistic 1/4 (and (not (running comp5))))
  )
)
(:action update-status-comp6-rebooted
  :parameters ()
  :precondition (and
    (update-status comp6)
    (rebooted comp6)
  )
  :effect (and
    (not (update-status comp6))
    (update-status comp7)
    (not (rebooted comp6))
    (probabilistic 9/10 (and (running comp6)) 1/10 (and))
  )
)
(:action update-status-comp6-all-on
  :parameters ()
  :precondition (and
    (update-status comp6)
    (not (rebooted comp6))
    (all-on comp6)
  )
  :effect (and
    (not (update-status comp6))
    (update-status comp7)
    (not (all-on comp6))
    (probabilistic 1/20 (and (not (running comp6))))
  )
)
(:action update-status-comp6-one-off
  :parameters ()
  :precondition (and
    (update-status comp6)
    (not (rebooted comp6))
    (one-off comp6)
  )
  :effect (and
    (not (update-status comp6))
    (update-status comp7)
    (not (one-off comp6))
    (probabilistic 1/4 (and (not (running comp6))))
  )
)
(:action update-status-comp7-rebooted
  :parameters ()
  :precondition (and
    (update-status comp7)
    (rebooted comp7)
  )
  :effect (and
    (not (update-status comp7))
    (update-status comp8)
    (not (rebooted comp7))
    (probabilistic 9/10 (and (running comp7)) 1/10 (and))
  )
)
(:action update-status-comp7-all-on
  :parameters ()
  :precondition (and
    (update-status comp7)
    (not (rebooted comp7))
    (all-on comp7)
  )
  :effect (and
    (not (update-status comp7))
    (update-status comp8)
    (not (all-on comp7))
    (probabilistic 1/20 (and (not (running comp7))))
  )
)
(:action update-status-comp7-one-off
  :parameters ()
  :precondition (and
    (update-status comp7)
    (not (rebooted comp7))
    (one-off comp7)
  )
  :effect (and
    (not (update-status comp7))
    (update-status comp8)
    (not (one-off comp7))
    (probabilistic 1/4 (and (not (running comp7))))
  )
)
(:action update-status-comp8-rebooted
  :parameters ()
  :precondition (and
    (update-status comp8)
    (rebooted comp8)
  )
  :effect (and
    (not (update-status comp8))
    (update-status comp9)
    (not (rebooted comp8))
    (probabilistic 9/10 (and (running comp8)) 1/10 (and))
  )
)
(:action update-status-comp8-all-on
  :parameters ()
  :precondition (and
    (update-status comp8)
    (not (rebooted comp8))
    (all-on comp8)
  )
  :effect (and
    (not (update-status comp8))
    (update-status comp9)
    (not (all-on comp8))
    (probabilistic 1/20 (and (not (running comp8))))
  )
)
(:action update-status-comp8-one-off
  :parameters ()
  :precondition (and
    (update-status comp8)
    (not (rebooted comp8))
    (one-off comp8)
  )
  :effect (and
    (not (update-status comp8))
    (update-status comp9)
    (not (one-off comp8))
    (probabilistic 1/4 (and (not (running comp8))))
  )
)
(:action update-status-comp9-rebooted
  :parameters ()
  :precondition (and
    (update-status comp9)
    (rebooted comp9)
  )
  :effect (and
    (not (update-status comp9))
    (update-status comp10)
    (not (rebooted comp9))
    (probabilistic 9/10 (and (running comp9)) 1/10 (and))
  )
)
(:action update-status-comp9-all-on
  :parameters ()
  :precondition (and
    (update-status comp9)
    (not (rebooted comp9))
    (all-on comp9)
  )
  :effect (and
    (not (update-status comp9))
    (update-status comp10)
    (not (all-on comp9))
    (probabilistic 1/20 (and (not (running comp9))))
  )
)
(:action update-status-comp9-one-off
  :parameters ()
  :precondition (and
    (update-status comp9)
    (not (rebooted comp9))
    (one-off comp9)
  )
  :effect (and
    (not (update-status comp9))
    (update-status comp10)
    (not (one-off comp9))
    (probabilistic 1/4 (and (not (running comp9))))
  )
)
(:action update-status-comp10-rebooted
  :parameters ()
  :precondition (and
    (update-status comp10)
    (rebooted comp10)
  )
  :effect (and
    (not (update-status comp10))
    (update-status comp11)
    (not (rebooted comp10))
    (probabilistic 9/10 (and (running comp10)) 1/10 (and))
  )
)
(:action update-status-comp10-all-on
  :parameters ()
  :precondition (and
    (update-status comp10)
    (not (rebooted comp10))
    (all-on comp10)
  )
  :effect (and
    (not (update-status comp10))
    (update-status comp11)
    (not (all-on comp10))
    (probabilistic 1/20 (and (not (running comp10))))
  )
)
(:action update-status-comp10-one-off
  :parameters ()
  :precondition (and
    (update-status comp10)
    (not (rebooted comp10))
    (one-off comp10)
  )
  :effect (and
    (not (update-status comp10))
    (update-status comp11)
    (not (one-off comp10))
    (probabilistic 1/4 (and (not (running comp10))))
  )
)
(:action update-status-comp11-rebooted
  :parameters ()
  :precondition (and
    (update-status comp11)
    (rebooted comp11)
  )
  :effect (and
    (not (update-status comp11))
    (update-status comp12)
    (not (rebooted comp11))
    (probabilistic 9/10 (and (running comp11)) 1/10 (and))
  )
)
(:action update-status-comp11-all-on
  :parameters ()
  :precondition (and
    (update-status comp11)
    (not (rebooted comp11))
    (all-on comp11)
  )
  :effect (and
    (not (update-status comp11))
    (update-status comp12)
    (not (all-on comp11))
    (probabilistic 1/20 (and (not (running comp11))))
  )
)
(:action update-status-comp11-one-off
  :parameters ()
  :precondition (and
    (update-status comp11)
    (not (rebooted comp11))
    (one-off comp11)
  )
  :effect (and
    (not (update-status comp11))
    (update-status comp12)
    (not (one-off comp11))
    (probabilistic 1/4 (and (not (running comp11))))
  )
)
(:action update-status-comp12-rebooted
  :parameters ()
  :precondition (and
    (update-status comp12)
    (rebooted comp12)
  )
  :effect (and
    (not (update-status comp12))
    (update-status comp13)
    (not (rebooted comp12))
    (probabilistic 9/10 (and (running comp12)) 1/10 (and))
  )
)
(:action update-status-comp12-all-on
  :parameters ()
  :precondition (and
    (update-status comp12)
    (not (rebooted comp12))
    (all-on comp12)
  )
  :effect (and
    (not (update-status comp12))
    (update-status comp13)
    (not (all-on comp12))
    (probabilistic 1/20 (and (not (running comp12))))
  )
)
(:action update-status-comp12-one-off
  :parameters ()
  :precondition (and
    (update-status comp12)
    (not (rebooted comp12))
    (one-off comp12)
  )
  :effect (and
    (not (update-status comp12))
    (update-status comp13)
    (not (one-off comp12))
    (probabilistic 1/4 (and (not (running comp12))))
  )
)
(:action update-status-comp13-rebooted
  :parameters ()
  :precondition (and
    (update-status comp13)
    (rebooted comp13)
  )
  :effect (and
    (not (update-status comp13))
    (update-status comp14)
    (not (rebooted comp13))
    (probabilistic 9/10 (and (running comp13)) 1/10 (and))
  )
)
(:action update-status-comp13-all-on
  :parameters ()
  :precondition (and
    (update-status comp13)
    (not (rebooted comp13))
    (all-on comp13)
  )
  :effect (and
    (not (update-status comp13))
    (update-status comp14)
    (not (all-on comp13))
    (probabilistic 1/20 (and (not (running comp13))))
  )
)
(:action update-status-comp13-one-off
  :parameters ()
  :precondition (and
    (update-status comp13)
    (not (rebooted comp13))
    (one-off comp13)
  )
  :effect (and
    (not (update-status comp13))
    (update-status comp14)
    (not (one-off comp13))
    (probabilistic 1/4 (and (not (running comp13))))
  )
)
(:action update-status-comp14-rebooted
  :parameters ()
  :precondition (and
    (update-status comp14)
    (rebooted comp14)
  )
  :effect (and
    (not (update-status comp14))
    (update-status comp15)
    (not (rebooted comp14))
    (probabilistic 9/10 (and (running comp14)) 1/10 (and))
  )
)
(:action update-status-comp14-all-on
  :parameters ()
  :precondition (and
    (update-status comp14)
    (not (rebooted comp14))
    (all-on comp14)
  )
  :effect (and
    (not (update-status comp14))
    (update-status comp15)
    (not (all-on comp14))
    (probabilistic 1/20 (and (not (running comp14))))
  )
)
(:action update-status-comp14-one-off
  :parameters ()
  :precondition (and
    (update-status comp14)
    (not (rebooted comp14))
    (one-off comp14)
  )
  :effect (and
    (not (update-status comp14))
    (update-status comp15)
    (not (one-off comp14))
    (probabilistic 1/4 (and (not (running comp14))))
  )
)
(:action update-status-comp15-rebooted
  :parameters ()
  :precondition (and
    (update-status comp15)
    (rebooted comp15)
  )
  :effect (and
    (not (update-status comp15))
    (update-status comp16)
    (not (rebooted comp15))
    (probabilistic 9/10 (and (running comp15)) 1/10 (and))
  )
)
(:action update-status-comp15-all-on
  :parameters ()
  :precondition (and
    (update-status comp15)
    (not (rebooted comp15))
    (all-on comp15)
  )
  :effect (and
    (not (update-status comp15))
    (update-status comp16)
    (not (all-on comp15))
    (probabilistic 1/20 (and (not (running comp15))))
  )
)
(:action update-status-comp15-one-off
  :parameters ()
  :precondition (and
    (update-status comp15)
    (not (rebooted comp15))
    (one-off comp15)
  )
  :effect (and
    (not (update-status comp15))
    (update-status comp16)
    (not (one-off comp15))
    (probabilistic 1/4 (and (not (running comp15))))
  )
)
(:action update-status-comp16-rebooted
  :parameters ()
  :precondition (and
    (update-status comp16)
    (rebooted comp16)
  )
  :effect (and
    (not (update-status comp16))
    (update-status comp17)
    (not (rebooted comp16))
    (probabilistic 9/10 (and (running comp16)) 1/10 (and))
  )
)
(:action update-status-comp16-all-on
  :parameters ()
  :precondition (and
    (update-status comp16)
    (not (rebooted comp16))
    (all-on comp16)
  )
  :effect (and
    (not (update-status comp16))
    (update-status comp17)
    (not (all-on comp16))
    (probabilistic 1/20 (and (not (running comp16))))
  )
)
(:action update-status-comp16-one-off
  :parameters ()
  :precondition (and
    (update-status comp16)
    (not (rebooted comp16))
    (one-off comp16)
  )
  :effect (and
    (not (update-status comp16))
    (update-status comp17)
    (not (one-off comp16))
    (probabilistic 1/4 (and (not (running comp16))))
  )
)
(:action update-status-comp17-rebooted
  :parameters ()
  :precondition (and
    (update-status comp17)
    (rebooted comp17)
  )
  :effect (and
    (not (update-status comp17))
    (update-status comp18)
    (not (rebooted comp17))
    (probabilistic 9/10 (and (running comp17)) 1/10 (and))
  )
)
(:action update-status-comp17-all-on
  :parameters ()
  :precondition (and
    (update-status comp17)
    (not (rebooted comp17))
    (all-on comp17)
  )
  :effect (and
    (not (update-status comp17))
    (update-status comp18)
    (not (all-on comp17))
    (probabilistic 1/20 (and (not (running comp17))))
  )
)
(:action update-status-comp17-one-off
  :parameters ()
  :precondition (and
    (update-status comp17)
    (not (rebooted comp17))
    (one-off comp17)
  )
  :effect (and
    (not (update-status comp17))
    (update-status comp18)
    (not (one-off comp17))
    (probabilistic 1/4 (and (not (running comp17))))
  )
)
(:action update-status-comp18-rebooted
  :parameters ()
  :precondition (and
    (update-status comp18)
    (rebooted comp18)
  )
  :effect (and
    (not (update-status comp18))
    (update-status comp19)
    (not (rebooted comp18))
    (probabilistic 9/10 (and (running comp18)) 1/10 (and))
  )
)
(:action update-status-comp18-all-on
  :parameters ()
  :precondition (and
    (update-status comp18)
    (not (rebooted comp18))
    (all-on comp18)
  )
  :effect (and
    (not (update-status comp18))
    (update-status comp19)
    (not (all-on comp18))
    (probabilistic 1/20 (and (not (running comp18))))
  )
)
(:action update-status-comp18-one-off
  :parameters ()
  :precondition (and
    (update-status comp18)
    (not (rebooted comp18))
    (one-off comp18)
  )
  :effect (and
    (not (update-status comp18))
    (update-status comp19)
    (not (one-off comp18))
    (probabilistic 1/4 (and (not (running comp18))))
  )
)
(:action update-status-comp19-rebooted
  :parameters ()
  :precondition (and
    (update-status comp19)
    (rebooted comp19)
  )
  :effect (and
    (not (update-status comp19))
    (update-status comp20)
    (not (rebooted comp19))
    (probabilistic 9/10 (and (running comp19)) 1/10 (and))
  )
)
(:action update-status-comp19-all-on
  :parameters ()
  :precondition (and
    (update-status comp19)
    (not (rebooted comp19))
    (all-on comp19)
  )
  :effect (and
    (not (update-status comp19))
    (update-status comp20)
    (not (all-on comp19))
    (probabilistic 1/20 (and (not (running comp19))))
  )
)
(:action update-status-comp19-one-off
  :parameters ()
  :precondition (and
    (update-status comp19)
    (not (rebooted comp19))
    (one-off comp19)
  )
  :effect (and
    (not (update-status comp19))
    (update-status comp20)
    (not (one-off comp19))
    (probabilistic 1/4 (and (not (running comp19))))
  )
)
(:action update-status-comp20-rebooted
  :parameters ()
  :precondition (and
    (update-status comp20)
    (rebooted comp20)
  )
  :effect (and
    (not (update-status comp20))
    (update-status comp21)
    (not (rebooted comp20))
    (probabilistic 9/10 (and (running comp20)) 1/10 (and))
  )
)
(:action update-status-comp20-all-on
  :parameters ()
  :precondition (and
    (update-status comp20)
    (not (rebooted comp20))
    (all-on comp20)
  )
  :effect (and
    (not (update-status comp20))
    (update-status comp21)
    (not (all-on comp20))
    (probabilistic 1/20 (and (not (running comp20))))
  )
)
(:action update-status-comp20-one-off
  :parameters ()
  :precondition (and
    (update-status comp20)
    (not (rebooted comp20))
    (one-off comp20)
  )
  :effect (and
    (not (update-status comp20))
    (update-status comp21)
    (not (one-off comp20))
    (probabilistic 1/4 (and (not (running comp20))))
  )
)
(:action update-status-comp21-rebooted
  :parameters ()
  :precondition (and
    (update-status comp21)
    (rebooted comp21)
  )
  :effect (and
    (not (update-status comp21))
    (update-status comp22)
    (not (rebooted comp21))
    (probabilistic 9/10 (and (running comp21)) 1/10 (and))
  )
)
(:action update-status-comp21-all-on
  :parameters ()
  :precondition (and
    (update-status comp21)
    (not (rebooted comp21))
    (all-on comp21)
  )
  :effect (and
    (not (update-status comp21))
    (update-status comp22)
    (not (all-on comp21))
    (probabilistic 1/20 (and (not (running comp21))))
  )
)
(:action update-status-comp21-one-off
  :parameters ()
  :precondition (and
    (update-status comp21)
    (not (rebooted comp21))
    (one-off comp21)
  )
  :effect (and
    (not (update-status comp21))
    (update-status comp22)
    (not (one-off comp21))
    (probabilistic 1/4 (and (not (running comp21))))
  )
)
(:action update-status-comp22-rebooted
  :parameters ()
  :precondition (and
    (update-status comp22)
    (rebooted comp22)
  )
  :effect (and
    (not (update-status comp22))
    (update-status comp23)
    (not (rebooted comp22))
    (probabilistic 9/10 (and (running comp22)) 1/10 (and))
  )
)
(:action update-status-comp22-all-on
  :parameters ()
  :precondition (and
    (update-status comp22)
    (not (rebooted comp22))
    (all-on comp22)
  )
  :effect (and
    (not (update-status comp22))
    (update-status comp23)
    (not (all-on comp22))
    (probabilistic 1/20 (and (not (running comp22))))
  )
)
(:action update-status-comp22-one-off
  :parameters ()
  :precondition (and
    (update-status comp22)
    (not (rebooted comp22))
    (one-off comp22)
  )
  :effect (and
    (not (update-status comp22))
    (update-status comp23)
    (not (one-off comp22))
    (probabilistic 1/4 (and (not (running comp22))))
  )
)
(:action update-status-comp23-rebooted
  :parameters ()
  :precondition (and
    (update-status comp23)
    (rebooted comp23)
  )
  :effect (and
    (not (update-status comp23))
    (update-status comp24)
    (not (rebooted comp23))
    (probabilistic 9/10 (and (running comp23)) 1/10 (and))
  )
)
(:action update-status-comp23-all-on
  :parameters ()
  :precondition (and
    (update-status comp23)
    (not (rebooted comp23))
    (all-on comp23)
  )
  :effect (and
    (not (update-status comp23))
    (update-status comp24)
    (not (all-on comp23))
    (probabilistic 1/20 (and (not (running comp23))))
  )
)
(:action update-status-comp23-one-off
  :parameters ()
  :precondition (and
    (update-status comp23)
    (not (rebooted comp23))
    (one-off comp23)
  )
  :effect (and
    (not (update-status comp23))
    (update-status comp24)
    (not (one-off comp23))
    (probabilistic 1/4 (and (not (running comp23))))
  )
)
(:action update-status-comp24-rebooted
  :parameters ()
  :precondition (and
    (update-status comp24)
    (rebooted comp24)
  )
  :effect (and
    (not (update-status comp24))
    (update-status comp25)
    (not (rebooted comp24))
    (probabilistic 9/10 (and (running comp24)) 1/10 (and))
  )
)
(:action update-status-comp24-all-on
  :parameters ()
  :precondition (and
    (update-status comp24)
    (not (rebooted comp24))
    (all-on comp24)
  )
  :effect (and
    (not (update-status comp24))
    (update-status comp25)
    (not (all-on comp24))
    (probabilistic 1/20 (and (not (running comp24))))
  )
)
(:action update-status-comp24-one-off
  :parameters ()
  :precondition (and
    (update-status comp24)
    (not (rebooted comp24))
    (one-off comp24)
  )
  :effect (and
    (not (update-status comp24))
    (update-status comp25)
    (not (one-off comp24))
    (probabilistic 1/4 (and (not (running comp24))))
  )
)
(:action update-status-comp25-rebooted
  :parameters ()
  :precondition (and
    (update-status comp25)
    (rebooted comp25)
  )
  :effect (and
    (not (update-status comp25))
    (update-status comp26)
    (not (rebooted comp25))
    (probabilistic 9/10 (and (running comp25)) 1/10 (and))
  )
)
(:action update-status-comp25-all-on
  :parameters ()
  :precondition (and
    (update-status comp25)
    (not (rebooted comp25))
    (all-on comp25)
  )
  :effect (and
    (not (update-status comp25))
    (update-status comp26)
    (not (all-on comp25))
    (probabilistic 1/20 (and (not (running comp25))))
  )
)
(:action update-status-comp25-one-off
  :parameters ()
  :precondition (and
    (update-status comp25)
    (not (rebooted comp25))
    (one-off comp25)
  )
  :effect (and
    (not (update-status comp25))
    (update-status comp26)
    (not (one-off comp25))
    (probabilistic 1/4 (and (not (running comp25))))
  )
)
(:action update-status-comp26-rebooted
  :parameters ()
  :precondition (and
    (update-status comp26)
    (rebooted comp26)
  )
  :effect (and
    (not (update-status comp26))
    (update-status comp27)
    (not (rebooted comp26))
    (probabilistic 9/10 (and (running comp26)) 1/10 (and))
  )
)
(:action update-status-comp26-all-on
  :parameters ()
  :precondition (and
    (update-status comp26)
    (not (rebooted comp26))
    (all-on comp26)
  )
  :effect (and
    (not (update-status comp26))
    (update-status comp27)
    (not (all-on comp26))
    (probabilistic 1/20 (and (not (running comp26))))
  )
)
(:action update-status-comp26-one-off
  :parameters ()
  :precondition (and
    (update-status comp26)
    (not (rebooted comp26))
    (one-off comp26)
  )
  :effect (and
    (not (update-status comp26))
    (update-status comp27)
    (not (one-off comp26))
    (probabilistic 1/4 (and (not (running comp26))))
  )
)
(:action update-status-comp27-rebooted
  :parameters ()
  :precondition (and
    (update-status comp27)
    (rebooted comp27)
  )
  :effect (and
    (not (update-status comp27))
    (update-status comp28)
    (not (rebooted comp27))
    (probabilistic 9/10 (and (running comp27)) 1/10 (and))
  )
)
(:action update-status-comp27-all-on
  :parameters ()
  :precondition (and
    (update-status comp27)
    (not (rebooted comp27))
    (all-on comp27)
  )
  :effect (and
    (not (update-status comp27))
    (update-status comp28)
    (not (all-on comp27))
    (probabilistic 1/20 (and (not (running comp27))))
  )
)
(:action update-status-comp27-one-off
  :parameters ()
  :precondition (and
    (update-status comp27)
    (not (rebooted comp27))
    (one-off comp27)
  )
  :effect (and
    (not (update-status comp27))
    (update-status comp28)
    (not (one-off comp27))
    (probabilistic 1/4 (and (not (running comp27))))
  )
)
(:action update-status-comp28-rebooted
  :parameters ()
  :precondition (and
    (update-status comp28)
    (rebooted comp28)
  )
  :effect (and
    (not (update-status comp28))
    (update-status comp29)
    (not (rebooted comp28))
    (probabilistic 9/10 (and (running comp28)) 1/10 (and))
  )
)
(:action update-status-comp28-all-on
  :parameters ()
  :precondition (and
    (update-status comp28)
    (not (rebooted comp28))
    (all-on comp28)
  )
  :effect (and
    (not (update-status comp28))
    (update-status comp29)
    (not (all-on comp28))
    (probabilistic 1/20 (and (not (running comp28))))
  )
)
(:action update-status-comp28-one-off
  :parameters ()
  :precondition (and
    (update-status comp28)
    (not (rebooted comp28))
    (one-off comp28)
  )
  :effect (and
    (not (update-status comp28))
    (update-status comp29)
    (not (one-off comp28))
    (probabilistic 1/4 (and (not (running comp28))))
  )
)
(:action update-status-comp29-rebooted
  :parameters ()
  :precondition (and
    (update-status comp29)
    (rebooted comp29)
  )
  :effect (and
    (not (update-status comp29))
    (update-status comp30)
    (not (rebooted comp29))
    (probabilistic 9/10 (and (running comp29)) 1/10 (and))
  )
)
(:action update-status-comp29-all-on
  :parameters ()
  :precondition (and
    (update-status comp29)
    (not (rebooted comp29))
    (all-on comp29)
  )
  :effect (and
    (not (update-status comp29))
    (update-status comp30)
    (not (all-on comp29))
    (probabilistic 1/20 (and (not (running comp29))))
  )
)
(:action update-status-comp29-one-off
  :parameters ()
  :precondition (and
    (update-status comp29)
    (not (rebooted comp29))
    (one-off comp29)
  )
  :effect (and
    (not (update-status comp29))
    (update-status comp30)
    (not (one-off comp29))
    (probabilistic 1/4 (and (not (running comp29))))
  )
)
(:action update-status-comp30-rebooted
  :parameters ()
  :precondition (and
    (update-status comp30)
    (rebooted comp30)
  )
  :effect (and
    (not (update-status comp30))
    (update-status comp31)
    (not (rebooted comp30))
    (probabilistic 9/10 (and (running comp30)) 1/10 (and))
  )
)
(:action update-status-comp30-all-on
  :parameters ()
  :precondition (and
    (update-status comp30)
    (not (rebooted comp30))
    (all-on comp30)
  )
  :effect (and
    (not (update-status comp30))
    (update-status comp31)
    (not (all-on comp30))
    (probabilistic 1/20 (and (not (running comp30))))
  )
)
(:action update-status-comp30-one-off
  :parameters ()
  :precondition (and
    (update-status comp30)
    (not (rebooted comp30))
    (one-off comp30)
  )
  :effect (and
    (not (update-status comp30))
    (update-status comp31)
    (not (one-off comp30))
    (probabilistic 1/4 (and (not (running comp30))))
  )
)
(:action update-status-comp31-rebooted
  :parameters ()
  :precondition (and
    (update-status comp31)
    (rebooted comp31)
  )
  :effect (and
    (not (update-status comp31))
    (update-status comp32)
    (not (rebooted comp31))
    (probabilistic 9/10 (and (running comp31)) 1/10 (and))
  )
)
(:action update-status-comp31-all-on
  :parameters ()
  :precondition (and
    (update-status comp31)
    (not (rebooted comp31))
    (all-on comp31)
  )
  :effect (and
    (not (update-status comp31))
    (update-status comp32)
    (not (all-on comp31))
    (probabilistic 1/20 (and (not (running comp31))))
  )
)
(:action update-status-comp31-one-off
  :parameters ()
  :precondition (and
    (update-status comp31)
    (not (rebooted comp31))
    (one-off comp31)
  )
  :effect (and
    (not (update-status comp31))
    (update-status comp32)
    (not (one-off comp31))
    (probabilistic 1/4 (and (not (running comp31))))
  )
)
(:action update-status-comp32-rebooted
  :parameters ()
  :precondition (and
    (update-status comp32)
    (rebooted comp32)
  )
  :effect (and
    (not (update-status comp32))
    (update-status comp33)
    (not (rebooted comp32))
    (probabilistic 9/10 (and (running comp32)) 1/10 (and))
  )
)
(:action update-status-comp32-all-on
  :parameters ()
  :precondition (and
    (update-status comp32)
    (not (rebooted comp32))
    (all-on comp32)
  )
  :effect (and
    (not (update-status comp32))
    (update-status comp33)
    (not (all-on comp32))
    (probabilistic 1/20 (and (not (running comp32))))
  )
)
(:action update-status-comp32-one-off
  :parameters ()
  :precondition (and
    (update-status comp32)
    (not (rebooted comp32))
    (one-off comp32)
  )
  :effect (and
    (not (update-status comp32))
    (update-status comp33)
    (not (one-off comp32))
    (probabilistic 1/4 (and (not (running comp32))))
  )
)
(:action update-status-comp33-rebooted
  :parameters ()
  :precondition (and
    (update-status comp33)
    (rebooted comp33)
  )
  :effect (and
    (not (update-status comp33))
    (update-status comp34)
    (not (rebooted comp33))
    (probabilistic 9/10 (and (running comp33)) 1/10 (and))
  )
)
(:action update-status-comp33-all-on
  :parameters ()
  :precondition (and
    (update-status comp33)
    (not (rebooted comp33))
    (all-on comp33)
  )
  :effect (and
    (not (update-status comp33))
    (update-status comp34)
    (not (all-on comp33))
    (probabilistic 1/20 (and (not (running comp33))))
  )
)
(:action update-status-comp33-one-off
  :parameters ()
  :precondition (and
    (update-status comp33)
    (not (rebooted comp33))
    (one-off comp33)
  )
  :effect (and
    (not (update-status comp33))
    (update-status comp34)
    (not (one-off comp33))
    (probabilistic 1/4 (and (not (running comp33))))
  )
)
(:action update-status-comp34-rebooted
  :parameters ()
  :precondition (and
    (update-status comp34)
    (rebooted comp34)
  )
  :effect (and
    (not (update-status comp34))
    (update-status comp35)
    (not (rebooted comp34))
    (probabilistic 9/10 (and (running comp34)) 1/10 (and))
  )
)
(:action update-status-comp34-all-on
  :parameters ()
  :precondition (and
    (update-status comp34)
    (not (rebooted comp34))
    (all-on comp34)
  )
  :effect (and
    (not (update-status comp34))
    (update-status comp35)
    (not (all-on comp34))
    (probabilistic 1/20 (and (not (running comp34))))
  )
)
(:action update-status-comp34-one-off
  :parameters ()
  :precondition (and
    (update-status comp34)
    (not (rebooted comp34))
    (one-off comp34)
  )
  :effect (and
    (not (update-status comp34))
    (update-status comp35)
    (not (one-off comp34))
    (probabilistic 1/4 (and (not (running comp34))))
  )
)
(:action update-status-comp35-rebooted
  :parameters ()
  :precondition (and
    (update-status comp35)
    (rebooted comp35)
  )
  :effect (and
    (not (update-status comp35))
    (update-status comp36)
    (not (rebooted comp35))
    (probabilistic 9/10 (and (running comp35)) 1/10 (and))
  )
)
(:action update-status-comp35-all-on
  :parameters ()
  :precondition (and
    (update-status comp35)
    (not (rebooted comp35))
    (all-on comp35)
  )
  :effect (and
    (not (update-status comp35))
    (update-status comp36)
    (not (all-on comp35))
    (probabilistic 1/20 (and (not (running comp35))))
  )
)
(:action update-status-comp35-one-off
  :parameters ()
  :precondition (and
    (update-status comp35)
    (not (rebooted comp35))
    (one-off comp35)
  )
  :effect (and
    (not (update-status comp35))
    (update-status comp36)
    (not (one-off comp35))
    (probabilistic 1/4 (and (not (running comp35))))
  )
)
(:action update-status-comp36-rebooted
  :parameters ()
  :precondition (and
    (update-status comp36)
    (rebooted comp36)
  )
  :effect (and
    (not (update-status comp36))
    (update-status comp37)
    (not (rebooted comp36))
    (probabilistic 9/10 (and (running comp36)) 1/10 (and))
  )
)
(:action update-status-comp36-all-on
  :parameters ()
  :precondition (and
    (update-status comp36)
    (not (rebooted comp36))
    (all-on comp36)
  )
  :effect (and
    (not (update-status comp36))
    (update-status comp37)
    (not (all-on comp36))
    (probabilistic 1/20 (and (not (running comp36))))
  )
)
(:action update-status-comp36-one-off
  :parameters ()
  :precondition (and
    (update-status comp36)
    (not (rebooted comp36))
    (one-off comp36)
  )
  :effect (and
    (not (update-status comp36))
    (update-status comp37)
    (not (one-off comp36))
    (probabilistic 1/4 (and (not (running comp36))))
  )
)
(:action update-status-comp37-rebooted
  :parameters ()
  :precondition (and
    (update-status comp37)
    (rebooted comp37)
  )
  :effect (and
    (not (update-status comp37))
    (update-status comp38)
    (not (rebooted comp37))
    (probabilistic 9/10 (and (running comp37)) 1/10 (and))
  )
)
(:action update-status-comp37-all-on
  :parameters ()
  :precondition (and
    (update-status comp37)
    (not (rebooted comp37))
    (all-on comp37)
  )
  :effect (and
    (not (update-status comp37))
    (update-status comp38)
    (not (all-on comp37))
    (probabilistic 1/20 (and (not (running comp37))))
  )
)
(:action update-status-comp37-one-off
  :parameters ()
  :precondition (and
    (update-status comp37)
    (not (rebooted comp37))
    (one-off comp37)
  )
  :effect (and
    (not (update-status comp37))
    (update-status comp38)
    (not (one-off comp37))
    (probabilistic 1/4 (and (not (running comp37))))
  )
)
(:action update-status-comp38-rebooted
  :parameters ()
  :precondition (and
    (update-status comp38)
    (rebooted comp38)
  )
  :effect (and
    (not (update-status comp38))
    (update-status comp39)
    (not (rebooted comp38))
    (probabilistic 9/10 (and (running comp38)) 1/10 (and))
  )
)
(:action update-status-comp38-all-on
  :parameters ()
  :precondition (and
    (update-status comp38)
    (not (rebooted comp38))
    (all-on comp38)
  )
  :effect (and
    (not (update-status comp38))
    (update-status comp39)
    (not (all-on comp38))
    (probabilistic 1/20 (and (not (running comp38))))
  )
)
(:action update-status-comp38-one-off
  :parameters ()
  :precondition (and
    (update-status comp38)
    (not (rebooted comp38))
    (one-off comp38)
  )
  :effect (and
    (not (update-status comp38))
    (update-status comp39)
    (not (one-off comp38))
    (probabilistic 1/4 (and (not (running comp38))))
  )
)
(:action update-status-comp39-rebooted
  :parameters ()
  :precondition (and
    (update-status comp39)
    (rebooted comp39)
  )
  :effect (and
    (not (update-status comp39))
    (update-status comp40)
    (not (rebooted comp39))
    (probabilistic 9/10 (and (running comp39)) 1/10 (and))
  )
)
(:action update-status-comp39-all-on
  :parameters ()
  :precondition (and
    (update-status comp39)
    (not (rebooted comp39))
    (all-on comp39)
  )
  :effect (and
    (not (update-status comp39))
    (update-status comp40)
    (not (all-on comp39))
    (probabilistic 1/20 (and (not (running comp39))))
  )
)
(:action update-status-comp39-one-off
  :parameters ()
  :precondition (and
    (update-status comp39)
    (not (rebooted comp39))
    (one-off comp39)
  )
  :effect (and
    (not (update-status comp39))
    (update-status comp40)
    (not (one-off comp39))
    (probabilistic 1/4 (and (not (running comp39))))
  )
)
(:action update-status-comp40-rebooted
  :parameters ()
  :precondition (and
    (update-status comp40)
    (rebooted comp40)
  )
  :effect (and
    (not (update-status comp40))
    (update-status comp41)
    (not (rebooted comp40))
    (probabilistic 9/10 (and (running comp40)) 1/10 (and))
  )
)
(:action update-status-comp40-all-on
  :parameters ()
  :precondition (and
    (update-status comp40)
    (not (rebooted comp40))
    (all-on comp40)
  )
  :effect (and
    (not (update-status comp40))
    (update-status comp41)
    (not (all-on comp40))
    (probabilistic 1/20 (and (not (running comp40))))
  )
)
(:action update-status-comp40-one-off
  :parameters ()
  :precondition (and
    (update-status comp40)
    (not (rebooted comp40))
    (one-off comp40)
  )
  :effect (and
    (not (update-status comp40))
    (update-status comp41)
    (not (one-off comp40))
    (probabilistic 1/4 (and (not (running comp40))))
  )
)
(:action update-status-comp41-rebooted
  :parameters ()
  :precondition (and
    (update-status comp41)
    (rebooted comp41)
  )
  :effect (and
    (not (update-status comp41))
    (update-status comp42)
    (not (rebooted comp41))
    (probabilistic 9/10 (and (running comp41)) 1/10 (and))
  )
)
(:action update-status-comp41-all-on
  :parameters ()
  :precondition (and
    (update-status comp41)
    (not (rebooted comp41))
    (all-on comp41)
  )
  :effect (and
    (not (update-status comp41))
    (update-status comp42)
    (not (all-on comp41))
    (probabilistic 1/20 (and (not (running comp41))))
  )
)
(:action update-status-comp41-one-off
  :parameters ()
  :precondition (and
    (update-status comp41)
    (not (rebooted comp41))
    (one-off comp41)
  )
  :effect (and
    (not (update-status comp41))
    (update-status comp42)
    (not (one-off comp41))
    (probabilistic 1/4 (and (not (running comp41))))
  )
)
(:action update-status-comp42-rebooted
  :parameters ()
  :precondition (and
    (update-status comp42)
    (rebooted comp42)
  )
  :effect (and
    (not (update-status comp42))
    (update-status comp43)
    (not (rebooted comp42))
    (probabilistic 9/10 (and (running comp42)) 1/10 (and))
  )
)
(:action update-status-comp42-all-on
  :parameters ()
  :precondition (and
    (update-status comp42)
    (not (rebooted comp42))
    (all-on comp42)
  )
  :effect (and
    (not (update-status comp42))
    (update-status comp43)
    (not (all-on comp42))
    (probabilistic 1/20 (and (not (running comp42))))
  )
)
(:action update-status-comp42-one-off
  :parameters ()
  :precondition (and
    (update-status comp42)
    (not (rebooted comp42))
    (one-off comp42)
  )
  :effect (and
    (not (update-status comp42))
    (update-status comp43)
    (not (one-off comp42))
    (probabilistic 1/4 (and (not (running comp42))))
  )
)
(:action update-status-comp43-rebooted
  :parameters ()
  :precondition (and
    (update-status comp43)
    (rebooted comp43)
  )
  :effect (and
    (not (update-status comp43))
    (update-status comp44)
    (not (rebooted comp43))
    (probabilistic 9/10 (and (running comp43)) 1/10 (and))
  )
)
(:action update-status-comp43-all-on
  :parameters ()
  :precondition (and
    (update-status comp43)
    (not (rebooted comp43))
    (all-on comp43)
  )
  :effect (and
    (not (update-status comp43))
    (update-status comp44)
    (not (all-on comp43))
    (probabilistic 1/20 (and (not (running comp43))))
  )
)
(:action update-status-comp43-one-off
  :parameters ()
  :precondition (and
    (update-status comp43)
    (not (rebooted comp43))
    (one-off comp43)
  )
  :effect (and
    (not (update-status comp43))
    (update-status comp44)
    (not (one-off comp43))
    (probabilistic 1/4 (and (not (running comp43))))
  )
)
(:action update-status-comp44-rebooted
  :parameters ()
  :precondition (and
    (update-status comp44)
    (rebooted comp44)
  )
  :effect (and
    (not (update-status comp44))
    (update-status comp45)
    (not (rebooted comp44))
    (probabilistic 9/10 (and (running comp44)) 1/10 (and))
  )
)
(:action update-status-comp44-all-on
  :parameters ()
  :precondition (and
    (update-status comp44)
    (not (rebooted comp44))
    (all-on comp44)
  )
  :effect (and
    (not (update-status comp44))
    (update-status comp45)
    (not (all-on comp44))
    (probabilistic 1/20 (and (not (running comp44))))
  )
)
(:action update-status-comp44-one-off
  :parameters ()
  :precondition (and
    (update-status comp44)
    (not (rebooted comp44))
    (one-off comp44)
  )
  :effect (and
    (not (update-status comp44))
    (update-status comp45)
    (not (one-off comp44))
    (probabilistic 1/4 (and (not (running comp44))))
  )
)
(:action update-status-comp45-rebooted
  :parameters ()
  :precondition (and
    (update-status comp45)
    (rebooted comp45)
  )
  :effect (and
    (not (update-status comp45))
    (update-status comp46)
    (not (rebooted comp45))
    (probabilistic 9/10 (and (running comp45)) 1/10 (and))
  )
)
(:action update-status-comp45-all-on
  :parameters ()
  :precondition (and
    (update-status comp45)
    (not (rebooted comp45))
    (all-on comp45)
  )
  :effect (and
    (not (update-status comp45))
    (update-status comp46)
    (not (all-on comp45))
    (probabilistic 1/20 (and (not (running comp45))))
  )
)
(:action update-status-comp45-one-off
  :parameters ()
  :precondition (and
    (update-status comp45)
    (not (rebooted comp45))
    (one-off comp45)
  )
  :effect (and
    (not (update-status comp45))
    (update-status comp46)
    (not (one-off comp45))
    (probabilistic 1/4 (and (not (running comp45))))
  )
)
(:action update-status-comp46-rebooted
  :parameters ()
  :precondition (and
    (update-status comp46)
    (rebooted comp46)
  )
  :effect (and
    (not (update-status comp46))
    (update-status comp47)
    (not (rebooted comp46))
    (probabilistic 9/10 (and (running comp46)) 1/10 (and))
  )
)
(:action update-status-comp46-all-on
  :parameters ()
  :precondition (and
    (update-status comp46)
    (not (rebooted comp46))
    (all-on comp46)
  )
  :effect (and
    (not (update-status comp46))
    (update-status comp47)
    (not (all-on comp46))
    (probabilistic 1/20 (and (not (running comp46))))
  )
)
(:action update-status-comp46-one-off
  :parameters ()
  :precondition (and
    (update-status comp46)
    (not (rebooted comp46))
    (one-off comp46)
  )
  :effect (and
    (not (update-status comp46))
    (update-status comp47)
    (not (one-off comp46))
    (probabilistic 1/4 (and (not (running comp46))))
  )
)
(:action update-status-comp47-rebooted
  :parameters ()
  :precondition (and
    (update-status comp47)
    (rebooted comp47)
  )
  :effect (and
    (not (update-status comp47))
    (update-status comp48)
    (not (rebooted comp47))
    (probabilistic 9/10 (and (running comp47)) 1/10 (and))
  )
)
(:action update-status-comp47-all-on
  :parameters ()
  :precondition (and
    (update-status comp47)
    (not (rebooted comp47))
    (all-on comp47)
  )
  :effect (and
    (not (update-status comp47))
    (update-status comp48)
    (not (all-on comp47))
    (probabilistic 1/20 (and (not (running comp47))))
  )
)
(:action update-status-comp47-one-off
  :parameters ()
  :precondition (and
    (update-status comp47)
    (not (rebooted comp47))
    (one-off comp47)
  )
  :effect (and
    (not (update-status comp47))
    (update-status comp48)
    (not (one-off comp47))
    (probabilistic 1/4 (and (not (running comp47))))
  )
)
(:action update-status-comp48-rebooted
  :parameters ()
  :precondition (and
    (update-status comp48)
    (rebooted comp48)
  )
  :effect (and
    (not (update-status comp48))
    (update-status comp49)
    (not (rebooted comp48))
    (probabilistic 9/10 (and (running comp48)) 1/10 (and))
  )
)
(:action update-status-comp48-all-on
  :parameters ()
  :precondition (and
    (update-status comp48)
    (not (rebooted comp48))
    (all-on comp48)
  )
  :effect (and
    (not (update-status comp48))
    (update-status comp49)
    (not (all-on comp48))
    (probabilistic 1/20 (and (not (running comp48))))
  )
)
(:action update-status-comp48-one-off
  :parameters ()
  :precondition (and
    (update-status comp48)
    (not (rebooted comp48))
    (one-off comp48)
  )
  :effect (and
    (not (update-status comp48))
    (update-status comp49)
    (not (one-off comp48))
    (probabilistic 1/4 (and (not (running comp48))))
  )
)
(:action update-status-comp49-rebooted
  :parameters ()
  :precondition (and
    (update-status comp49)
    (rebooted comp49)
  )
  :effect (and
    (not (update-status comp49))
    (update-status comp50)
    (not (rebooted comp49))
    (probabilistic 9/10 (and (running comp49)) 1/10 (and))
  )
)
(:action update-status-comp49-all-on
  :parameters ()
  :precondition (and
    (update-status comp49)
    (not (rebooted comp49))
    (all-on comp49)
  )
  :effect (and
    (not (update-status comp49))
    (update-status comp50)
    (not (all-on comp49))
    (probabilistic 1/20 (and (not (running comp49))))
  )
)
(:action update-status-comp49-one-off
  :parameters ()
  :precondition (and
    (update-status comp49)
    (not (rebooted comp49))
    (one-off comp49)
  )
  :effect (and
    (not (update-status comp49))
    (update-status comp50)
    (not (one-off comp49))
    (probabilistic 1/4 (and (not (running comp49))))
  )
)
(:action update-status-comp50-rebooted
  :parameters ()
  :precondition (and
    (update-status comp50)
    (rebooted comp50)
  )
  :effect (and
    (not (update-status comp50))
    (update-status comp51)
    (not (rebooted comp50))
    (probabilistic 9/10 (and (running comp50)) 1/10 (and))
  )
)
(:action update-status-comp50-all-on
  :parameters ()
  :precondition (and
    (update-status comp50)
    (not (rebooted comp50))
    (all-on comp50)
  )
  :effect (and
    (not (update-status comp50))
    (update-status comp51)
    (not (all-on comp50))
    (probabilistic 1/20 (and (not (running comp50))))
  )
)
(:action update-status-comp50-one-off
  :parameters ()
  :precondition (and
    (update-status comp50)
    (not (rebooted comp50))
    (one-off comp50)
  )
  :effect (and
    (not (update-status comp50))
    (update-status comp51)
    (not (one-off comp50))
    (probabilistic 1/4 (and (not (running comp50))))
  )
)
(:action update-status-comp51-rebooted
  :parameters ()
  :precondition (and
    (update-status comp51)
    (rebooted comp51)
  )
  :effect (and
    (not (update-status comp51))
    (update-status comp52)
    (not (rebooted comp51))
    (probabilistic 9/10 (and (running comp51)) 1/10 (and))
  )
)
(:action update-status-comp51-all-on
  :parameters ()
  :precondition (and
    (update-status comp51)
    (not (rebooted comp51))
    (all-on comp51)
  )
  :effect (and
    (not (update-status comp51))
    (update-status comp52)
    (not (all-on comp51))
    (probabilistic 1/20 (and (not (running comp51))))
  )
)
(:action update-status-comp51-one-off
  :parameters ()
  :precondition (and
    (update-status comp51)
    (not (rebooted comp51))
    (one-off comp51)
  )
  :effect (and
    (not (update-status comp51))
    (update-status comp52)
    (not (one-off comp51))
    (probabilistic 1/4 (and (not (running comp51))))
  )
)
(:action update-status-comp52-rebooted
  :parameters ()
  :precondition (and
    (update-status comp52)
    (rebooted comp52)
  )
  :effect (and
    (not (update-status comp52))
    (update-status comp53)
    (not (rebooted comp52))
    (probabilistic 9/10 (and (running comp52)) 1/10 (and))
  )
)
(:action update-status-comp52-all-on
  :parameters ()
  :precondition (and
    (update-status comp52)
    (not (rebooted comp52))
    (all-on comp52)
  )
  :effect (and
    (not (update-status comp52))
    (update-status comp53)
    (not (all-on comp52))
    (probabilistic 1/20 (and (not (running comp52))))
  )
)
(:action update-status-comp52-one-off
  :parameters ()
  :precondition (and
    (update-status comp52)
    (not (rebooted comp52))
    (one-off comp52)
  )
  :effect (and
    (not (update-status comp52))
    (update-status comp53)
    (not (one-off comp52))
    (probabilistic 1/4 (and (not (running comp52))))
  )
)
(:action update-status-comp53-rebooted
  :parameters ()
  :precondition (and
    (update-status comp53)
    (rebooted comp53)
  )
  :effect (and
    (not (update-status comp53))
    (update-status comp54)
    (not (rebooted comp53))
    (probabilistic 9/10 (and (running comp53)) 1/10 (and))
  )
)
(:action update-status-comp53-all-on
  :parameters ()
  :precondition (and
    (update-status comp53)
    (not (rebooted comp53))
    (all-on comp53)
  )
  :effect (and
    (not (update-status comp53))
    (update-status comp54)
    (not (all-on comp53))
    (probabilistic 1/20 (and (not (running comp53))))
  )
)
(:action update-status-comp53-one-off
  :parameters ()
  :precondition (and
    (update-status comp53)
    (not (rebooted comp53))
    (one-off comp53)
  )
  :effect (and
    (not (update-status comp53))
    (update-status comp54)
    (not (one-off comp53))
    (probabilistic 1/4 (and (not (running comp53))))
  )
)
(:action update-status-comp54-rebooted
  :parameters ()
  :precondition (and
    (update-status comp54)
    (rebooted comp54)
  )
  :effect (and
    (not (update-status comp54))
    (update-status comp55)
    (not (rebooted comp54))
    (probabilistic 9/10 (and (running comp54)) 1/10 (and))
  )
)
(:action update-status-comp54-all-on
  :parameters ()
  :precondition (and
    (update-status comp54)
    (not (rebooted comp54))
    (all-on comp54)
  )
  :effect (and
    (not (update-status comp54))
    (update-status comp55)
    (not (all-on comp54))
    (probabilistic 1/20 (and (not (running comp54))))
  )
)
(:action update-status-comp54-one-off
  :parameters ()
  :precondition (and
    (update-status comp54)
    (not (rebooted comp54))
    (one-off comp54)
  )
  :effect (and
    (not (update-status comp54))
    (update-status comp55)
    (not (one-off comp54))
    (probabilistic 1/4 (and (not (running comp54))))
  )
)
(:action update-status-comp55-rebooted
  :parameters ()
  :precondition (and
    (update-status comp55)
    (rebooted comp55)
  )
  :effect (and
    (not (update-status comp55))
    (update-status comp56)
    (not (rebooted comp55))
    (probabilistic 9/10 (and (running comp55)) 1/10 (and))
  )
)
(:action update-status-comp55-all-on
  :parameters ()
  :precondition (and
    (update-status comp55)
    (not (rebooted comp55))
    (all-on comp55)
  )
  :effect (and
    (not (update-status comp55))
    (update-status comp56)
    (not (all-on comp55))
    (probabilistic 1/20 (and (not (running comp55))))
  )
)
(:action update-status-comp55-one-off
  :parameters ()
  :precondition (and
    (update-status comp55)
    (not (rebooted comp55))
    (one-off comp55)
  )
  :effect (and
    (not (update-status comp55))
    (update-status comp56)
    (not (one-off comp55))
    (probabilistic 1/4 (and (not (running comp55))))
  )
)
(:action update-status-comp56-rebooted
  :parameters ()
  :precondition (and
    (update-status comp56)
    (rebooted comp56)
  )
  :effect (and
    (not (update-status comp56))
    (update-status comp57)
    (not (rebooted comp56))
    (probabilistic 9/10 (and (running comp56)) 1/10 (and))
  )
)
(:action update-status-comp56-all-on
  :parameters ()
  :precondition (and
    (update-status comp56)
    (not (rebooted comp56))
    (all-on comp56)
  )
  :effect (and
    (not (update-status comp56))
    (update-status comp57)
    (not (all-on comp56))
    (probabilistic 1/20 (and (not (running comp56))))
  )
)
(:action update-status-comp56-one-off
  :parameters ()
  :precondition (and
    (update-status comp56)
    (not (rebooted comp56))
    (one-off comp56)
  )
  :effect (and
    (not (update-status comp56))
    (update-status comp57)
    (not (one-off comp56))
    (probabilistic 1/4 (and (not (running comp56))))
  )
)
(:action update-status-comp57-rebooted
  :parameters ()
  :precondition (and
    (update-status comp57)
    (rebooted comp57)
  )
  :effect (and
    (not (update-status comp57))
    (update-status comp58)
    (not (rebooted comp57))
    (probabilistic 9/10 (and (running comp57)) 1/10 (and))
  )
)
(:action update-status-comp57-all-on
  :parameters ()
  :precondition (and
    (update-status comp57)
    (not (rebooted comp57))
    (all-on comp57)
  )
  :effect (and
    (not (update-status comp57))
    (update-status comp58)
    (not (all-on comp57))
    (probabilistic 1/20 (and (not (running comp57))))
  )
)
(:action update-status-comp57-one-off
  :parameters ()
  :precondition (and
    (update-status comp57)
    (not (rebooted comp57))
    (one-off comp57)
  )
  :effect (and
    (not (update-status comp57))
    (update-status comp58)
    (not (one-off comp57))
    (probabilistic 1/4 (and (not (running comp57))))
  )
)
(:action update-status-comp58-rebooted
  :parameters ()
  :precondition (and
    (update-status comp58)
    (rebooted comp58)
  )
  :effect (and
    (not (update-status comp58))
    (update-status comp59)
    (not (rebooted comp58))
    (probabilistic 9/10 (and (running comp58)) 1/10 (and))
  )
)
(:action update-status-comp58-all-on
  :parameters ()
  :precondition (and
    (update-status comp58)
    (not (rebooted comp58))
    (all-on comp58)
  )
  :effect (and
    (not (update-status comp58))
    (update-status comp59)
    (not (all-on comp58))
    (probabilistic 1/20 (and (not (running comp58))))
  )
)
(:action update-status-comp58-one-off
  :parameters ()
  :precondition (and
    (update-status comp58)
    (not (rebooted comp58))
    (one-off comp58)
  )
  :effect (and
    (not (update-status comp58))
    (update-status comp59)
    (not (one-off comp58))
    (probabilistic 1/4 (and (not (running comp58))))
  )
)
(:action update-status-comp59-rebooted
  :parameters ()
  :precondition (and
    (update-status comp59)
    (rebooted comp59)
  )
  :effect (and
    (not (update-status comp59))
    (update-status comp60)
    (not (rebooted comp59))
    (probabilistic 9/10 (and (running comp59)) 1/10 (and))
  )
)
(:action update-status-comp59-all-on
  :parameters ()
  :precondition (and
    (update-status comp59)
    (not (rebooted comp59))
    (all-on comp59)
  )
  :effect (and
    (not (update-status comp59))
    (update-status comp60)
    (not (all-on comp59))
    (probabilistic 1/20 (and (not (running comp59))))
  )
)
(:action update-status-comp59-one-off
  :parameters ()
  :precondition (and
    (update-status comp59)
    (not (rebooted comp59))
    (one-off comp59)
  )
  :effect (and
    (not (update-status comp59))
    (update-status comp60)
    (not (one-off comp59))
    (probabilistic 1/4 (and (not (running comp59))))
  )
)
(:action update-status-comp60-rebooted
  :parameters ()
  :precondition (and
    (update-status comp60)
    (rebooted comp60)
  )
  :effect (and
    (not (update-status comp60))
    (update-status comp61)
    (not (rebooted comp60))
    (probabilistic 9/10 (and (running comp60)) 1/10 (and))
  )
)
(:action update-status-comp60-all-on
  :parameters ()
  :precondition (and
    (update-status comp60)
    (not (rebooted comp60))
    (all-on comp60)
  )
  :effect (and
    (not (update-status comp60))
    (update-status comp61)
    (not (all-on comp60))
    (probabilistic 1/20 (and (not (running comp60))))
  )
)
(:action update-status-comp60-one-off
  :parameters ()
  :precondition (and
    (update-status comp60)
    (not (rebooted comp60))
    (one-off comp60)
  )
  :effect (and
    (not (update-status comp60))
    (update-status comp61)
    (not (one-off comp60))
    (probabilistic 1/4 (and (not (running comp60))))
  )
)
(:action update-status-comp61-rebooted
  :parameters ()
  :precondition (and
    (update-status comp61)
    (rebooted comp61)
  )
  :effect (and
    (not (update-status comp61))
    (update-status comp62)
    (not (rebooted comp61))
    (probabilistic 9/10 (and (running comp61)) 1/10 (and))
  )
)
(:action update-status-comp61-all-on
  :parameters ()
  :precondition (and
    (update-status comp61)
    (not (rebooted comp61))
    (all-on comp61)
  )
  :effect (and
    (not (update-status comp61))
    (update-status comp62)
    (not (all-on comp61))
    (probabilistic 1/20 (and (not (running comp61))))
  )
)
(:action update-status-comp61-one-off
  :parameters ()
  :precondition (and
    (update-status comp61)
    (not (rebooted comp61))
    (one-off comp61)
  )
  :effect (and
    (not (update-status comp61))
    (update-status comp62)
    (not (one-off comp61))
    (probabilistic 1/4 (and (not (running comp61))))
  )
)
(:action update-status-comp62-rebooted
  :parameters ()
  :precondition (and
    (update-status comp62)
    (rebooted comp62)
  )
  :effect (and
    (not (update-status comp62))
    (update-status comp63)
    (not (rebooted comp62))
    (probabilistic 9/10 (and (running comp62)) 1/10 (and))
  )
)
(:action update-status-comp62-all-on
  :parameters ()
  :precondition (and
    (update-status comp62)
    (not (rebooted comp62))
    (all-on comp62)
  )
  :effect (and
    (not (update-status comp62))
    (update-status comp63)
    (not (all-on comp62))
    (probabilistic 1/20 (and (not (running comp62))))
  )
)
(:action update-status-comp62-one-off
  :parameters ()
  :precondition (and
    (update-status comp62)
    (not (rebooted comp62))
    (one-off comp62)
  )
  :effect (and
    (not (update-status comp62))
    (update-status comp63)
    (not (one-off comp62))
    (probabilistic 1/4 (and (not (running comp62))))
  )
)
(:action update-status-comp63-rebooted
  :parameters ()
  :precondition (and
    (update-status comp63)
    (rebooted comp63)
  )
  :effect (and
    (not (update-status comp63))
    (update-status comp64)
    (not (rebooted comp63))
    (probabilistic 9/10 (and (running comp63)) 1/10 (and))
  )
)
(:action update-status-comp63-all-on
  :parameters ()
  :precondition (and
    (update-status comp63)
    (not (rebooted comp63))
    (all-on comp63)
  )
  :effect (and
    (not (update-status comp63))
    (update-status comp64)
    (not (all-on comp63))
    (probabilistic 1/20 (and (not (running comp63))))
  )
)
(:action update-status-comp63-one-off
  :parameters ()
  :precondition (and
    (update-status comp63)
    (not (rebooted comp63))
    (one-off comp63)
  )
  :effect (and
    (not (update-status comp63))
    (update-status comp64)
    (not (one-off comp63))
    (probabilistic 1/4 (and (not (running comp63))))
  )
)
(:action update-status-comp64-rebooted
  :parameters ()
  :precondition (and
    (update-status comp64)
    (rebooted comp64)
  )
  :effect (and
    (not (update-status comp64))
    (update-status comp65)
    (not (rebooted comp64))
    (probabilistic 9/10 (and (running comp64)) 1/10 (and))
  )
)
(:action update-status-comp64-all-on
  :parameters ()
  :precondition (and
    (update-status comp64)
    (not (rebooted comp64))
    (all-on comp64)
  )
  :effect (and
    (not (update-status comp64))
    (update-status comp65)
    (not (all-on comp64))
    (probabilistic 1/20 (and (not (running comp64))))
  )
)
(:action update-status-comp64-one-off
  :parameters ()
  :precondition (and
    (update-status comp64)
    (not (rebooted comp64))
    (one-off comp64)
  )
  :effect (and
    (not (update-status comp64))
    (update-status comp65)
    (not (one-off comp64))
    (probabilistic 1/4 (and (not (running comp64))))
  )
)
(:action update-status-comp65-rebooted
  :parameters ()
  :precondition (and
    (update-status comp65)
    (rebooted comp65)
  )
  :effect (and
    (not (update-status comp65))
    (update-status comp66)
    (not (rebooted comp65))
    (probabilistic 9/10 (and (running comp65)) 1/10 (and))
  )
)
(:action update-status-comp65-all-on
  :parameters ()
  :precondition (and
    (update-status comp65)
    (not (rebooted comp65))
    (all-on comp65)
  )
  :effect (and
    (not (update-status comp65))
    (update-status comp66)
    (not (all-on comp65))
    (probabilistic 1/20 (and (not (running comp65))))
  )
)
(:action update-status-comp65-one-off
  :parameters ()
  :precondition (and
    (update-status comp65)
    (not (rebooted comp65))
    (one-off comp65)
  )
  :effect (and
    (not (update-status comp65))
    (update-status comp66)
    (not (one-off comp65))
    (probabilistic 1/4 (and (not (running comp65))))
  )
)
(:action update-status-comp66-rebooted
  :parameters ()
  :precondition (and
    (update-status comp66)
    (rebooted comp66)
  )
  :effect (and
    (not (update-status comp66))
    (update-status comp67)
    (not (rebooted comp66))
    (probabilistic 9/10 (and (running comp66)) 1/10 (and))
  )
)
(:action update-status-comp66-all-on
  :parameters ()
  :precondition (and
    (update-status comp66)
    (not (rebooted comp66))
    (all-on comp66)
  )
  :effect (and
    (not (update-status comp66))
    (update-status comp67)
    (not (all-on comp66))
    (probabilistic 1/20 (and (not (running comp66))))
  )
)
(:action update-status-comp66-one-off
  :parameters ()
  :precondition (and
    (update-status comp66)
    (not (rebooted comp66))
    (one-off comp66)
  )
  :effect (and
    (not (update-status comp66))
    (update-status comp67)
    (not (one-off comp66))
    (probabilistic 1/4 (and (not (running comp66))))
  )
)
(:action update-status-comp67-rebooted
  :parameters ()
  :precondition (and
    (update-status comp67)
    (rebooted comp67)
  )
  :effect (and
    (not (update-status comp67))
    (update-status comp68)
    (not (rebooted comp67))
    (probabilistic 9/10 (and (running comp67)) 1/10 (and))
  )
)
(:action update-status-comp67-all-on
  :parameters ()
  :precondition (and
    (update-status comp67)
    (not (rebooted comp67))
    (all-on comp67)
  )
  :effect (and
    (not (update-status comp67))
    (update-status comp68)
    (not (all-on comp67))
    (probabilistic 1/20 (and (not (running comp67))))
  )
)
(:action update-status-comp67-one-off
  :parameters ()
  :precondition (and
    (update-status comp67)
    (not (rebooted comp67))
    (one-off comp67)
  )
  :effect (and
    (not (update-status comp67))
    (update-status comp68)
    (not (one-off comp67))
    (probabilistic 1/4 (and (not (running comp67))))
  )
)
(:action update-status-comp68-rebooted
  :parameters ()
  :precondition (and
    (update-status comp68)
    (rebooted comp68)
  )
  :effect (and
    (not (update-status comp68))
    (update-status comp69)
    (not (rebooted comp68))
    (probabilistic 9/10 (and (running comp68)) 1/10 (and))
  )
)
(:action update-status-comp68-all-on
  :parameters ()
  :precondition (and
    (update-status comp68)
    (not (rebooted comp68))
    (all-on comp68)
  )
  :effect (and
    (not (update-status comp68))
    (update-status comp69)
    (not (all-on comp68))
    (probabilistic 1/20 (and (not (running comp68))))
  )
)
(:action update-status-comp68-one-off
  :parameters ()
  :precondition (and
    (update-status comp68)
    (not (rebooted comp68))
    (one-off comp68)
  )
  :effect (and
    (not (update-status comp68))
    (update-status comp69)
    (not (one-off comp68))
    (probabilistic 1/4 (and (not (running comp68))))
  )
)
(:action update-status-comp69-rebooted
  :parameters ()
  :precondition (and
    (update-status comp69)
    (rebooted comp69)
  )
  :effect (and
    (not (update-status comp69))
    (update-status comp70)
    (not (rebooted comp69))
    (probabilistic 9/10 (and (running comp69)) 1/10 (and))
  )
)
(:action update-status-comp69-all-on
  :parameters ()
  :precondition (and
    (update-status comp69)
    (not (rebooted comp69))
    (all-on comp69)
  )
  :effect (and
    (not (update-status comp69))
    (update-status comp70)
    (not (all-on comp69))
    (probabilistic 1/20 (and (not (running comp69))))
  )
)
(:action update-status-comp69-one-off
  :parameters ()
  :precondition (and
    (update-status comp69)
    (not (rebooted comp69))
    (one-off comp69)
  )
  :effect (and
    (not (update-status comp69))
    (update-status comp70)
    (not (one-off comp69))
    (probabilistic 1/4 (and (not (running comp69))))
  )
)
(:action update-status-comp70-rebooted
  :parameters ()
  :precondition (and
    (update-status comp70)
    (rebooted comp70)
  )
  :effect (and
    (not (update-status comp70))
    (update-status comp71)
    (not (rebooted comp70))
    (probabilistic 9/10 (and (running comp70)) 1/10 (and))
  )
)
(:action update-status-comp70-all-on
  :parameters ()
  :precondition (and
    (update-status comp70)
    (not (rebooted comp70))
    (all-on comp70)
  )
  :effect (and
    (not (update-status comp70))
    (update-status comp71)
    (not (all-on comp70))
    (probabilistic 1/20 (and (not (running comp70))))
  )
)
(:action update-status-comp70-one-off
  :parameters ()
  :precondition (and
    (update-status comp70)
    (not (rebooted comp70))
    (one-off comp70)
  )
  :effect (and
    (not (update-status comp70))
    (update-status comp71)
    (not (one-off comp70))
    (probabilistic 1/4 (and (not (running comp70))))
  )
)
(:action update-status-comp71-rebooted
  :parameters ()
  :precondition (and
    (update-status comp71)
    (rebooted comp71)
  )
  :effect (and
    (not (update-status comp71))
    (update-status comp72)
    (not (rebooted comp71))
    (probabilistic 9/10 (and (running comp71)) 1/10 (and))
  )
)
(:action update-status-comp71-all-on
  :parameters ()
  :precondition (and
    (update-status comp71)
    (not (rebooted comp71))
    (all-on comp71)
  )
  :effect (and
    (not (update-status comp71))
    (update-status comp72)
    (not (all-on comp71))
    (probabilistic 1/20 (and (not (running comp71))))
  )
)
(:action update-status-comp71-one-off
  :parameters ()
  :precondition (and
    (update-status comp71)
    (not (rebooted comp71))
    (one-off comp71)
  )
  :effect (and
    (not (update-status comp71))
    (update-status comp72)
    (not (one-off comp71))
    (probabilistic 1/4 (and (not (running comp71))))
  )
)
(:action update-status-comp72-rebooted
  :parameters ()
  :precondition (and
    (update-status comp72)
    (rebooted comp72)
  )
  :effect (and
    (not (update-status comp72))
    (update-status comp73)
    (not (rebooted comp72))
    (probabilistic 9/10 (and (running comp72)) 1/10 (and))
  )
)
(:action update-status-comp72-all-on
  :parameters ()
  :precondition (and
    (update-status comp72)
    (not (rebooted comp72))
    (all-on comp72)
  )
  :effect (and
    (not (update-status comp72))
    (update-status comp73)
    (not (all-on comp72))
    (probabilistic 1/20 (and (not (running comp72))))
  )
)
(:action update-status-comp72-one-off
  :parameters ()
  :precondition (and
    (update-status comp72)
    (not (rebooted comp72))
    (one-off comp72)
  )
  :effect (and
    (not (update-status comp72))
    (update-status comp73)
    (not (one-off comp72))
    (probabilistic 1/4 (and (not (running comp72))))
  )
)
(:action update-status-comp73-rebooted
  :parameters ()
  :precondition (and
    (update-status comp73)
    (rebooted comp73)
  )
  :effect (and
    (not (update-status comp73))
    (update-status comp74)
    (not (rebooted comp73))
    (probabilistic 9/10 (and (running comp73)) 1/10 (and))
  )
)
(:action update-status-comp73-all-on
  :parameters ()
  :precondition (and
    (update-status comp73)
    (not (rebooted comp73))
    (all-on comp73)
  )
  :effect (and
    (not (update-status comp73))
    (update-status comp74)
    (not (all-on comp73))
    (probabilistic 1/20 (and (not (running comp73))))
  )
)
(:action update-status-comp73-one-off
  :parameters ()
  :precondition (and
    (update-status comp73)
    (not (rebooted comp73))
    (one-off comp73)
  )
  :effect (and
    (not (update-status comp73))
    (update-status comp74)
    (not (one-off comp73))
    (probabilistic 1/4 (and (not (running comp73))))
  )
)
(:action update-status-comp74-rebooted
  :parameters ()
  :precondition (and
    (update-status comp74)
    (rebooted comp74)
  )
  :effect (and
    (not (update-status comp74))
    (update-status comp75)
    (not (rebooted comp74))
    (probabilistic 9/10 (and (running comp74)) 1/10 (and))
  )
)
(:action update-status-comp74-all-on
  :parameters ()
  :precondition (and
    (update-status comp74)
    (not (rebooted comp74))
    (all-on comp74)
  )
  :effect (and
    (not (update-status comp74))
    (update-status comp75)
    (not (all-on comp74))
    (probabilistic 1/20 (and (not (running comp74))))
  )
)
(:action update-status-comp74-one-off
  :parameters ()
  :precondition (and
    (update-status comp74)
    (not (rebooted comp74))
    (one-off comp74)
  )
  :effect (and
    (not (update-status comp74))
    (update-status comp75)
    (not (one-off comp74))
    (probabilistic 1/4 (and (not (running comp74))))
  )
)
(:action update-status-comp75-rebooted
  :parameters ()
  :precondition (and
    (update-status comp75)
    (rebooted comp75)
  )
  :effect (and
    (not (update-status comp75))
    (update-status comp76)
    (not (rebooted comp75))
    (probabilistic 9/10 (and (running comp75)) 1/10 (and))
  )
)
(:action update-status-comp75-all-on
  :parameters ()
  :precondition (and
    (update-status comp75)
    (not (rebooted comp75))
    (all-on comp75)
  )
  :effect (and
    (not (update-status comp75))
    (update-status comp76)
    (not (all-on comp75))
    (probabilistic 1/20 (and (not (running comp75))))
  )
)
(:action update-status-comp75-one-off
  :parameters ()
  :precondition (and
    (update-status comp75)
    (not (rebooted comp75))
    (one-off comp75)
  )
  :effect (and
    (not (update-status comp75))
    (update-status comp76)
    (not (one-off comp75))
    (probabilistic 1/4 (and (not (running comp75))))
  )
)
(:action update-status-comp76-rebooted
  :parameters ()
  :precondition (and
    (update-status comp76)
    (rebooted comp76)
  )
  :effect (and
    (not (update-status comp76))
    (update-status comp77)
    (not (rebooted comp76))
    (probabilistic 9/10 (and (running comp76)) 1/10 (and))
  )
)
(:action update-status-comp76-all-on
  :parameters ()
  :precondition (and
    (update-status comp76)
    (not (rebooted comp76))
    (all-on comp76)
  )
  :effect (and
    (not (update-status comp76))
    (update-status comp77)
    (not (all-on comp76))
    (probabilistic 1/20 (and (not (running comp76))))
  )
)
(:action update-status-comp76-one-off
  :parameters ()
  :precondition (and
    (update-status comp76)
    (not (rebooted comp76))
    (one-off comp76)
  )
  :effect (and
    (not (update-status comp76))
    (update-status comp77)
    (not (one-off comp76))
    (probabilistic 1/4 (and (not (running comp76))))
  )
)
(:action update-status-comp77-rebooted
  :parameters ()
  :precondition (and
    (update-status comp77)
    (rebooted comp77)
  )
  :effect (and
    (not (update-status comp77))
    (update-status comp78)
    (not (rebooted comp77))
    (probabilistic 9/10 (and (running comp77)) 1/10 (and))
  )
)
(:action update-status-comp77-all-on
  :parameters ()
  :precondition (and
    (update-status comp77)
    (not (rebooted comp77))
    (all-on comp77)
  )
  :effect (and
    (not (update-status comp77))
    (update-status comp78)
    (not (all-on comp77))
    (probabilistic 1/20 (and (not (running comp77))))
  )
)
(:action update-status-comp77-one-off
  :parameters ()
  :precondition (and
    (update-status comp77)
    (not (rebooted comp77))
    (one-off comp77)
  )
  :effect (and
    (not (update-status comp77))
    (update-status comp78)
    (not (one-off comp77))
    (probabilistic 1/4 (and (not (running comp77))))
  )
)
(:action update-status-comp78-rebooted
  :parameters ()
  :precondition (and
    (update-status comp78)
    (rebooted comp78)
  )
  :effect (and
    (not (update-status comp78))
    (update-status comp79)
    (not (rebooted comp78))
    (probabilistic 9/10 (and (running comp78)) 1/10 (and))
  )
)
(:action update-status-comp78-all-on
  :parameters ()
  :precondition (and
    (update-status comp78)
    (not (rebooted comp78))
    (all-on comp78)
  )
  :effect (and
    (not (update-status comp78))
    (update-status comp79)
    (not (all-on comp78))
    (probabilistic 1/20 (and (not (running comp78))))
  )
)
(:action update-status-comp78-one-off
  :parameters ()
  :precondition (and
    (update-status comp78)
    (not (rebooted comp78))
    (one-off comp78)
  )
  :effect (and
    (not (update-status comp78))
    (update-status comp79)
    (not (one-off comp78))
    (probabilistic 1/4 (and (not (running comp78))))
  )
)
(:action update-status-comp79-rebooted
  :parameters ()
  :precondition (and
    (update-status comp79)
    (rebooted comp79)
  )
  :effect (and
    (not (update-status comp79))
    (update-status comp80)
    (not (rebooted comp79))
    (probabilistic 9/10 (and (running comp79)) 1/10 (and))
  )
)
(:action update-status-comp79-all-on
  :parameters ()
  :precondition (and
    (update-status comp79)
    (not (rebooted comp79))
    (all-on comp79)
  )
  :effect (and
    (not (update-status comp79))
    (update-status comp80)
    (not (all-on comp79))
    (probabilistic 1/20 (and (not (running comp79))))
  )
)
(:action update-status-comp79-one-off
  :parameters ()
  :precondition (and
    (update-status comp79)
    (not (rebooted comp79))
    (one-off comp79)
  )
  :effect (and
    (not (update-status comp79))
    (update-status comp80)
    (not (one-off comp79))
    (probabilistic 1/4 (and (not (running comp79))))
  )
)
(:action update-status-comp80-rebooted
  :parameters ()
  :precondition (and
    (update-status comp80)
    (rebooted comp80)
  )
  :effect (and
    (not (update-status comp80))
    (update-status comp81)
    (not (rebooted comp80))
    (probabilistic 9/10 (and (running comp80)) 1/10 (and))
  )
)
(:action update-status-comp80-all-on
  :parameters ()
  :precondition (and
    (update-status comp80)
    (not (rebooted comp80))
    (all-on comp80)
  )
  :effect (and
    (not (update-status comp80))
    (update-status comp81)
    (not (all-on comp80))
    (probabilistic 1/20 (and (not (running comp80))))
  )
)
(:action update-status-comp80-one-off
  :parameters ()
  :precondition (and
    (update-status comp80)
    (not (rebooted comp80))
    (one-off comp80)
  )
  :effect (and
    (not (update-status comp80))
    (update-status comp81)
    (not (one-off comp80))
    (probabilistic 1/4 (and (not (running comp80))))
  )
)
(:action update-status-comp81-rebooted
  :parameters ()
  :precondition (and
    (update-status comp81)
    (rebooted comp81)
  )
  :effect (and
    (not (update-status comp81))
    (update-status comp82)
    (not (rebooted comp81))
    (probabilistic 9/10 (and (running comp81)) 1/10 (and))
  )
)
(:action update-status-comp81-all-on
  :parameters ()
  :precondition (and
    (update-status comp81)
    (not (rebooted comp81))
    (all-on comp81)
  )
  :effect (and
    (not (update-status comp81))
    (update-status comp82)
    (not (all-on comp81))
    (probabilistic 1/20 (and (not (running comp81))))
  )
)
(:action update-status-comp81-one-off
  :parameters ()
  :precondition (and
    (update-status comp81)
    (not (rebooted comp81))
    (one-off comp81)
  )
  :effect (and
    (not (update-status comp81))
    (update-status comp82)
    (not (one-off comp81))
    (probabilistic 1/4 (and (not (running comp81))))
  )
)
(:action update-status-comp82-rebooted
  :parameters ()
  :precondition (and
    (update-status comp82)
    (rebooted comp82)
  )
  :effect (and
    (not (update-status comp82))
    (update-status comp83)
    (not (rebooted comp82))
    (probabilistic 9/10 (and (running comp82)) 1/10 (and))
  )
)
(:action update-status-comp82-all-on
  :parameters ()
  :precondition (and
    (update-status comp82)
    (not (rebooted comp82))
    (all-on comp82)
  )
  :effect (and
    (not (update-status comp82))
    (update-status comp83)
    (not (all-on comp82))
    (probabilistic 1/20 (and (not (running comp82))))
  )
)
(:action update-status-comp82-one-off
  :parameters ()
  :precondition (and
    (update-status comp82)
    (not (rebooted comp82))
    (one-off comp82)
  )
  :effect (and
    (not (update-status comp82))
    (update-status comp83)
    (not (one-off comp82))
    (probabilistic 1/4 (and (not (running comp82))))
  )
)
(:action update-status-comp83-rebooted
  :parameters ()
  :precondition (and
    (update-status comp83)
    (rebooted comp83)
  )
  :effect (and
    (not (update-status comp83))
    (update-status comp84)
    (not (rebooted comp83))
    (probabilistic 9/10 (and (running comp83)) 1/10 (and))
  )
)
(:action update-status-comp83-all-on
  :parameters ()
  :precondition (and
    (update-status comp83)
    (not (rebooted comp83))
    (all-on comp83)
  )
  :effect (and
    (not (update-status comp83))
    (update-status comp84)
    (not (all-on comp83))
    (probabilistic 1/20 (and (not (running comp83))))
  )
)
(:action update-status-comp83-one-off
  :parameters ()
  :precondition (and
    (update-status comp83)
    (not (rebooted comp83))
    (one-off comp83)
  )
  :effect (and
    (not (update-status comp83))
    (update-status comp84)
    (not (one-off comp83))
    (probabilistic 1/4 (and (not (running comp83))))
  )
)
(:action update-status-comp84-rebooted
  :parameters ()
  :precondition (and
    (update-status comp84)
    (rebooted comp84)
  )
  :effect (and
    (not (update-status comp84))
    (update-status comp85)
    (not (rebooted comp84))
    (probabilistic 9/10 (and (running comp84)) 1/10 (and))
  )
)
(:action update-status-comp84-all-on
  :parameters ()
  :precondition (and
    (update-status comp84)
    (not (rebooted comp84))
    (all-on comp84)
  )
  :effect (and
    (not (update-status comp84))
    (update-status comp85)
    (not (all-on comp84))
    (probabilistic 1/20 (and (not (running comp84))))
  )
)
(:action update-status-comp84-one-off
  :parameters ()
  :precondition (and
    (update-status comp84)
    (not (rebooted comp84))
    (one-off comp84)
  )
  :effect (and
    (not (update-status comp84))
    (update-status comp85)
    (not (one-off comp84))
    (probabilistic 1/4 (and (not (running comp84))))
  )
)
(:action update-status-comp85-rebooted
  :parameters ()
  :precondition (and
    (update-status comp85)
    (rebooted comp85)
  )
  :effect (and
    (not (update-status comp85))
    (update-status comp86)
    (not (rebooted comp85))
    (probabilistic 9/10 (and (running comp85)) 1/10 (and))
  )
)
(:action update-status-comp85-all-on
  :parameters ()
  :precondition (and
    (update-status comp85)
    (not (rebooted comp85))
    (all-on comp85)
  )
  :effect (and
    (not (update-status comp85))
    (update-status comp86)
    (not (all-on comp85))
    (probabilistic 1/20 (and (not (running comp85))))
  )
)
(:action update-status-comp85-one-off
  :parameters ()
  :precondition (and
    (update-status comp85)
    (not (rebooted comp85))
    (one-off comp85)
  )
  :effect (and
    (not (update-status comp85))
    (update-status comp86)
    (not (one-off comp85))
    (probabilistic 1/4 (and (not (running comp85))))
  )
)
(:action update-status-comp86-rebooted
  :parameters ()
  :precondition (and
    (update-status comp86)
    (rebooted comp86)
  )
  :effect (and
    (not (update-status comp86))
    (update-status comp87)
    (not (rebooted comp86))
    (probabilistic 9/10 (and (running comp86)) 1/10 (and))
  )
)
(:action update-status-comp86-all-on
  :parameters ()
  :precondition (and
    (update-status comp86)
    (not (rebooted comp86))
    (all-on comp86)
  )
  :effect (and
    (not (update-status comp86))
    (update-status comp87)
    (not (all-on comp86))
    (probabilistic 1/20 (and (not (running comp86))))
  )
)
(:action update-status-comp86-one-off
  :parameters ()
  :precondition (and
    (update-status comp86)
    (not (rebooted comp86))
    (one-off comp86)
  )
  :effect (and
    (not (update-status comp86))
    (update-status comp87)
    (not (one-off comp86))
    (probabilistic 1/4 (and (not (running comp86))))
  )
)
(:action update-status-comp87-rebooted
  :parameters ()
  :precondition (and
    (update-status comp87)
    (rebooted comp87)
  )
  :effect (and
    (not (update-status comp87))
    (update-status comp88)
    (not (rebooted comp87))
    (probabilistic 9/10 (and (running comp87)) 1/10 (and))
  )
)
(:action update-status-comp87-all-on
  :parameters ()
  :precondition (and
    (update-status comp87)
    (not (rebooted comp87))
    (all-on comp87)
  )
  :effect (and
    (not (update-status comp87))
    (update-status comp88)
    (not (all-on comp87))
    (probabilistic 1/20 (and (not (running comp87))))
  )
)
(:action update-status-comp87-one-off
  :parameters ()
  :precondition (and
    (update-status comp87)
    (not (rebooted comp87))
    (one-off comp87)
  )
  :effect (and
    (not (update-status comp87))
    (update-status comp88)
    (not (one-off comp87))
    (probabilistic 1/4 (and (not (running comp87))))
  )
)
(:action update-status-comp88-rebooted
  :parameters ()
  :precondition (and
    (update-status comp88)
    (rebooted comp88)
  )
  :effect (and
    (not (update-status comp88))
    (update-status comp89)
    (not (rebooted comp88))
    (probabilistic 9/10 (and (running comp88)) 1/10 (and))
  )
)
(:action update-status-comp88-all-on
  :parameters ()
  :precondition (and
    (update-status comp88)
    (not (rebooted comp88))
    (all-on comp88)
  )
  :effect (and
    (not (update-status comp88))
    (update-status comp89)
    (not (all-on comp88))
    (probabilistic 1/20 (and (not (running comp88))))
  )
)
(:action update-status-comp88-one-off
  :parameters ()
  :precondition (and
    (update-status comp88)
    (not (rebooted comp88))
    (one-off comp88)
  )
  :effect (and
    (not (update-status comp88))
    (update-status comp89)
    (not (one-off comp88))
    (probabilistic 1/4 (and (not (running comp88))))
  )
)
(:action update-status-comp89-rebooted
  :parameters ()
  :precondition (and
    (update-status comp89)
    (rebooted comp89)
  )
  :effect (and
    (not (update-status comp89))
    (update-status comp90)
    (not (rebooted comp89))
    (probabilistic 9/10 (and (running comp89)) 1/10 (and))
  )
)
(:action update-status-comp89-all-on
  :parameters ()
  :precondition (and
    (update-status comp89)
    (not (rebooted comp89))
    (all-on comp89)
  )
  :effect (and
    (not (update-status comp89))
    (update-status comp90)
    (not (all-on comp89))
    (probabilistic 1/20 (and (not (running comp89))))
  )
)
(:action update-status-comp89-one-off
  :parameters ()
  :precondition (and
    (update-status comp89)
    (not (rebooted comp89))
    (one-off comp89)
  )
  :effect (and
    (not (update-status comp89))
    (update-status comp90)
    (not (one-off comp89))
    (probabilistic 1/4 (and (not (running comp89))))
  )
)
(:action update-status-comp90-rebooted
  :parameters ()
  :precondition (and
    (update-status comp90)
    (rebooted comp90)
  )
  :effect (and
    (not (update-status comp90))
    (update-status comp91)
    (not (rebooted comp90))
    (probabilistic 9/10 (and (running comp90)) 1/10 (and))
  )
)
(:action update-status-comp90-all-on
  :parameters ()
  :precondition (and
    (update-status comp90)
    (not (rebooted comp90))
    (all-on comp90)
  )
  :effect (and
    (not (update-status comp90))
    (update-status comp91)
    (not (all-on comp90))
    (probabilistic 1/20 (and (not (running comp90))))
  )
)
(:action update-status-comp90-one-off
  :parameters ()
  :precondition (and
    (update-status comp90)
    (not (rebooted comp90))
    (one-off comp90)
  )
  :effect (and
    (not (update-status comp90))
    (update-status comp91)
    (not (one-off comp90))
    (probabilistic 1/4 (and (not (running comp90))))
  )
)
(:action update-status-comp91-rebooted
  :parameters ()
  :precondition (and
    (update-status comp91)
    (rebooted comp91)
  )
  :effect (and
    (not (update-status comp91))
    (update-status comp92)
    (not (rebooted comp91))
    (probabilistic 9/10 (and (running comp91)) 1/10 (and))
  )
)
(:action update-status-comp91-all-on
  :parameters ()
  :precondition (and
    (update-status comp91)
    (not (rebooted comp91))
    (all-on comp91)
  )
  :effect (and
    (not (update-status comp91))
    (update-status comp92)
    (not (all-on comp91))
    (probabilistic 1/20 (and (not (running comp91))))
  )
)
(:action update-status-comp91-one-off
  :parameters ()
  :precondition (and
    (update-status comp91)
    (not (rebooted comp91))
    (one-off comp91)
  )
  :effect (and
    (not (update-status comp91))
    (update-status comp92)
    (not (one-off comp91))
    (probabilistic 1/4 (and (not (running comp91))))
  )
)
(:action update-status-comp92-rebooted
  :parameters ()
  :precondition (and
    (update-status comp92)
    (rebooted comp92)
  )
  :effect (and
    (not (update-status comp92))
    (update-status comp93)
    (not (rebooted comp92))
    (probabilistic 9/10 (and (running comp92)) 1/10 (and))
  )
)
(:action update-status-comp92-all-on
  :parameters ()
  :precondition (and
    (update-status comp92)
    (not (rebooted comp92))
    (all-on comp92)
  )
  :effect (and
    (not (update-status comp92))
    (update-status comp93)
    (not (all-on comp92))
    (probabilistic 1/20 (and (not (running comp92))))
  )
)
(:action update-status-comp92-one-off
  :parameters ()
  :precondition (and
    (update-status comp92)
    (not (rebooted comp92))
    (one-off comp92)
  )
  :effect (and
    (not (update-status comp92))
    (update-status comp93)
    (not (one-off comp92))
    (probabilistic 1/4 (and (not (running comp92))))
  )
)
(:action update-status-comp93-rebooted
  :parameters ()
  :precondition (and
    (update-status comp93)
    (rebooted comp93)
  )
  :effect (and
    (not (update-status comp93))
    (update-status comp94)
    (not (rebooted comp93))
    (probabilistic 9/10 (and (running comp93)) 1/10 (and))
  )
)
(:action update-status-comp93-all-on
  :parameters ()
  :precondition (and
    (update-status comp93)
    (not (rebooted comp93))
    (all-on comp93)
  )
  :effect (and
    (not (update-status comp93))
    (update-status comp94)
    (not (all-on comp93))
    (probabilistic 1/20 (and (not (running comp93))))
  )
)
(:action update-status-comp93-one-off
  :parameters ()
  :precondition (and
    (update-status comp93)
    (not (rebooted comp93))
    (one-off comp93)
  )
  :effect (and
    (not (update-status comp93))
    (update-status comp94)
    (not (one-off comp93))
    (probabilistic 1/4 (and (not (running comp93))))
  )
)
(:action update-status-comp94-rebooted
  :parameters ()
  :precondition (and
    (update-status comp94)
    (rebooted comp94)
  )
  :effect (and
    (not (update-status comp94))
    (update-status comp95)
    (not (rebooted comp94))
    (probabilistic 9/10 (and (running comp94)) 1/10 (and))
  )
)
(:action update-status-comp94-all-on
  :parameters ()
  :precondition (and
    (update-status comp94)
    (not (rebooted comp94))
    (all-on comp94)
  )
  :effect (and
    (not (update-status comp94))
    (update-status comp95)
    (not (all-on comp94))
    (probabilistic 1/20 (and (not (running comp94))))
  )
)
(:action update-status-comp94-one-off
  :parameters ()
  :precondition (and
    (update-status comp94)
    (not (rebooted comp94))
    (one-off comp94)
  )
  :effect (and
    (not (update-status comp94))
    (update-status comp95)
    (not (one-off comp94))
    (probabilistic 1/4 (and (not (running comp94))))
  )
)
(:action update-status-comp95-rebooted
  :parameters ()
  :precondition (and
    (update-status comp95)
    (rebooted comp95)
  )
  :effect (and
    (not (update-status comp95))
    (update-status comp96)
    (not (rebooted comp95))
    (probabilistic 9/10 (and (running comp95)) 1/10 (and))
  )
)
(:action update-status-comp95-all-on
  :parameters ()
  :precondition (and
    (update-status comp95)
    (not (rebooted comp95))
    (all-on comp95)
  )
  :effect (and
    (not (update-status comp95))
    (update-status comp96)
    (not (all-on comp95))
    (probabilistic 1/20 (and (not (running comp95))))
  )
)
(:action update-status-comp95-one-off
  :parameters ()
  :precondition (and
    (update-status comp95)
    (not (rebooted comp95))
    (one-off comp95)
  )
  :effect (and
    (not (update-status comp95))
    (update-status comp96)
    (not (one-off comp95))
    (probabilistic 1/4 (and (not (running comp95))))
  )
)
(:action update-status-comp96-rebooted
  :parameters ()
  :precondition (and
    (update-status comp96)
    (rebooted comp96)
  )
  :effect (and
    (not (update-status comp96))
    (update-status comp97)
    (not (rebooted comp96))
    (probabilistic 9/10 (and (running comp96)) 1/10 (and))
  )
)
(:action update-status-comp96-all-on
  :parameters ()
  :precondition (and
    (update-status comp96)
    (not (rebooted comp96))
    (all-on comp96)
  )
  :effect (and
    (not (update-status comp96))
    (update-status comp97)
    (not (all-on comp96))
    (probabilistic 1/20 (and (not (running comp96))))
  )
)
(:action update-status-comp96-one-off
  :parameters ()
  :precondition (and
    (update-status comp96)
    (not (rebooted comp96))
    (one-off comp96)
  )
  :effect (and
    (not (update-status comp96))
    (update-status comp97)
    (not (one-off comp96))
    (probabilistic 1/4 (and (not (running comp96))))
  )
)
(:action update-status-comp97-rebooted
  :parameters ()
  :precondition (and
    (update-status comp97)
    (rebooted comp97)
  )
  :effect (and
    (not (update-status comp97))
    (update-status comp98)
    (not (rebooted comp97))
    (probabilistic 9/10 (and (running comp97)) 1/10 (and))
  )
)
(:action update-status-comp97-all-on
  :parameters ()
  :precondition (and
    (update-status comp97)
    (not (rebooted comp97))
    (all-on comp97)
  )
  :effect (and
    (not (update-status comp97))
    (update-status comp98)
    (not (all-on comp97))
    (probabilistic 1/20 (and (not (running comp97))))
  )
)
(:action update-status-comp97-one-off
  :parameters ()
  :precondition (and
    (update-status comp97)
    (not (rebooted comp97))
    (one-off comp97)
  )
  :effect (and
    (not (update-status comp97))
    (update-status comp98)
    (not (one-off comp97))
    (probabilistic 1/4 (and (not (running comp97))))
  )
)
(:action update-status-comp98-rebooted
  :parameters ()
  :precondition (and
    (update-status comp98)
    (rebooted comp98)
  )
  :effect (and
    (not (update-status comp98))
    (update-status comp99)
    (not (rebooted comp98))
    (probabilistic 9/10 (and (running comp98)) 1/10 (and))
  )
)
(:action update-status-comp98-all-on
  :parameters ()
  :precondition (and
    (update-status comp98)
    (not (rebooted comp98))
    (all-on comp98)
  )
  :effect (and
    (not (update-status comp98))
    (update-status comp99)
    (not (all-on comp98))
    (probabilistic 1/20 (and (not (running comp98))))
  )
)
(:action update-status-comp98-one-off
  :parameters ()
  :precondition (and
    (update-status comp98)
    (not (rebooted comp98))
    (one-off comp98)
  )
  :effect (and
    (not (update-status comp98))
    (update-status comp99)
    (not (one-off comp98))
    (probabilistic 1/4 (and (not (running comp98))))
  )
)
(:action update-status-comp99-rebooted
  :parameters ()
  :precondition (and
    (update-status comp99)
    (rebooted comp99)
  )
  :effect (and
    (not (update-status comp99))
    (update-status comp100)
    (not (rebooted comp99))
    (probabilistic 9/10 (and (running comp99)) 1/10 (and))
  )
)
(:action update-status-comp99-all-on
  :parameters ()
  :precondition (and
    (update-status comp99)
    (not (rebooted comp99))
    (all-on comp99)
  )
  :effect (and
    (not (update-status comp99))
    (update-status comp100)
    (not (all-on comp99))
    (probabilistic 1/20 (and (not (running comp99))))
  )
)
(:action update-status-comp99-one-off
  :parameters ()
  :precondition (and
    (update-status comp99)
    (not (rebooted comp99))
    (one-off comp99)
  )
  :effect (and
    (not (update-status comp99))
    (update-status comp100)
    (not (one-off comp99))
    (probabilistic 1/4 (and (not (running comp99))))
  )
)
(:action update-status-comp100-rebooted
  :parameters ()
  :precondition (and
    (update-status comp100)
    (rebooted comp100)
  )
  :effect (and
    (not (update-status comp100))
    (update-status comp101)
    (not (rebooted comp100))
    (probabilistic 9/10 (and (running comp100)) 1/10 (and))
  )
)
(:action update-status-comp100-all-on
  :parameters ()
  :precondition (and
    (update-status comp100)
    (not (rebooted comp100))
    (all-on comp100)
  )
  :effect (and
    (not (update-status comp100))
    (update-status comp101)
    (not (all-on comp100))
    (probabilistic 1/20 (and (not (running comp100))))
  )
)
(:action update-status-comp100-one-off
  :parameters ()
  :precondition (and
    (update-status comp100)
    (not (rebooted comp100))
    (one-off comp100)
  )
  :effect (and
    (not (update-status comp100))
    (update-status comp101)
    (not (one-off comp100))
    (probabilistic 1/4 (and (not (running comp100))))
  )
)
(:action update-status-comp101-rebooted
  :parameters ()
  :precondition (and
    (update-status comp101)
    (rebooted comp101)
  )
  :effect (and
    (not (update-status comp101))
    (update-status comp102)
    (not (rebooted comp101))
    (probabilistic 9/10 (and (running comp101)) 1/10 (and))
  )
)
(:action update-status-comp101-all-on
  :parameters ()
  :precondition (and
    (update-status comp101)
    (not (rebooted comp101))
    (all-on comp101)
  )
  :effect (and
    (not (update-status comp101))
    (update-status comp102)
    (not (all-on comp101))
    (probabilistic 1/20 (and (not (running comp101))))
  )
)
(:action update-status-comp101-one-off
  :parameters ()
  :precondition (and
    (update-status comp101)
    (not (rebooted comp101))
    (one-off comp101)
  )
  :effect (and
    (not (update-status comp101))
    (update-status comp102)
    (not (one-off comp101))
    (probabilistic 1/4 (and (not (running comp101))))
  )
)
(:action update-status-comp102-rebooted
  :parameters ()
  :precondition (and
    (update-status comp102)
    (rebooted comp102)
  )
  :effect (and
    (not (update-status comp102))
    (update-status comp103)
    (not (rebooted comp102))
    (probabilistic 9/10 (and (running comp102)) 1/10 (and))
  )
)
(:action update-status-comp102-all-on
  :parameters ()
  :precondition (and
    (update-status comp102)
    (not (rebooted comp102))
    (all-on comp102)
  )
  :effect (and
    (not (update-status comp102))
    (update-status comp103)
    (not (all-on comp102))
    (probabilistic 1/20 (and (not (running comp102))))
  )
)
(:action update-status-comp102-one-off
  :parameters ()
  :precondition (and
    (update-status comp102)
    (not (rebooted comp102))
    (one-off comp102)
  )
  :effect (and
    (not (update-status comp102))
    (update-status comp103)
    (not (one-off comp102))
    (probabilistic 1/4 (and (not (running comp102))))
  )
)
(:action update-status-comp103-rebooted
  :parameters ()
  :precondition (and
    (update-status comp103)
    (rebooted comp103)
  )
  :effect (and
    (not (update-status comp103))
    (update-status comp104)
    (not (rebooted comp103))
    (probabilistic 9/10 (and (running comp103)) 1/10 (and))
  )
)
(:action update-status-comp103-all-on
  :parameters ()
  :precondition (and
    (update-status comp103)
    (not (rebooted comp103))
    (all-on comp103)
  )
  :effect (and
    (not (update-status comp103))
    (update-status comp104)
    (not (all-on comp103))
    (probabilistic 1/20 (and (not (running comp103))))
  )
)
(:action update-status-comp103-one-off
  :parameters ()
  :precondition (and
    (update-status comp103)
    (not (rebooted comp103))
    (one-off comp103)
  )
  :effect (and
    (not (update-status comp103))
    (update-status comp104)
    (not (one-off comp103))
    (probabilistic 1/4 (and (not (running comp103))))
  )
)
(:action update-status-comp104-rebooted
  :parameters ()
  :precondition (and
    (update-status comp104)
    (rebooted comp104)
  )
  :effect (and
    (not (update-status comp104))
    (update-status comp105)
    (not (rebooted comp104))
    (probabilistic 9/10 (and (running comp104)) 1/10 (and))
  )
)
(:action update-status-comp104-all-on
  :parameters ()
  :precondition (and
    (update-status comp104)
    (not (rebooted comp104))
    (all-on comp104)
  )
  :effect (and
    (not (update-status comp104))
    (update-status comp105)
    (not (all-on comp104))
    (probabilistic 1/20 (and (not (running comp104))))
  )
)
(:action update-status-comp104-one-off
  :parameters ()
  :precondition (and
    (update-status comp104)
    (not (rebooted comp104))
    (one-off comp104)
  )
  :effect (and
    (not (update-status comp104))
    (update-status comp105)
    (not (one-off comp104))
    (probabilistic 1/4 (and (not (running comp104))))
  )
)
(:action update-status-comp105-rebooted
  :parameters ()
  :precondition (and
    (update-status comp105)
    (rebooted comp105)
  )
  :effect (and
    (not (update-status comp105))
    (update-status comp106)
    (not (rebooted comp105))
    (probabilistic 9/10 (and (running comp105)) 1/10 (and))
  )
)
(:action update-status-comp105-all-on
  :parameters ()
  :precondition (and
    (update-status comp105)
    (not (rebooted comp105))
    (all-on comp105)
  )
  :effect (and
    (not (update-status comp105))
    (update-status comp106)
    (not (all-on comp105))
    (probabilistic 1/20 (and (not (running comp105))))
  )
)
(:action update-status-comp105-one-off
  :parameters ()
  :precondition (and
    (update-status comp105)
    (not (rebooted comp105))
    (one-off comp105)
  )
  :effect (and
    (not (update-status comp105))
    (update-status comp106)
    (not (one-off comp105))
    (probabilistic 1/4 (and (not (running comp105))))
  )
)
(:action update-status-comp106-rebooted
  :parameters ()
  :precondition (and
    (update-status comp106)
    (rebooted comp106)
  )
  :effect (and
    (not (update-status comp106))
    (update-status comp107)
    (not (rebooted comp106))
    (probabilistic 9/10 (and (running comp106)) 1/10 (and))
  )
)
(:action update-status-comp106-all-on
  :parameters ()
  :precondition (and
    (update-status comp106)
    (not (rebooted comp106))
    (all-on comp106)
  )
  :effect (and
    (not (update-status comp106))
    (update-status comp107)
    (not (all-on comp106))
    (probabilistic 1/20 (and (not (running comp106))))
  )
)
(:action update-status-comp106-one-off
  :parameters ()
  :precondition (and
    (update-status comp106)
    (not (rebooted comp106))
    (one-off comp106)
  )
  :effect (and
    (not (update-status comp106))
    (update-status comp107)
    (not (one-off comp106))
    (probabilistic 1/4 (and (not (running comp106))))
  )
)
(:action update-status-comp107-rebooted
  :parameters ()
  :precondition (and
    (update-status comp107)
    (rebooted comp107)
  )
  :effect (and
    (not (update-status comp107))
    (update-status comp108)
    (not (rebooted comp107))
    (probabilistic 9/10 (and (running comp107)) 1/10 (and))
  )
)
(:action update-status-comp107-all-on
  :parameters ()
  :precondition (and
    (update-status comp107)
    (not (rebooted comp107))
    (all-on comp107)
  )
  :effect (and
    (not (update-status comp107))
    (update-status comp108)
    (not (all-on comp107))
    (probabilistic 1/20 (and (not (running comp107))))
  )
)
(:action update-status-comp107-one-off
  :parameters ()
  :precondition (and
    (update-status comp107)
    (not (rebooted comp107))
    (one-off comp107)
  )
  :effect (and
    (not (update-status comp107))
    (update-status comp108)
    (not (one-off comp107))
    (probabilistic 1/4 (and (not (running comp107))))
  )
)
(:action update-status-comp108-rebooted
  :parameters ()
  :precondition (and
    (update-status comp108)
    (rebooted comp108)
  )
  :effect (and
    (not (update-status comp108))
    (update-status comp109)
    (not (rebooted comp108))
    (probabilistic 9/10 (and (running comp108)) 1/10 (and))
  )
)
(:action update-status-comp108-all-on
  :parameters ()
  :precondition (and
    (update-status comp108)
    (not (rebooted comp108))
    (all-on comp108)
  )
  :effect (and
    (not (update-status comp108))
    (update-status comp109)
    (not (all-on comp108))
    (probabilistic 1/20 (and (not (running comp108))))
  )
)
(:action update-status-comp108-one-off
  :parameters ()
  :precondition (and
    (update-status comp108)
    (not (rebooted comp108))
    (one-off comp108)
  )
  :effect (and
    (not (update-status comp108))
    (update-status comp109)
    (not (one-off comp108))
    (probabilistic 1/4 (and (not (running comp108))))
  )
)
(:action update-status-comp109-rebooted
  :parameters ()
  :precondition (and
    (update-status comp109)
    (rebooted comp109)
  )
  :effect (and
    (not (update-status comp109))
    (update-status comp110)
    (not (rebooted comp109))
    (probabilistic 9/10 (and (running comp109)) 1/10 (and))
  )
)
(:action update-status-comp109-all-on
  :parameters ()
  :precondition (and
    (update-status comp109)
    (not (rebooted comp109))
    (all-on comp109)
  )
  :effect (and
    (not (update-status comp109))
    (update-status comp110)
    (not (all-on comp109))
    (probabilistic 1/20 (and (not (running comp109))))
  )
)
(:action update-status-comp109-one-off
  :parameters ()
  :precondition (and
    (update-status comp109)
    (not (rebooted comp109))
    (one-off comp109)
  )
  :effect (and
    (not (update-status comp109))
    (update-status comp110)
    (not (one-off comp109))
    (probabilistic 1/4 (and (not (running comp109))))
  )
)
(:action update-status-comp110-rebooted
  :parameters ()
  :precondition (and
    (update-status comp110)
    (rebooted comp110)
  )
  :effect (and
    (not (update-status comp110))
    (update-status comp111)
    (not (rebooted comp110))
    (probabilistic 9/10 (and (running comp110)) 1/10 (and))
  )
)
(:action update-status-comp110-all-on
  :parameters ()
  :precondition (and
    (update-status comp110)
    (not (rebooted comp110))
    (all-on comp110)
  )
  :effect (and
    (not (update-status comp110))
    (update-status comp111)
    (not (all-on comp110))
    (probabilistic 1/20 (and (not (running comp110))))
  )
)
(:action update-status-comp110-one-off
  :parameters ()
  :precondition (and
    (update-status comp110)
    (not (rebooted comp110))
    (one-off comp110)
  )
  :effect (and
    (not (update-status comp110))
    (update-status comp111)
    (not (one-off comp110))
    (probabilistic 1/4 (and (not (running comp110))))
  )
)
(:action update-status-comp111-rebooted
  :parameters ()
  :precondition (and
    (update-status comp111)
    (rebooted comp111)
  )
  :effect (and
    (not (update-status comp111))
    (update-status comp112)
    (not (rebooted comp111))
    (probabilistic 9/10 (and (running comp111)) 1/10 (and))
  )
)
(:action update-status-comp111-all-on
  :parameters ()
  :precondition (and
    (update-status comp111)
    (not (rebooted comp111))
    (all-on comp111)
  )
  :effect (and
    (not (update-status comp111))
    (update-status comp112)
    (not (all-on comp111))
    (probabilistic 1/20 (and (not (running comp111))))
  )
)
(:action update-status-comp111-one-off
  :parameters ()
  :precondition (and
    (update-status comp111)
    (not (rebooted comp111))
    (one-off comp111)
  )
  :effect (and
    (not (update-status comp111))
    (update-status comp112)
    (not (one-off comp111))
    (probabilistic 1/4 (and (not (running comp111))))
  )
)
(:action update-status-comp112-rebooted
  :parameters ()
  :precondition (and
    (update-status comp112)
    (rebooted comp112)
  )
  :effect (and
    (not (update-status comp112))
    (update-status comp113)
    (not (rebooted comp112))
    (probabilistic 9/10 (and (running comp112)) 1/10 (and))
  )
)
(:action update-status-comp112-all-on
  :parameters ()
  :precondition (and
    (update-status comp112)
    (not (rebooted comp112))
    (all-on comp112)
  )
  :effect (and
    (not (update-status comp112))
    (update-status comp113)
    (not (all-on comp112))
    (probabilistic 1/20 (and (not (running comp112))))
  )
)
(:action update-status-comp112-one-off
  :parameters ()
  :precondition (and
    (update-status comp112)
    (not (rebooted comp112))
    (one-off comp112)
  )
  :effect (and
    (not (update-status comp112))
    (update-status comp113)
    (not (one-off comp112))
    (probabilistic 1/4 (and (not (running comp112))))
  )
)
(:action update-status-comp113-rebooted
  :parameters ()
  :precondition (and
    (update-status comp113)
    (rebooted comp113)
  )
  :effect (and
    (not (update-status comp113))
    (update-status comp114)
    (not (rebooted comp113))
    (probabilistic 9/10 (and (running comp113)) 1/10 (and))
  )
)
(:action update-status-comp113-all-on
  :parameters ()
  :precondition (and
    (update-status comp113)
    (not (rebooted comp113))
    (all-on comp113)
  )
  :effect (and
    (not (update-status comp113))
    (update-status comp114)
    (not (all-on comp113))
    (probabilistic 1/20 (and (not (running comp113))))
  )
)
(:action update-status-comp113-one-off
  :parameters ()
  :precondition (and
    (update-status comp113)
    (not (rebooted comp113))
    (one-off comp113)
  )
  :effect (and
    (not (update-status comp113))
    (update-status comp114)
    (not (one-off comp113))
    (probabilistic 1/4 (and (not (running comp113))))
  )
)
(:action update-status-comp114-rebooted
  :parameters ()
  :precondition (and
    (update-status comp114)
    (rebooted comp114)
  )
  :effect (and
    (not (update-status comp114))
    (update-status comp115)
    (not (rebooted comp114))
    (probabilistic 9/10 (and (running comp114)) 1/10 (and))
  )
)
(:action update-status-comp114-all-on
  :parameters ()
  :precondition (and
    (update-status comp114)
    (not (rebooted comp114))
    (all-on comp114)
  )
  :effect (and
    (not (update-status comp114))
    (update-status comp115)
    (not (all-on comp114))
    (probabilistic 1/20 (and (not (running comp114))))
  )
)
(:action update-status-comp114-one-off
  :parameters ()
  :precondition (and
    (update-status comp114)
    (not (rebooted comp114))
    (one-off comp114)
  )
  :effect (and
    (not (update-status comp114))
    (update-status comp115)
    (not (one-off comp114))
    (probabilistic 1/4 (and (not (running comp114))))
  )
)
(:action update-status-comp115-rebooted
  :parameters ()
  :precondition (and
    (update-status comp115)
    (rebooted comp115)
  )
  :effect (and
    (not (update-status comp115))
    (update-status comp116)
    (not (rebooted comp115))
    (probabilistic 9/10 (and (running comp115)) 1/10 (and))
  )
)
(:action update-status-comp115-all-on
  :parameters ()
  :precondition (and
    (update-status comp115)
    (not (rebooted comp115))
    (all-on comp115)
  )
  :effect (and
    (not (update-status comp115))
    (update-status comp116)
    (not (all-on comp115))
    (probabilistic 1/20 (and (not (running comp115))))
  )
)
(:action update-status-comp115-one-off
  :parameters ()
  :precondition (and
    (update-status comp115)
    (not (rebooted comp115))
    (one-off comp115)
  )
  :effect (and
    (not (update-status comp115))
    (update-status comp116)
    (not (one-off comp115))
    (probabilistic 1/4 (and (not (running comp115))))
  )
)
(:action update-status-comp116-rebooted
  :parameters ()
  :precondition (and
    (update-status comp116)
    (rebooted comp116)
  )
  :effect (and
    (not (update-status comp116))
    (update-status comp117)
    (not (rebooted comp116))
    (probabilistic 9/10 (and (running comp116)) 1/10 (and))
  )
)
(:action update-status-comp116-all-on
  :parameters ()
  :precondition (and
    (update-status comp116)
    (not (rebooted comp116))
    (all-on comp116)
  )
  :effect (and
    (not (update-status comp116))
    (update-status comp117)
    (not (all-on comp116))
    (probabilistic 1/20 (and (not (running comp116))))
  )
)
(:action update-status-comp116-one-off
  :parameters ()
  :precondition (and
    (update-status comp116)
    (not (rebooted comp116))
    (one-off comp116)
  )
  :effect (and
    (not (update-status comp116))
    (update-status comp117)
    (not (one-off comp116))
    (probabilistic 1/4 (and (not (running comp116))))
  )
)
(:action update-status-comp117-rebooted
  :parameters ()
  :precondition (and
    (update-status comp117)
    (rebooted comp117)
  )
  :effect (and
    (not (update-status comp117))
    (update-status comp118)
    (not (rebooted comp117))
    (probabilistic 9/10 (and (running comp117)) 1/10 (and))
  )
)
(:action update-status-comp117-all-on
  :parameters ()
  :precondition (and
    (update-status comp117)
    (not (rebooted comp117))
    (all-on comp117)
  )
  :effect (and
    (not (update-status comp117))
    (update-status comp118)
    (not (all-on comp117))
    (probabilistic 1/20 (and (not (running comp117))))
  )
)
(:action update-status-comp117-one-off
  :parameters ()
  :precondition (and
    (update-status comp117)
    (not (rebooted comp117))
    (one-off comp117)
  )
  :effect (and
    (not (update-status comp117))
    (update-status comp118)
    (not (one-off comp117))
    (probabilistic 1/4 (and (not (running comp117))))
  )
)
(:action update-status-comp118-rebooted
  :parameters ()
  :precondition (and
    (update-status comp118)
    (rebooted comp118)
  )
  :effect (and
    (not (update-status comp118))
    (update-status comp119)
    (not (rebooted comp118))
    (probabilistic 9/10 (and (running comp118)) 1/10 (and))
  )
)
(:action update-status-comp118-all-on
  :parameters ()
  :precondition (and
    (update-status comp118)
    (not (rebooted comp118))
    (all-on comp118)
  )
  :effect (and
    (not (update-status comp118))
    (update-status comp119)
    (not (all-on comp118))
    (probabilistic 1/20 (and (not (running comp118))))
  )
)
(:action update-status-comp118-one-off
  :parameters ()
  :precondition (and
    (update-status comp118)
    (not (rebooted comp118))
    (one-off comp118)
  )
  :effect (and
    (not (update-status comp118))
    (update-status comp119)
    (not (one-off comp118))
    (probabilistic 1/4 (and (not (running comp118))))
  )
)
(:action update-status-comp119-rebooted
  :parameters ()
  :precondition (and
    (update-status comp119)
    (rebooted comp119)
  )
  :effect (and
    (not (update-status comp119))
    (update-status comp120)
    (not (rebooted comp119))
    (probabilistic 9/10 (and (running comp119)) 1/10 (and))
  )
)
(:action update-status-comp119-all-on
  :parameters ()
  :precondition (and
    (update-status comp119)
    (not (rebooted comp119))
    (all-on comp119)
  )
  :effect (and
    (not (update-status comp119))
    (update-status comp120)
    (not (all-on comp119))
    (probabilistic 1/20 (and (not (running comp119))))
  )
)
(:action update-status-comp119-one-off
  :parameters ()
  :precondition (and
    (update-status comp119)
    (not (rebooted comp119))
    (one-off comp119)
  )
  :effect (and
    (not (update-status comp119))
    (update-status comp120)
    (not (one-off comp119))
    (probabilistic 1/4 (and (not (running comp119))))
  )
)
(:action update-status-comp120-rebooted
  :parameters ()
  :precondition (and
    (update-status comp120)
    (rebooted comp120)
  )
  :effect (and
    (not (update-status comp120))
    (update-status comp121)
    (not (rebooted comp120))
    (probabilistic 9/10 (and (running comp120)) 1/10 (and))
  )
)
(:action update-status-comp120-all-on
  :parameters ()
  :precondition (and
    (update-status comp120)
    (not (rebooted comp120))
    (all-on comp120)
  )
  :effect (and
    (not (update-status comp120))
    (update-status comp121)
    (not (all-on comp120))
    (probabilistic 1/20 (and (not (running comp120))))
  )
)
(:action update-status-comp120-one-off
  :parameters ()
  :precondition (and
    (update-status comp120)
    (not (rebooted comp120))
    (one-off comp120)
  )
  :effect (and
    (not (update-status comp120))
    (update-status comp121)
    (not (one-off comp120))
    (probabilistic 1/4 (and (not (running comp120))))
  )
)
(:action update-status-comp121-rebooted
  :parameters ()
  :precondition (and
    (update-status comp121)
    (rebooted comp121)
  )
  :effect (and
    (not (update-status comp121))
    (update-status comp122)
    (not (rebooted comp121))
    (probabilistic 9/10 (and (running comp121)) 1/10 (and))
  )
)
(:action update-status-comp121-all-on
  :parameters ()
  :precondition (and
    (update-status comp121)
    (not (rebooted comp121))
    (all-on comp121)
  )
  :effect (and
    (not (update-status comp121))
    (update-status comp122)
    (not (all-on comp121))
    (probabilistic 1/20 (and (not (running comp121))))
  )
)
(:action update-status-comp121-one-off
  :parameters ()
  :precondition (and
    (update-status comp121)
    (not (rebooted comp121))
    (one-off comp121)
  )
  :effect (and
    (not (update-status comp121))
    (update-status comp122)
    (not (one-off comp121))
    (probabilistic 1/4 (and (not (running comp121))))
  )
)
(:action update-status-comp122-rebooted
  :parameters ()
  :precondition (and
    (update-status comp122)
    (rebooted comp122)
  )
  :effect (and
    (not (update-status comp122))
    (update-status comp123)
    (not (rebooted comp122))
    (probabilistic 9/10 (and (running comp122)) 1/10 (and))
  )
)
(:action update-status-comp122-all-on
  :parameters ()
  :precondition (and
    (update-status comp122)
    (not (rebooted comp122))
    (all-on comp122)
  )
  :effect (and
    (not (update-status comp122))
    (update-status comp123)
    (not (all-on comp122))
    (probabilistic 1/20 (and (not (running comp122))))
  )
)
(:action update-status-comp122-one-off
  :parameters ()
  :precondition (and
    (update-status comp122)
    (not (rebooted comp122))
    (one-off comp122)
  )
  :effect (and
    (not (update-status comp122))
    (update-status comp123)
    (not (one-off comp122))
    (probabilistic 1/4 (and (not (running comp122))))
  )
)
(:action update-status-comp123-rebooted
  :parameters ()
  :precondition (and
    (update-status comp123)
    (rebooted comp123)
  )
  :effect (and
    (not (update-status comp123))
    (update-status comp124)
    (not (rebooted comp123))
    (probabilistic 9/10 (and (running comp123)) 1/10 (and))
  )
)
(:action update-status-comp123-all-on
  :parameters ()
  :precondition (and
    (update-status comp123)
    (not (rebooted comp123))
    (all-on comp123)
  )
  :effect (and
    (not (update-status comp123))
    (update-status comp124)
    (not (all-on comp123))
    (probabilistic 1/20 (and (not (running comp123))))
  )
)
(:action update-status-comp123-one-off
  :parameters ()
  :precondition (and
    (update-status comp123)
    (not (rebooted comp123))
    (one-off comp123)
  )
  :effect (and
    (not (update-status comp123))
    (update-status comp124)
    (not (one-off comp123))
    (probabilistic 1/4 (and (not (running comp123))))
  )
)
(:action update-status-comp124-rebooted
  :parameters ()
  :precondition (and
    (update-status comp124)
    (rebooted comp124)
  )
  :effect (and
    (not (update-status comp124))
    (update-status comp125)
    (not (rebooted comp124))
    (probabilistic 9/10 (and (running comp124)) 1/10 (and))
  )
)
(:action update-status-comp124-all-on
  :parameters ()
  :precondition (and
    (update-status comp124)
    (not (rebooted comp124))
    (all-on comp124)
  )
  :effect (and
    (not (update-status comp124))
    (update-status comp125)
    (not (all-on comp124))
    (probabilistic 1/20 (and (not (running comp124))))
  )
)
(:action update-status-comp124-one-off
  :parameters ()
  :precondition (and
    (update-status comp124)
    (not (rebooted comp124))
    (one-off comp124)
  )
  :effect (and
    (not (update-status comp124))
    (update-status comp125)
    (not (one-off comp124))
    (probabilistic 1/4 (and (not (running comp124))))
  )
)
(:action update-status-comp125-rebooted
  :parameters ()
  :precondition (and
    (update-status comp125)
    (rebooted comp125)
  )
  :effect (and
    (not (update-status comp125))
    (update-status comp126)
    (not (rebooted comp125))
    (probabilistic 9/10 (and (running comp125)) 1/10 (and))
  )
)
(:action update-status-comp125-all-on
  :parameters ()
  :precondition (and
    (update-status comp125)
    (not (rebooted comp125))
    (all-on comp125)
  )
  :effect (and
    (not (update-status comp125))
    (update-status comp126)
    (not (all-on comp125))
    (probabilistic 1/20 (and (not (running comp125))))
  )
)
(:action update-status-comp125-one-off
  :parameters ()
  :precondition (and
    (update-status comp125)
    (not (rebooted comp125))
    (one-off comp125)
  )
  :effect (and
    (not (update-status comp125))
    (update-status comp126)
    (not (one-off comp125))
    (probabilistic 1/4 (and (not (running comp125))))
  )
)
(:action update-status-comp126-rebooted
  :parameters ()
  :precondition (and
    (update-status comp126)
    (rebooted comp126)
  )
  :effect (and
    (not (update-status comp126))
    (update-status comp127)
    (not (rebooted comp126))
    (probabilistic 9/10 (and (running comp126)) 1/10 (and))
  )
)
(:action update-status-comp126-all-on
  :parameters ()
  :precondition (and
    (update-status comp126)
    (not (rebooted comp126))
    (all-on comp126)
  )
  :effect (and
    (not (update-status comp126))
    (update-status comp127)
    (not (all-on comp126))
    (probabilistic 1/20 (and (not (running comp126))))
  )
)
(:action update-status-comp126-one-off
  :parameters ()
  :precondition (and
    (update-status comp126)
    (not (rebooted comp126))
    (one-off comp126)
  )
  :effect (and
    (not (update-status comp126))
    (update-status comp127)
    (not (one-off comp126))
    (probabilistic 1/4 (and (not (running comp126))))
  )
)
(:action update-status-comp127-rebooted
  :parameters ()
  :precondition (and
    (update-status comp127)
    (rebooted comp127)
  )
  :effect (and
    (not (update-status comp127))
    (update-status comp128)
    (not (rebooted comp127))
    (probabilistic 9/10 (and (running comp127)) 1/10 (and))
  )
)
(:action update-status-comp127-all-on
  :parameters ()
  :precondition (and
    (update-status comp127)
    (not (rebooted comp127))
    (all-on comp127)
  )
  :effect (and
    (not (update-status comp127))
    (update-status comp128)
    (not (all-on comp127))
    (probabilistic 1/20 (and (not (running comp127))))
  )
)
(:action update-status-comp127-one-off
  :parameters ()
  :precondition (and
    (update-status comp127)
    (not (rebooted comp127))
    (one-off comp127)
  )
  :effect (and
    (not (update-status comp127))
    (update-status comp128)
    (not (one-off comp127))
    (probabilistic 1/4 (and (not (running comp127))))
  )
)
(:action update-status-comp128-rebooted
  :parameters ()
  :precondition (and
    (update-status comp128)
    (rebooted comp128)
  )
  :effect (and
    (not (update-status comp128))
    (update-status comp129)
    (not (rebooted comp128))
    (probabilistic 9/10 (and (running comp128)) 1/10 (and))
  )
)
(:action update-status-comp128-all-on
  :parameters ()
  :precondition (and
    (update-status comp128)
    (not (rebooted comp128))
    (all-on comp128)
  )
  :effect (and
    (not (update-status comp128))
    (update-status comp129)
    (not (all-on comp128))
    (probabilistic 1/20 (and (not (running comp128))))
  )
)
(:action update-status-comp128-one-off
  :parameters ()
  :precondition (and
    (update-status comp128)
    (not (rebooted comp128))
    (one-off comp128)
  )
  :effect (and
    (not (update-status comp128))
    (update-status comp129)
    (not (one-off comp128))
    (probabilistic 1/4 (and (not (running comp128))))
  )
)
(:action update-status-comp129-rebooted
  :parameters ()
  :precondition (and
    (update-status comp129)
    (rebooted comp129)
  )
  :effect (and
    (not (update-status comp129))
    (update-status comp130)
    (not (rebooted comp129))
    (probabilistic 9/10 (and (running comp129)) 1/10 (and))
  )
)
(:action update-status-comp129-all-on
  :parameters ()
  :precondition (and
    (update-status comp129)
    (not (rebooted comp129))
    (all-on comp129)
  )
  :effect (and
    (not (update-status comp129))
    (update-status comp130)
    (not (all-on comp129))
    (probabilistic 1/20 (and (not (running comp129))))
  )
)
(:action update-status-comp129-one-off
  :parameters ()
  :precondition (and
    (update-status comp129)
    (not (rebooted comp129))
    (one-off comp129)
  )
  :effect (and
    (not (update-status comp129))
    (update-status comp130)
    (not (one-off comp129))
    (probabilistic 1/4 (and (not (running comp129))))
  )
)
(:action update-status-comp130-rebooted
  :parameters ()
  :precondition (and
    (update-status comp130)
    (rebooted comp130)
  )
  :effect (and
    (not (update-status comp130))
    (update-status comp131)
    (not (rebooted comp130))
    (probabilistic 9/10 (and (running comp130)) 1/10 (and))
  )
)
(:action update-status-comp130-all-on
  :parameters ()
  :precondition (and
    (update-status comp130)
    (not (rebooted comp130))
    (all-on comp130)
  )
  :effect (and
    (not (update-status comp130))
    (update-status comp131)
    (not (all-on comp130))
    (probabilistic 1/20 (and (not (running comp130))))
  )
)
(:action update-status-comp130-one-off
  :parameters ()
  :precondition (and
    (update-status comp130)
    (not (rebooted comp130))
    (one-off comp130)
  )
  :effect (and
    (not (update-status comp130))
    (update-status comp131)
    (not (one-off comp130))
    (probabilistic 1/4 (and (not (running comp130))))
  )
)
(:action update-status-comp131-rebooted
  :parameters ()
  :precondition (and
    (update-status comp131)
    (rebooted comp131)
  )
  :effect (and
    (not (update-status comp131))
    (update-status comp132)
    (not (rebooted comp131))
    (probabilistic 9/10 (and (running comp131)) 1/10 (and))
  )
)
(:action update-status-comp131-all-on
  :parameters ()
  :precondition (and
    (update-status comp131)
    (not (rebooted comp131))
    (all-on comp131)
  )
  :effect (and
    (not (update-status comp131))
    (update-status comp132)
    (not (all-on comp131))
    (probabilistic 1/20 (and (not (running comp131))))
  )
)
(:action update-status-comp131-one-off
  :parameters ()
  :precondition (and
    (update-status comp131)
    (not (rebooted comp131))
    (one-off comp131)
  )
  :effect (and
    (not (update-status comp131))
    (update-status comp132)
    (not (one-off comp131))
    (probabilistic 1/4 (and (not (running comp131))))
  )
)
(:action update-status-comp132-rebooted
  :parameters ()
  :precondition (and
    (update-status comp132)
    (rebooted comp132)
  )
  :effect (and
    (not (update-status comp132))
    (update-status comp133)
    (not (rebooted comp132))
    (probabilistic 9/10 (and (running comp132)) 1/10 (and))
  )
)
(:action update-status-comp132-all-on
  :parameters ()
  :precondition (and
    (update-status comp132)
    (not (rebooted comp132))
    (all-on comp132)
  )
  :effect (and
    (not (update-status comp132))
    (update-status comp133)
    (not (all-on comp132))
    (probabilistic 1/20 (and (not (running comp132))))
  )
)
(:action update-status-comp132-one-off
  :parameters ()
  :precondition (and
    (update-status comp132)
    (not (rebooted comp132))
    (one-off comp132)
  )
  :effect (and
    (not (update-status comp132))
    (update-status comp133)
    (not (one-off comp132))
    (probabilistic 1/4 (and (not (running comp132))))
  )
)
(:action update-status-comp133-rebooted
  :parameters ()
  :precondition (and
    (update-status comp133)
    (rebooted comp133)
  )
  :effect (and
    (not (update-status comp133))
    (update-status comp134)
    (not (rebooted comp133))
    (probabilistic 9/10 (and (running comp133)) 1/10 (and))
  )
)
(:action update-status-comp133-all-on
  :parameters ()
  :precondition (and
    (update-status comp133)
    (not (rebooted comp133))
    (all-on comp133)
  )
  :effect (and
    (not (update-status comp133))
    (update-status comp134)
    (not (all-on comp133))
    (probabilistic 1/20 (and (not (running comp133))))
  )
)
(:action update-status-comp133-one-off
  :parameters ()
  :precondition (and
    (update-status comp133)
    (not (rebooted comp133))
    (one-off comp133)
  )
  :effect (and
    (not (update-status comp133))
    (update-status comp134)
    (not (one-off comp133))
    (probabilistic 1/4 (and (not (running comp133))))
  )
)
(:action update-status-comp134-rebooted
  :parameters ()
  :precondition (and
    (update-status comp134)
    (rebooted comp134)
  )
  :effect (and
    (not (update-status comp134))
    (update-status comp135)
    (not (rebooted comp134))
    (probabilistic 9/10 (and (running comp134)) 1/10 (and))
  )
)
(:action update-status-comp134-all-on
  :parameters ()
  :precondition (and
    (update-status comp134)
    (not (rebooted comp134))
    (all-on comp134)
  )
  :effect (and
    (not (update-status comp134))
    (update-status comp135)
    (not (all-on comp134))
    (probabilistic 1/20 (and (not (running comp134))))
  )
)
(:action update-status-comp134-one-off
  :parameters ()
  :precondition (and
    (update-status comp134)
    (not (rebooted comp134))
    (one-off comp134)
  )
  :effect (and
    (not (update-status comp134))
    (update-status comp135)
    (not (one-off comp134))
    (probabilistic 1/4 (and (not (running comp134))))
  )
)
(:action update-status-comp135-rebooted
  :parameters ()
  :precondition (and
    (update-status comp135)
    (rebooted comp135)
  )
  :effect (and
    (not (update-status comp135))
    (update-status comp136)
    (not (rebooted comp135))
    (probabilistic 9/10 (and (running comp135)) 1/10 (and))
  )
)
(:action update-status-comp135-all-on
  :parameters ()
  :precondition (and
    (update-status comp135)
    (not (rebooted comp135))
    (all-on comp135)
  )
  :effect (and
    (not (update-status comp135))
    (update-status comp136)
    (not (all-on comp135))
    (probabilistic 1/20 (and (not (running comp135))))
  )
)
(:action update-status-comp135-one-off
  :parameters ()
  :precondition (and
    (update-status comp135)
    (not (rebooted comp135))
    (one-off comp135)
  )
  :effect (and
    (not (update-status comp135))
    (update-status comp136)
    (not (one-off comp135))
    (probabilistic 1/4 (and (not (running comp135))))
  )
)
(:action update-status-comp136-rebooted
  :parameters ()
  :precondition (and
    (update-status comp136)
    (rebooted comp136)
  )
  :effect (and
    (not (update-status comp136))
    (update-status comp137)
    (not (rebooted comp136))
    (probabilistic 9/10 (and (running comp136)) 1/10 (and))
  )
)
(:action update-status-comp136-all-on
  :parameters ()
  :precondition (and
    (update-status comp136)
    (not (rebooted comp136))
    (all-on comp136)
  )
  :effect (and
    (not (update-status comp136))
    (update-status comp137)
    (not (all-on comp136))
    (probabilistic 1/20 (and (not (running comp136))))
  )
)
(:action update-status-comp136-one-off
  :parameters ()
  :precondition (and
    (update-status comp136)
    (not (rebooted comp136))
    (one-off comp136)
  )
  :effect (and
    (not (update-status comp136))
    (update-status comp137)
    (not (one-off comp136))
    (probabilistic 1/4 (and (not (running comp136))))
  )
)
(:action update-status-comp137-rebooted
  :parameters ()
  :precondition (and
    (update-status comp137)
    (rebooted comp137)
  )
  :effect (and
    (not (update-status comp137))
    (update-status comp138)
    (not (rebooted comp137))
    (probabilistic 9/10 (and (running comp137)) 1/10 (and))
  )
)
(:action update-status-comp137-all-on
  :parameters ()
  :precondition (and
    (update-status comp137)
    (not (rebooted comp137))
    (all-on comp137)
  )
  :effect (and
    (not (update-status comp137))
    (update-status comp138)
    (not (all-on comp137))
    (probabilistic 1/20 (and (not (running comp137))))
  )
)
(:action update-status-comp137-one-off
  :parameters ()
  :precondition (and
    (update-status comp137)
    (not (rebooted comp137))
    (one-off comp137)
  )
  :effect (and
    (not (update-status comp137))
    (update-status comp138)
    (not (one-off comp137))
    (probabilistic 1/4 (and (not (running comp137))))
  )
)
(:action update-status-comp138-rebooted
  :parameters ()
  :precondition (and
    (update-status comp138)
    (rebooted comp138)
  )
  :effect (and
    (not (update-status comp138))
    (update-status comp139)
    (not (rebooted comp138))
    (probabilistic 9/10 (and (running comp138)) 1/10 (and))
  )
)
(:action update-status-comp138-all-on
  :parameters ()
  :precondition (and
    (update-status comp138)
    (not (rebooted comp138))
    (all-on comp138)
  )
  :effect (and
    (not (update-status comp138))
    (update-status comp139)
    (not (all-on comp138))
    (probabilistic 1/20 (and (not (running comp138))))
  )
)
(:action update-status-comp138-one-off
  :parameters ()
  :precondition (and
    (update-status comp138)
    (not (rebooted comp138))
    (one-off comp138)
  )
  :effect (and
    (not (update-status comp138))
    (update-status comp139)
    (not (one-off comp138))
    (probabilistic 1/4 (and (not (running comp138))))
  )
)
(:action update-status-comp139-rebooted
  :parameters ()
  :precondition (and
    (update-status comp139)
    (rebooted comp139)
  )
  :effect (and
    (not (update-status comp139))
    (update-status comp140)
    (not (rebooted comp139))
    (probabilistic 9/10 (and (running comp139)) 1/10 (and))
  )
)
(:action update-status-comp139-all-on
  :parameters ()
  :precondition (and
    (update-status comp139)
    (not (rebooted comp139))
    (all-on comp139)
  )
  :effect (and
    (not (update-status comp139))
    (update-status comp140)
    (not (all-on comp139))
    (probabilistic 1/20 (and (not (running comp139))))
  )
)
(:action update-status-comp139-one-off
  :parameters ()
  :precondition (and
    (update-status comp139)
    (not (rebooted comp139))
    (one-off comp139)
  )
  :effect (and
    (not (update-status comp139))
    (update-status comp140)
    (not (one-off comp139))
    (probabilistic 1/4 (and (not (running comp139))))
  )
)
(:action update-status-comp140-rebooted
  :parameters ()
  :precondition (and
    (update-status comp140)
    (rebooted comp140)
  )
  :effect (and
    (not (update-status comp140))
    (update-status comp141)
    (not (rebooted comp140))
    (probabilistic 9/10 (and (running comp140)) 1/10 (and))
  )
)
(:action update-status-comp140-all-on
  :parameters ()
  :precondition (and
    (update-status comp140)
    (not (rebooted comp140))
    (all-on comp140)
  )
  :effect (and
    (not (update-status comp140))
    (update-status comp141)
    (not (all-on comp140))
    (probabilistic 1/20 (and (not (running comp140))))
  )
)
(:action update-status-comp140-one-off
  :parameters ()
  :precondition (and
    (update-status comp140)
    (not (rebooted comp140))
    (one-off comp140)
  )
  :effect (and
    (not (update-status comp140))
    (update-status comp141)
    (not (one-off comp140))
    (probabilistic 1/4 (and (not (running comp140))))
  )
)
(:action update-status-comp141-rebooted
  :parameters ()
  :precondition (and
    (update-status comp141)
    (rebooted comp141)
  )
  :effect (and
    (not (update-status comp141))
    (update-status comp142)
    (not (rebooted comp141))
    (probabilistic 9/10 (and (running comp141)) 1/10 (and))
  )
)
(:action update-status-comp141-all-on
  :parameters ()
  :precondition (and
    (update-status comp141)
    (not (rebooted comp141))
    (all-on comp141)
  )
  :effect (and
    (not (update-status comp141))
    (update-status comp142)
    (not (all-on comp141))
    (probabilistic 1/20 (and (not (running comp141))))
  )
)
(:action update-status-comp141-one-off
  :parameters ()
  :precondition (and
    (update-status comp141)
    (not (rebooted comp141))
    (one-off comp141)
  )
  :effect (and
    (not (update-status comp141))
    (update-status comp142)
    (not (one-off comp141))
    (probabilistic 1/4 (and (not (running comp141))))
  )
)
(:action update-status-comp142-rebooted
  :parameters ()
  :precondition (and
    (update-status comp142)
    (rebooted comp142)
  )
  :effect (and
    (not (update-status comp142))
    (update-status comp143)
    (not (rebooted comp142))
    (probabilistic 9/10 (and (running comp142)) 1/10 (and))
  )
)
(:action update-status-comp142-all-on
  :parameters ()
  :precondition (and
    (update-status comp142)
    (not (rebooted comp142))
    (all-on comp142)
  )
  :effect (and
    (not (update-status comp142))
    (update-status comp143)
    (not (all-on comp142))
    (probabilistic 1/20 (and (not (running comp142))))
  )
)
(:action update-status-comp142-one-off
  :parameters ()
  :precondition (and
    (update-status comp142)
    (not (rebooted comp142))
    (one-off comp142)
  )
  :effect (and
    (not (update-status comp142))
    (update-status comp143)
    (not (one-off comp142))
    (probabilistic 1/4 (and (not (running comp142))))
  )
)
(:action update-status-comp143-rebooted
  :parameters ()
  :precondition (and
    (update-status comp143)
    (rebooted comp143)
  )
  :effect (and
    (not (update-status comp143))
    (update-status comp144)
    (not (rebooted comp143))
    (probabilistic 9/10 (and (running comp143)) 1/10 (and))
  )
)
(:action update-status-comp143-all-on
  :parameters ()
  :precondition (and
    (update-status comp143)
    (not (rebooted comp143))
    (all-on comp143)
  )
  :effect (and
    (not (update-status comp143))
    (update-status comp144)
    (not (all-on comp143))
    (probabilistic 1/20 (and (not (running comp143))))
  )
)
(:action update-status-comp143-one-off
  :parameters ()
  :precondition (and
    (update-status comp143)
    (not (rebooted comp143))
    (one-off comp143)
  )
  :effect (and
    (not (update-status comp143))
    (update-status comp144)
    (not (one-off comp143))
    (probabilistic 1/4 (and (not (running comp143))))
  )
)
(:action update-status-comp144-rebooted
  :parameters ()
  :precondition (and
    (update-status comp144)
    (rebooted comp144)
  )
  :effect (and
    (not (update-status comp144))
    (update-status comp145)
    (not (rebooted comp144))
    (probabilistic 9/10 (and (running comp144)) 1/10 (and))
  )
)
(:action update-status-comp144-all-on
  :parameters ()
  :precondition (and
    (update-status comp144)
    (not (rebooted comp144))
    (all-on comp144)
  )
  :effect (and
    (not (update-status comp144))
    (update-status comp145)
    (not (all-on comp144))
    (probabilistic 1/20 (and (not (running comp144))))
  )
)
(:action update-status-comp144-one-off
  :parameters ()
  :precondition (and
    (update-status comp144)
    (not (rebooted comp144))
    (one-off comp144)
  )
  :effect (and
    (not (update-status comp144))
    (update-status comp145)
    (not (one-off comp144))
    (probabilistic 1/4 (and (not (running comp144))))
  )
)
(:action update-status-comp145-rebooted
  :parameters ()
  :precondition (and
    (update-status comp145)
    (rebooted comp145)
  )
  :effect (and
    (not (update-status comp145))
    (update-status comp146)
    (not (rebooted comp145))
    (probabilistic 9/10 (and (running comp145)) 1/10 (and))
  )
)
(:action update-status-comp145-all-on
  :parameters ()
  :precondition (and
    (update-status comp145)
    (not (rebooted comp145))
    (all-on comp145)
  )
  :effect (and
    (not (update-status comp145))
    (update-status comp146)
    (not (all-on comp145))
    (probabilistic 1/20 (and (not (running comp145))))
  )
)
(:action update-status-comp145-one-off
  :parameters ()
  :precondition (and
    (update-status comp145)
    (not (rebooted comp145))
    (one-off comp145)
  )
  :effect (and
    (not (update-status comp145))
    (update-status comp146)
    (not (one-off comp145))
    (probabilistic 1/4 (and (not (running comp145))))
  )
)
(:action update-status-comp146-rebooted
  :parameters ()
  :precondition (and
    (update-status comp146)
    (rebooted comp146)
  )
  :effect (and
    (not (update-status comp146))
    (update-status comp147)
    (not (rebooted comp146))
    (probabilistic 9/10 (and (running comp146)) 1/10 (and))
  )
)
(:action update-status-comp146-all-on
  :parameters ()
  :precondition (and
    (update-status comp146)
    (not (rebooted comp146))
    (all-on comp146)
  )
  :effect (and
    (not (update-status comp146))
    (update-status comp147)
    (not (all-on comp146))
    (probabilistic 1/20 (and (not (running comp146))))
  )
)
(:action update-status-comp146-one-off
  :parameters ()
  :precondition (and
    (update-status comp146)
    (not (rebooted comp146))
    (one-off comp146)
  )
  :effect (and
    (not (update-status comp146))
    (update-status comp147)
    (not (one-off comp146))
    (probabilistic 1/4 (and (not (running comp146))))
  )
)
(:action update-status-comp147-rebooted
  :parameters ()
  :precondition (and
    (update-status comp147)
    (rebooted comp147)
  )
  :effect (and
    (not (update-status comp147))
    (update-status comp148)
    (not (rebooted comp147))
    (probabilistic 9/10 (and (running comp147)) 1/10 (and))
  )
)
(:action update-status-comp147-all-on
  :parameters ()
  :precondition (and
    (update-status comp147)
    (not (rebooted comp147))
    (all-on comp147)
  )
  :effect (and
    (not (update-status comp147))
    (update-status comp148)
    (not (all-on comp147))
    (probabilistic 1/20 (and (not (running comp147))))
  )
)
(:action update-status-comp147-one-off
  :parameters ()
  :precondition (and
    (update-status comp147)
    (not (rebooted comp147))
    (one-off comp147)
  )
  :effect (and
    (not (update-status comp147))
    (update-status comp148)
    (not (one-off comp147))
    (probabilistic 1/4 (and (not (running comp147))))
  )
)
(:action update-status-comp148-rebooted
  :parameters ()
  :precondition (and
    (update-status comp148)
    (rebooted comp148)
  )
  :effect (and
    (not (update-status comp148))
    (update-status comp149)
    (not (rebooted comp148))
    (probabilistic 9/10 (and (running comp148)) 1/10 (and))
  )
)
(:action update-status-comp148-all-on
  :parameters ()
  :precondition (and
    (update-status comp148)
    (not (rebooted comp148))
    (all-on comp148)
  )
  :effect (and
    (not (update-status comp148))
    (update-status comp149)
    (not (all-on comp148))
    (probabilistic 1/20 (and (not (running comp148))))
  )
)
(:action update-status-comp148-one-off
  :parameters ()
  :precondition (and
    (update-status comp148)
    (not (rebooted comp148))
    (one-off comp148)
  )
  :effect (and
    (not (update-status comp148))
    (update-status comp149)
    (not (one-off comp148))
    (probabilistic 1/4 (and (not (running comp148))))
  )
)
(:action update-status-comp149-rebooted
  :parameters ()
  :precondition (and
    (update-status comp149)
    (rebooted comp149)
  )
  :effect (and
    (not (update-status comp149))
    (update-status comp150)
    (not (rebooted comp149))
    (probabilistic 9/10 (and (running comp149)) 1/10 (and))
  )
)
(:action update-status-comp149-all-on
  :parameters ()
  :precondition (and
    (update-status comp149)
    (not (rebooted comp149))
    (all-on comp149)
  )
  :effect (and
    (not (update-status comp149))
    (update-status comp150)
    (not (all-on comp149))
    (probabilistic 1/20 (and (not (running comp149))))
  )
)
(:action update-status-comp149-one-off
  :parameters ()
  :precondition (and
    (update-status comp149)
    (not (rebooted comp149))
    (one-off comp149)
  )
  :effect (and
    (not (update-status comp149))
    (update-status comp150)
    (not (one-off comp149))
    (probabilistic 1/4 (and (not (running comp149))))
  )
)
(:action update-status-comp150-rebooted
  :parameters ()
  :precondition (and
    (update-status comp150)
    (rebooted comp150)
  )
  :effect (and
    (not (update-status comp150))
    (update-status comp151)
    (not (rebooted comp150))
    (probabilistic 9/10 (and (running comp150)) 1/10 (and))
  )
)
(:action update-status-comp150-all-on
  :parameters ()
  :precondition (and
    (update-status comp150)
    (not (rebooted comp150))
    (all-on comp150)
  )
  :effect (and
    (not (update-status comp150))
    (update-status comp151)
    (not (all-on comp150))
    (probabilistic 1/20 (and (not (running comp150))))
  )
)
(:action update-status-comp150-one-off
  :parameters ()
  :precondition (and
    (update-status comp150)
    (not (rebooted comp150))
    (one-off comp150)
  )
  :effect (and
    (not (update-status comp150))
    (update-status comp151)
    (not (one-off comp150))
    (probabilistic 1/4 (and (not (running comp150))))
  )
)
(:action update-status-comp151-rebooted
  :parameters ()
  :precondition (and
    (update-status comp151)
    (rebooted comp151)
  )
  :effect (and
    (not (update-status comp151))
    (update-status comp152)
    (not (rebooted comp151))
    (probabilistic 9/10 (and (running comp151)) 1/10 (and))
  )
)
(:action update-status-comp151-all-on
  :parameters ()
  :precondition (and
    (update-status comp151)
    (not (rebooted comp151))
    (all-on comp151)
  )
  :effect (and
    (not (update-status comp151))
    (update-status comp152)
    (not (all-on comp151))
    (probabilistic 1/20 (and (not (running comp151))))
  )
)
(:action update-status-comp151-one-off
  :parameters ()
  :precondition (and
    (update-status comp151)
    (not (rebooted comp151))
    (one-off comp151)
  )
  :effect (and
    (not (update-status comp151))
    (update-status comp152)
    (not (one-off comp151))
    (probabilistic 1/4 (and (not (running comp151))))
  )
)
(:action update-status-comp152-rebooted
  :parameters ()
  :precondition (and
    (update-status comp152)
    (rebooted comp152)
  )
  :effect (and
    (not (update-status comp152))
    (update-status comp153)
    (not (rebooted comp152))
    (probabilistic 9/10 (and (running comp152)) 1/10 (and))
  )
)
(:action update-status-comp152-all-on
  :parameters ()
  :precondition (and
    (update-status comp152)
    (not (rebooted comp152))
    (all-on comp152)
  )
  :effect (and
    (not (update-status comp152))
    (update-status comp153)
    (not (all-on comp152))
    (probabilistic 1/20 (and (not (running comp152))))
  )
)
(:action update-status-comp152-one-off
  :parameters ()
  :precondition (and
    (update-status comp152)
    (not (rebooted comp152))
    (one-off comp152)
  )
  :effect (and
    (not (update-status comp152))
    (update-status comp153)
    (not (one-off comp152))
    (probabilistic 1/4 (and (not (running comp152))))
  )
)
(:action update-status-comp153-rebooted
  :parameters ()
  :precondition (and
    (update-status comp153)
    (rebooted comp153)
  )
  :effect (and
    (not (update-status comp153))
    (update-status comp154)
    (not (rebooted comp153))
    (probabilistic 9/10 (and (running comp153)) 1/10 (and))
  )
)
(:action update-status-comp153-all-on
  :parameters ()
  :precondition (and
    (update-status comp153)
    (not (rebooted comp153))
    (all-on comp153)
  )
  :effect (and
    (not (update-status comp153))
    (update-status comp154)
    (not (all-on comp153))
    (probabilistic 1/20 (and (not (running comp153))))
  )
)
(:action update-status-comp153-one-off
  :parameters ()
  :precondition (and
    (update-status comp153)
    (not (rebooted comp153))
    (one-off comp153)
  )
  :effect (and
    (not (update-status comp153))
    (update-status comp154)
    (not (one-off comp153))
    (probabilistic 1/4 (and (not (running comp153))))
  )
)
(:action update-status-comp154-rebooted
  :parameters ()
  :precondition (and
    (update-status comp154)
    (rebooted comp154)
  )
  :effect (and
    (not (update-status comp154))
    (update-status comp155)
    (not (rebooted comp154))
    (probabilistic 9/10 (and (running comp154)) 1/10 (and))
  )
)
(:action update-status-comp154-all-on
  :parameters ()
  :precondition (and
    (update-status comp154)
    (not (rebooted comp154))
    (all-on comp154)
  )
  :effect (and
    (not (update-status comp154))
    (update-status comp155)
    (not (all-on comp154))
    (probabilistic 1/20 (and (not (running comp154))))
  )
)
(:action update-status-comp154-one-off
  :parameters ()
  :precondition (and
    (update-status comp154)
    (not (rebooted comp154))
    (one-off comp154)
  )
  :effect (and
    (not (update-status comp154))
    (update-status comp155)
    (not (one-off comp154))
    (probabilistic 1/4 (and (not (running comp154))))
  )
)
(:action update-status-comp155-rebooted
  :parameters ()
  :precondition (and
    (update-status comp155)
    (rebooted comp155)
  )
  :effect (and
    (not (update-status comp155))
    (update-status comp156)
    (not (rebooted comp155))
    (probabilistic 9/10 (and (running comp155)) 1/10 (and))
  )
)
(:action update-status-comp155-all-on
  :parameters ()
  :precondition (and
    (update-status comp155)
    (not (rebooted comp155))
    (all-on comp155)
  )
  :effect (and
    (not (update-status comp155))
    (update-status comp156)
    (not (all-on comp155))
    (probabilistic 1/20 (and (not (running comp155))))
  )
)
(:action update-status-comp155-one-off
  :parameters ()
  :precondition (and
    (update-status comp155)
    (not (rebooted comp155))
    (one-off comp155)
  )
  :effect (and
    (not (update-status comp155))
    (update-status comp156)
    (not (one-off comp155))
    (probabilistic 1/4 (and (not (running comp155))))
  )
)
(:action update-status-comp156-rebooted
  :parameters ()
  :precondition (and
    (update-status comp156)
    (rebooted comp156)
  )
  :effect (and
    (not (update-status comp156))
    (update-status comp157)
    (not (rebooted comp156))
    (probabilistic 9/10 (and (running comp156)) 1/10 (and))
  )
)
(:action update-status-comp156-all-on
  :parameters ()
  :precondition (and
    (update-status comp156)
    (not (rebooted comp156))
    (all-on comp156)
  )
  :effect (and
    (not (update-status comp156))
    (update-status comp157)
    (not (all-on comp156))
    (probabilistic 1/20 (and (not (running comp156))))
  )
)
(:action update-status-comp156-one-off
  :parameters ()
  :precondition (and
    (update-status comp156)
    (not (rebooted comp156))
    (one-off comp156)
  )
  :effect (and
    (not (update-status comp156))
    (update-status comp157)
    (not (one-off comp156))
    (probabilistic 1/4 (and (not (running comp156))))
  )
)
(:action update-status-comp157-rebooted
  :parameters ()
  :precondition (and
    (update-status comp157)
    (rebooted comp157)
  )
  :effect (and
    (not (update-status comp157))
    (update-status comp158)
    (not (rebooted comp157))
    (probabilistic 9/10 (and (running comp157)) 1/10 (and))
  )
)
(:action update-status-comp157-all-on
  :parameters ()
  :precondition (and
    (update-status comp157)
    (not (rebooted comp157))
    (all-on comp157)
  )
  :effect (and
    (not (update-status comp157))
    (update-status comp158)
    (not (all-on comp157))
    (probabilistic 1/20 (and (not (running comp157))))
  )
)
(:action update-status-comp157-one-off
  :parameters ()
  :precondition (and
    (update-status comp157)
    (not (rebooted comp157))
    (one-off comp157)
  )
  :effect (and
    (not (update-status comp157))
    (update-status comp158)
    (not (one-off comp157))
    (probabilistic 1/4 (and (not (running comp157))))
  )
)
(:action update-status-comp158-rebooted
  :parameters ()
  :precondition (and
    (update-status comp158)
    (rebooted comp158)
  )
  :effect (and
    (not (update-status comp158))
    (update-status comp159)
    (not (rebooted comp158))
    (probabilistic 9/10 (and (running comp158)) 1/10 (and))
  )
)
(:action update-status-comp158-all-on
  :parameters ()
  :precondition (and
    (update-status comp158)
    (not (rebooted comp158))
    (all-on comp158)
  )
  :effect (and
    (not (update-status comp158))
    (update-status comp159)
    (not (all-on comp158))
    (probabilistic 1/20 (and (not (running comp158))))
  )
)
(:action update-status-comp158-one-off
  :parameters ()
  :precondition (and
    (update-status comp158)
    (not (rebooted comp158))
    (one-off comp158)
  )
  :effect (and
    (not (update-status comp158))
    (update-status comp159)
    (not (one-off comp158))
    (probabilistic 1/4 (and (not (running comp158))))
  )
)
(:action update-status-comp159-rebooted
  :parameters ()
  :precondition (and
    (update-status comp159)
    (rebooted comp159)
  )
  :effect (and
    (not (update-status comp159))
    (update-status comp160)
    (not (rebooted comp159))
    (probabilistic 9/10 (and (running comp159)) 1/10 (and))
  )
)
(:action update-status-comp159-all-on
  :parameters ()
  :precondition (and
    (update-status comp159)
    (not (rebooted comp159))
    (all-on comp159)
  )
  :effect (and
    (not (update-status comp159))
    (update-status comp160)
    (not (all-on comp159))
    (probabilistic 1/20 (and (not (running comp159))))
  )
)
(:action update-status-comp159-one-off
  :parameters ()
  :precondition (and
    (update-status comp159)
    (not (rebooted comp159))
    (one-off comp159)
  )
  :effect (and
    (not (update-status comp159))
    (update-status comp160)
    (not (one-off comp159))
    (probabilistic 1/4 (and (not (running comp159))))
  )
)
(:action update-status-comp160-rebooted
  :parameters ()
  :precondition (and
    (update-status comp160)
    (rebooted comp160)
  )
  :effect (and
    (not (update-status comp160))
    (update-status comp161)
    (not (rebooted comp160))
    (probabilistic 9/10 (and (running comp160)) 1/10 (and))
  )
)
(:action update-status-comp160-all-on
  :parameters ()
  :precondition (and
    (update-status comp160)
    (not (rebooted comp160))
    (all-on comp160)
  )
  :effect (and
    (not (update-status comp160))
    (update-status comp161)
    (not (all-on comp160))
    (probabilistic 1/20 (and (not (running comp160))))
  )
)
(:action update-status-comp160-one-off
  :parameters ()
  :precondition (and
    (update-status comp160)
    (not (rebooted comp160))
    (one-off comp160)
  )
  :effect (and
    (not (update-status comp160))
    (update-status comp161)
    (not (one-off comp160))
    (probabilistic 1/4 (and (not (running comp160))))
  )
)
(:action update-status-comp161-rebooted
  :parameters ()
  :precondition (and
    (update-status comp161)
    (rebooted comp161)
  )
  :effect (and
    (not (update-status comp161))
    (update-status comp162)
    (not (rebooted comp161))
    (probabilistic 9/10 (and (running comp161)) 1/10 (and))
  )
)
(:action update-status-comp161-all-on
  :parameters ()
  :precondition (and
    (update-status comp161)
    (not (rebooted comp161))
    (all-on comp161)
  )
  :effect (and
    (not (update-status comp161))
    (update-status comp162)
    (not (all-on comp161))
    (probabilistic 1/20 (and (not (running comp161))))
  )
)
(:action update-status-comp161-one-off
  :parameters ()
  :precondition (and
    (update-status comp161)
    (not (rebooted comp161))
    (one-off comp161)
  )
  :effect (and
    (not (update-status comp161))
    (update-status comp162)
    (not (one-off comp161))
    (probabilistic 1/4 (and (not (running comp161))))
  )
)
(:action update-status-comp162-rebooted
  :parameters ()
  :precondition (and
    (update-status comp162)
    (rebooted comp162)
  )
  :effect (and
    (not (update-status comp162))
    (update-status comp163)
    (not (rebooted comp162))
    (probabilistic 9/10 (and (running comp162)) 1/10 (and))
  )
)
(:action update-status-comp162-all-on
  :parameters ()
  :precondition (and
    (update-status comp162)
    (not (rebooted comp162))
    (all-on comp162)
  )
  :effect (and
    (not (update-status comp162))
    (update-status comp163)
    (not (all-on comp162))
    (probabilistic 1/20 (and (not (running comp162))))
  )
)
(:action update-status-comp162-one-off
  :parameters ()
  :precondition (and
    (update-status comp162)
    (not (rebooted comp162))
    (one-off comp162)
  )
  :effect (and
    (not (update-status comp162))
    (update-status comp163)
    (not (one-off comp162))
    (probabilistic 1/4 (and (not (running comp162))))
  )
)
(:action update-status-comp163-rebooted
  :parameters ()
  :precondition (and
    (update-status comp163)
    (rebooted comp163)
  )
  :effect (and
    (not (update-status comp163))
    (update-status comp164)
    (not (rebooted comp163))
    (probabilistic 9/10 (and (running comp163)) 1/10 (and))
  )
)
(:action update-status-comp163-all-on
  :parameters ()
  :precondition (and
    (update-status comp163)
    (not (rebooted comp163))
    (all-on comp163)
  )
  :effect (and
    (not (update-status comp163))
    (update-status comp164)
    (not (all-on comp163))
    (probabilistic 1/20 (and (not (running comp163))))
  )
)
(:action update-status-comp163-one-off
  :parameters ()
  :precondition (and
    (update-status comp163)
    (not (rebooted comp163))
    (one-off comp163)
  )
  :effect (and
    (not (update-status comp163))
    (update-status comp164)
    (not (one-off comp163))
    (probabilistic 1/4 (and (not (running comp163))))
  )
)
(:action update-status-comp164-rebooted
  :parameters ()
  :precondition (and
    (update-status comp164)
    (rebooted comp164)
  )
  :effect (and
    (not (update-status comp164))
    (update-status comp165)
    (not (rebooted comp164))
    (probabilistic 9/10 (and (running comp164)) 1/10 (and))
  )
)
(:action update-status-comp164-all-on
  :parameters ()
  :precondition (and
    (update-status comp164)
    (not (rebooted comp164))
    (all-on comp164)
  )
  :effect (and
    (not (update-status comp164))
    (update-status comp165)
    (not (all-on comp164))
    (probabilistic 1/20 (and (not (running comp164))))
  )
)
(:action update-status-comp164-one-off
  :parameters ()
  :precondition (and
    (update-status comp164)
    (not (rebooted comp164))
    (one-off comp164)
  )
  :effect (and
    (not (update-status comp164))
    (update-status comp165)
    (not (one-off comp164))
    (probabilistic 1/4 (and (not (running comp164))))
  )
)
(:action update-status-comp165-rebooted
  :parameters ()
  :precondition (and
    (update-status comp165)
    (rebooted comp165)
  )
  :effect (and
    (not (update-status comp165))
    (update-status comp166)
    (not (rebooted comp165))
    (probabilistic 9/10 (and (running comp165)) 1/10 (and))
  )
)
(:action update-status-comp165-all-on
  :parameters ()
  :precondition (and
    (update-status comp165)
    (not (rebooted comp165))
    (all-on comp165)
  )
  :effect (and
    (not (update-status comp165))
    (update-status comp166)
    (not (all-on comp165))
    (probabilistic 1/20 (and (not (running comp165))))
  )
)
(:action update-status-comp165-one-off
  :parameters ()
  :precondition (and
    (update-status comp165)
    (not (rebooted comp165))
    (one-off comp165)
  )
  :effect (and
    (not (update-status comp165))
    (update-status comp166)
    (not (one-off comp165))
    (probabilistic 1/4 (and (not (running comp165))))
  )
)
(:action update-status-comp166-rebooted
  :parameters ()
  :precondition (and
    (update-status comp166)
    (rebooted comp166)
  )
  :effect (and
    (not (update-status comp166))
    (update-status comp167)
    (not (rebooted comp166))
    (probabilistic 9/10 (and (running comp166)) 1/10 (and))
  )
)
(:action update-status-comp166-all-on
  :parameters ()
  :precondition (and
    (update-status comp166)
    (not (rebooted comp166))
    (all-on comp166)
  )
  :effect (and
    (not (update-status comp166))
    (update-status comp167)
    (not (all-on comp166))
    (probabilistic 1/20 (and (not (running comp166))))
  )
)
(:action update-status-comp166-one-off
  :parameters ()
  :precondition (and
    (update-status comp166)
    (not (rebooted comp166))
    (one-off comp166)
  )
  :effect (and
    (not (update-status comp166))
    (update-status comp167)
    (not (one-off comp166))
    (probabilistic 1/4 (and (not (running comp166))))
  )
)
(:action update-status-comp167-rebooted
  :parameters ()
  :precondition (and
    (update-status comp167)
    (rebooted comp167)
  )
  :effect (and
    (not (update-status comp167))
    (update-status comp168)
    (not (rebooted comp167))
    (probabilistic 9/10 (and (running comp167)) 1/10 (and))
  )
)
(:action update-status-comp167-all-on
  :parameters ()
  :precondition (and
    (update-status comp167)
    (not (rebooted comp167))
    (all-on comp167)
  )
  :effect (and
    (not (update-status comp167))
    (update-status comp168)
    (not (all-on comp167))
    (probabilistic 1/20 (and (not (running comp167))))
  )
)
(:action update-status-comp167-one-off
  :parameters ()
  :precondition (and
    (update-status comp167)
    (not (rebooted comp167))
    (one-off comp167)
  )
  :effect (and
    (not (update-status comp167))
    (update-status comp168)
    (not (one-off comp167))
    (probabilistic 1/4 (and (not (running comp167))))
  )
)
(:action update-status-comp168-rebooted
  :parameters ()
  :precondition (and
    (update-status comp168)
    (rebooted comp168)
  )
  :effect (and
    (not (update-status comp168))
    (update-status comp169)
    (not (rebooted comp168))
    (probabilistic 9/10 (and (running comp168)) 1/10 (and))
  )
)
(:action update-status-comp168-all-on
  :parameters ()
  :precondition (and
    (update-status comp168)
    (not (rebooted comp168))
    (all-on comp168)
  )
  :effect (and
    (not (update-status comp168))
    (update-status comp169)
    (not (all-on comp168))
    (probabilistic 1/20 (and (not (running comp168))))
  )
)
(:action update-status-comp168-one-off
  :parameters ()
  :precondition (and
    (update-status comp168)
    (not (rebooted comp168))
    (one-off comp168)
  )
  :effect (and
    (not (update-status comp168))
    (update-status comp169)
    (not (one-off comp168))
    (probabilistic 1/4 (and (not (running comp168))))
  )
)
(:action update-status-comp169-rebooted
  :parameters ()
  :precondition (and
    (update-status comp169)
    (rebooted comp169)
  )
  :effect (and
    (not (update-status comp169))
    (update-status comp170)
    (not (rebooted comp169))
    (probabilistic 9/10 (and (running comp169)) 1/10 (and))
  )
)
(:action update-status-comp169-all-on
  :parameters ()
  :precondition (and
    (update-status comp169)
    (not (rebooted comp169))
    (all-on comp169)
  )
  :effect (and
    (not (update-status comp169))
    (update-status comp170)
    (not (all-on comp169))
    (probabilistic 1/20 (and (not (running comp169))))
  )
)
(:action update-status-comp169-one-off
  :parameters ()
  :precondition (and
    (update-status comp169)
    (not (rebooted comp169))
    (one-off comp169)
  )
  :effect (and
    (not (update-status comp169))
    (update-status comp170)
    (not (one-off comp169))
    (probabilistic 1/4 (and (not (running comp169))))
  )
)
(:action update-status-comp170-rebooted
  :parameters ()
  :precondition (and
    (update-status comp170)
    (rebooted comp170)
  )
  :effect (and
    (not (update-status comp170))
    (update-status comp171)
    (not (rebooted comp170))
    (probabilistic 9/10 (and (running comp170)) 1/10 (and))
  )
)
(:action update-status-comp170-all-on
  :parameters ()
  :precondition (and
    (update-status comp170)
    (not (rebooted comp170))
    (all-on comp170)
  )
  :effect (and
    (not (update-status comp170))
    (update-status comp171)
    (not (all-on comp170))
    (probabilistic 1/20 (and (not (running comp170))))
  )
)
(:action update-status-comp170-one-off
  :parameters ()
  :precondition (and
    (update-status comp170)
    (not (rebooted comp170))
    (one-off comp170)
  )
  :effect (and
    (not (update-status comp170))
    (update-status comp171)
    (not (one-off comp170))
    (probabilistic 1/4 (and (not (running comp170))))
  )
)
(:action update-status-comp171-rebooted
  :parameters ()
  :precondition (and
    (update-status comp171)
    (rebooted comp171)
  )
  :effect (and
    (not (update-status comp171))
    (update-status comp172)
    (not (rebooted comp171))
    (probabilistic 9/10 (and (running comp171)) 1/10 (and))
  )
)
(:action update-status-comp171-all-on
  :parameters ()
  :precondition (and
    (update-status comp171)
    (not (rebooted comp171))
    (all-on comp171)
  )
  :effect (and
    (not (update-status comp171))
    (update-status comp172)
    (not (all-on comp171))
    (probabilistic 1/20 (and (not (running comp171))))
  )
)
(:action update-status-comp171-one-off
  :parameters ()
  :precondition (and
    (update-status comp171)
    (not (rebooted comp171))
    (one-off comp171)
  )
  :effect (and
    (not (update-status comp171))
    (update-status comp172)
    (not (one-off comp171))
    (probabilistic 1/4 (and (not (running comp171))))
  )
)
(:action update-status-comp172-rebooted
  :parameters ()
  :precondition (and
    (update-status comp172)
    (rebooted comp172)
  )
  :effect (and
    (not (update-status comp172))
    (update-status comp173)
    (not (rebooted comp172))
    (probabilistic 9/10 (and (running comp172)) 1/10 (and))
  )
)
(:action update-status-comp172-all-on
  :parameters ()
  :precondition (and
    (update-status comp172)
    (not (rebooted comp172))
    (all-on comp172)
  )
  :effect (and
    (not (update-status comp172))
    (update-status comp173)
    (not (all-on comp172))
    (probabilistic 1/20 (and (not (running comp172))))
  )
)
(:action update-status-comp172-one-off
  :parameters ()
  :precondition (and
    (update-status comp172)
    (not (rebooted comp172))
    (one-off comp172)
  )
  :effect (and
    (not (update-status comp172))
    (update-status comp173)
    (not (one-off comp172))
    (probabilistic 1/4 (and (not (running comp172))))
  )
)
(:action update-status-comp173-rebooted
  :parameters ()
  :precondition (and
    (update-status comp173)
    (rebooted comp173)
  )
  :effect (and
    (not (update-status comp173))
    (update-status comp174)
    (not (rebooted comp173))
    (probabilistic 9/10 (and (running comp173)) 1/10 (and))
  )
)
(:action update-status-comp173-all-on
  :parameters ()
  :precondition (and
    (update-status comp173)
    (not (rebooted comp173))
    (all-on comp173)
  )
  :effect (and
    (not (update-status comp173))
    (update-status comp174)
    (not (all-on comp173))
    (probabilistic 1/20 (and (not (running comp173))))
  )
)
(:action update-status-comp173-one-off
  :parameters ()
  :precondition (and
    (update-status comp173)
    (not (rebooted comp173))
    (one-off comp173)
  )
  :effect (and
    (not (update-status comp173))
    (update-status comp174)
    (not (one-off comp173))
    (probabilistic 1/4 (and (not (running comp173))))
  )
)
(:action update-status-comp174-rebooted
  :parameters ()
  :precondition (and
    (update-status comp174)
    (rebooted comp174)
  )
  :effect (and
    (not (update-status comp174))
    (update-status comp175)
    (not (rebooted comp174))
    (probabilistic 9/10 (and (running comp174)) 1/10 (and))
  )
)
(:action update-status-comp174-all-on
  :parameters ()
  :precondition (and
    (update-status comp174)
    (not (rebooted comp174))
    (all-on comp174)
  )
  :effect (and
    (not (update-status comp174))
    (update-status comp175)
    (not (all-on comp174))
    (probabilistic 1/20 (and (not (running comp174))))
  )
)
(:action update-status-comp174-one-off
  :parameters ()
  :precondition (and
    (update-status comp174)
    (not (rebooted comp174))
    (one-off comp174)
  )
  :effect (and
    (not (update-status comp174))
    (update-status comp175)
    (not (one-off comp174))
    (probabilistic 1/4 (and (not (running comp174))))
  )
)
(:action update-status-comp175-rebooted
  :parameters ()
  :precondition (and
    (update-status comp175)
    (rebooted comp175)
  )
  :effect (and
    (not (update-status comp175))
    (update-status comp176)
    (not (rebooted comp175))
    (probabilistic 9/10 (and (running comp175)) 1/10 (and))
  )
)
(:action update-status-comp175-all-on
  :parameters ()
  :precondition (and
    (update-status comp175)
    (not (rebooted comp175))
    (all-on comp175)
  )
  :effect (and
    (not (update-status comp175))
    (update-status comp176)
    (not (all-on comp175))
    (probabilistic 1/20 (and (not (running comp175))))
  )
)
(:action update-status-comp175-one-off
  :parameters ()
  :precondition (and
    (update-status comp175)
    (not (rebooted comp175))
    (one-off comp175)
  )
  :effect (and
    (not (update-status comp175))
    (update-status comp176)
    (not (one-off comp175))
    (probabilistic 1/4 (and (not (running comp175))))
  )
)
(:action update-status-comp176-rebooted
  :parameters ()
  :precondition (and
    (update-status comp176)
    (rebooted comp176)
  )
  :effect (and
    (not (update-status comp176))
    (update-status comp177)
    (not (rebooted comp176))
    (probabilistic 9/10 (and (running comp176)) 1/10 (and))
  )
)
(:action update-status-comp176-all-on
  :parameters ()
  :precondition (and
    (update-status comp176)
    (not (rebooted comp176))
    (all-on comp176)
  )
  :effect (and
    (not (update-status comp176))
    (update-status comp177)
    (not (all-on comp176))
    (probabilistic 1/20 (and (not (running comp176))))
  )
)
(:action update-status-comp176-one-off
  :parameters ()
  :precondition (and
    (update-status comp176)
    (not (rebooted comp176))
    (one-off comp176)
  )
  :effect (and
    (not (update-status comp176))
    (update-status comp177)
    (not (one-off comp176))
    (probabilistic 1/4 (and (not (running comp176))))
  )
)
(:action update-status-comp177-rebooted
  :parameters ()
  :precondition (and
    (update-status comp177)
    (rebooted comp177)
  )
  :effect (and
    (not (update-status comp177))
    (update-status comp178)
    (not (rebooted comp177))
    (probabilistic 9/10 (and (running comp177)) 1/10 (and))
  )
)
(:action update-status-comp177-all-on
  :parameters ()
  :precondition (and
    (update-status comp177)
    (not (rebooted comp177))
    (all-on comp177)
  )
  :effect (and
    (not (update-status comp177))
    (update-status comp178)
    (not (all-on comp177))
    (probabilistic 1/20 (and (not (running comp177))))
  )
)
(:action update-status-comp177-one-off
  :parameters ()
  :precondition (and
    (update-status comp177)
    (not (rebooted comp177))
    (one-off comp177)
  )
  :effect (and
    (not (update-status comp177))
    (update-status comp178)
    (not (one-off comp177))
    (probabilistic 1/4 (and (not (running comp177))))
  )
)
(:action update-status-comp178-rebooted
  :parameters ()
  :precondition (and
    (update-status comp178)
    (rebooted comp178)
  )
  :effect (and
    (not (update-status comp178))
    (update-status comp179)
    (not (rebooted comp178))
    (probabilistic 9/10 (and (running comp178)) 1/10 (and))
  )
)
(:action update-status-comp178-all-on
  :parameters ()
  :precondition (and
    (update-status comp178)
    (not (rebooted comp178))
    (all-on comp178)
  )
  :effect (and
    (not (update-status comp178))
    (update-status comp179)
    (not (all-on comp178))
    (probabilistic 1/20 (and (not (running comp178))))
  )
)
(:action update-status-comp178-one-off
  :parameters ()
  :precondition (and
    (update-status comp178)
    (not (rebooted comp178))
    (one-off comp178)
  )
  :effect (and
    (not (update-status comp178))
    (update-status comp179)
    (not (one-off comp178))
    (probabilistic 1/4 (and (not (running comp178))))
  )
)
(:action update-status-comp179-rebooted
  :parameters ()
  :precondition (and
    (update-status comp179)
    (rebooted comp179)
  )
  :effect (and
    (not (update-status comp179))
    (update-status comp180)
    (not (rebooted comp179))
    (probabilistic 9/10 (and (running comp179)) 1/10 (and))
  )
)
(:action update-status-comp179-all-on
  :parameters ()
  :precondition (and
    (update-status comp179)
    (not (rebooted comp179))
    (all-on comp179)
  )
  :effect (and
    (not (update-status comp179))
    (update-status comp180)
    (not (all-on comp179))
    (probabilistic 1/20 (and (not (running comp179))))
  )
)
(:action update-status-comp179-one-off
  :parameters ()
  :precondition (and
    (update-status comp179)
    (not (rebooted comp179))
    (one-off comp179)
  )
  :effect (and
    (not (update-status comp179))
    (update-status comp180)
    (not (one-off comp179))
    (probabilistic 1/4 (and (not (running comp179))))
  )
)
(:action update-status-comp180-rebooted
  :parameters ()
  :precondition (and
    (update-status comp180)
    (rebooted comp180)
  )
  :effect (and
    (not (update-status comp180))
    (update-status comp181)
    (not (rebooted comp180))
    (probabilistic 9/10 (and (running comp180)) 1/10 (and))
  )
)
(:action update-status-comp180-all-on
  :parameters ()
  :precondition (and
    (update-status comp180)
    (not (rebooted comp180))
    (all-on comp180)
  )
  :effect (and
    (not (update-status comp180))
    (update-status comp181)
    (not (all-on comp180))
    (probabilistic 1/20 (and (not (running comp180))))
  )
)
(:action update-status-comp180-one-off
  :parameters ()
  :precondition (and
    (update-status comp180)
    (not (rebooted comp180))
    (one-off comp180)
  )
  :effect (and
    (not (update-status comp180))
    (update-status comp181)
    (not (one-off comp180))
    (probabilistic 1/4 (and (not (running comp180))))
  )
)
(:action update-status-comp181-rebooted
  :parameters ()
  :precondition (and
    (update-status comp181)
    (rebooted comp181)
  )
  :effect (and
    (not (update-status comp181))
    (update-status comp182)
    (not (rebooted comp181))
    (probabilistic 9/10 (and (running comp181)) 1/10 (and))
  )
)
(:action update-status-comp181-all-on
  :parameters ()
  :precondition (and
    (update-status comp181)
    (not (rebooted comp181))
    (all-on comp181)
  )
  :effect (and
    (not (update-status comp181))
    (update-status comp182)
    (not (all-on comp181))
    (probabilistic 1/20 (and (not (running comp181))))
  )
)
(:action update-status-comp181-one-off
  :parameters ()
  :precondition (and
    (update-status comp181)
    (not (rebooted comp181))
    (one-off comp181)
  )
  :effect (and
    (not (update-status comp181))
    (update-status comp182)
    (not (one-off comp181))
    (probabilistic 1/4 (and (not (running comp181))))
  )
)
(:action update-status-comp182-rebooted
  :parameters ()
  :precondition (and
    (update-status comp182)
    (rebooted comp182)
  )
  :effect (and
    (not (update-status comp182))
    (update-status comp183)
    (not (rebooted comp182))
    (probabilistic 9/10 (and (running comp182)) 1/10 (and))
  )
)
(:action update-status-comp182-all-on
  :parameters ()
  :precondition (and
    (update-status comp182)
    (not (rebooted comp182))
    (all-on comp182)
  )
  :effect (and
    (not (update-status comp182))
    (update-status comp183)
    (not (all-on comp182))
    (probabilistic 1/20 (and (not (running comp182))))
  )
)
(:action update-status-comp182-one-off
  :parameters ()
  :precondition (and
    (update-status comp182)
    (not (rebooted comp182))
    (one-off comp182)
  )
  :effect (and
    (not (update-status comp182))
    (update-status comp183)
    (not (one-off comp182))
    (probabilistic 1/4 (and (not (running comp182))))
  )
)
(:action update-status-comp183-rebooted
  :parameters ()
  :precondition (and
    (update-status comp183)
    (rebooted comp183)
  )
  :effect (and
    (not (update-status comp183))
    (update-status comp184)
    (not (rebooted comp183))
    (probabilistic 9/10 (and (running comp183)) 1/10 (and))
  )
)
(:action update-status-comp183-all-on
  :parameters ()
  :precondition (and
    (update-status comp183)
    (not (rebooted comp183))
    (all-on comp183)
  )
  :effect (and
    (not (update-status comp183))
    (update-status comp184)
    (not (all-on comp183))
    (probabilistic 1/20 (and (not (running comp183))))
  )
)
(:action update-status-comp183-one-off
  :parameters ()
  :precondition (and
    (update-status comp183)
    (not (rebooted comp183))
    (one-off comp183)
  )
  :effect (and
    (not (update-status comp183))
    (update-status comp184)
    (not (one-off comp183))
    (probabilistic 1/4 (and (not (running comp183))))
  )
)
(:action update-status-comp184-rebooted
  :parameters ()
  :precondition (and
    (update-status comp184)
    (rebooted comp184)
  )
  :effect (and
    (not (update-status comp184))
    (update-status comp185)
    (not (rebooted comp184))
    (probabilistic 9/10 (and (running comp184)) 1/10 (and))
  )
)
(:action update-status-comp184-all-on
  :parameters ()
  :precondition (and
    (update-status comp184)
    (not (rebooted comp184))
    (all-on comp184)
  )
  :effect (and
    (not (update-status comp184))
    (update-status comp185)
    (not (all-on comp184))
    (probabilistic 1/20 (and (not (running comp184))))
  )
)
(:action update-status-comp184-one-off
  :parameters ()
  :precondition (and
    (update-status comp184)
    (not (rebooted comp184))
    (one-off comp184)
  )
  :effect (and
    (not (update-status comp184))
    (update-status comp185)
    (not (one-off comp184))
    (probabilistic 1/4 (and (not (running comp184))))
  )
)
(:action update-status-comp185-rebooted
  :parameters ()
  :precondition (and
    (update-status comp185)
    (rebooted comp185)
  )
  :effect (and
    (not (update-status comp185))
    (update-status comp186)
    (not (rebooted comp185))
    (probabilistic 9/10 (and (running comp185)) 1/10 (and))
  )
)
(:action update-status-comp185-all-on
  :parameters ()
  :precondition (and
    (update-status comp185)
    (not (rebooted comp185))
    (all-on comp185)
  )
  :effect (and
    (not (update-status comp185))
    (update-status comp186)
    (not (all-on comp185))
    (probabilistic 1/20 (and (not (running comp185))))
  )
)
(:action update-status-comp185-one-off
  :parameters ()
  :precondition (and
    (update-status comp185)
    (not (rebooted comp185))
    (one-off comp185)
  )
  :effect (and
    (not (update-status comp185))
    (update-status comp186)
    (not (one-off comp185))
    (probabilistic 1/4 (and (not (running comp185))))
  )
)
(:action update-status-comp186-rebooted
  :parameters ()
  :precondition (and
    (update-status comp186)
    (rebooted comp186)
  )
  :effect (and
    (not (update-status comp186))
    (update-status comp187)
    (not (rebooted comp186))
    (probabilistic 9/10 (and (running comp186)) 1/10 (and))
  )
)
(:action update-status-comp186-all-on
  :parameters ()
  :precondition (and
    (update-status comp186)
    (not (rebooted comp186))
    (all-on comp186)
  )
  :effect (and
    (not (update-status comp186))
    (update-status comp187)
    (not (all-on comp186))
    (probabilistic 1/20 (and (not (running comp186))))
  )
)
(:action update-status-comp186-one-off
  :parameters ()
  :precondition (and
    (update-status comp186)
    (not (rebooted comp186))
    (one-off comp186)
  )
  :effect (and
    (not (update-status comp186))
    (update-status comp187)
    (not (one-off comp186))
    (probabilistic 1/4 (and (not (running comp186))))
  )
)
(:action update-status-comp187-rebooted
  :parameters ()
  :precondition (and
    (update-status comp187)
    (rebooted comp187)
  )
  :effect (and
    (not (update-status comp187))
    (update-status comp188)
    (not (rebooted comp187))
    (probabilistic 9/10 (and (running comp187)) 1/10 (and))
  )
)
(:action update-status-comp187-all-on
  :parameters ()
  :precondition (and
    (update-status comp187)
    (not (rebooted comp187))
    (all-on comp187)
  )
  :effect (and
    (not (update-status comp187))
    (update-status comp188)
    (not (all-on comp187))
    (probabilistic 1/20 (and (not (running comp187))))
  )
)
(:action update-status-comp187-one-off
  :parameters ()
  :precondition (and
    (update-status comp187)
    (not (rebooted comp187))
    (one-off comp187)
  )
  :effect (and
    (not (update-status comp187))
    (update-status comp188)
    (not (one-off comp187))
    (probabilistic 1/4 (and (not (running comp187))))
  )
)
(:action update-status-comp188-rebooted
  :parameters ()
  :precondition (and
    (update-status comp188)
    (rebooted comp188)
  )
  :effect (and
    (not (update-status comp188))
    (update-status comp189)
    (not (rebooted comp188))
    (probabilistic 9/10 (and (running comp188)) 1/10 (and))
  )
)
(:action update-status-comp188-all-on
  :parameters ()
  :precondition (and
    (update-status comp188)
    (not (rebooted comp188))
    (all-on comp188)
  )
  :effect (and
    (not (update-status comp188))
    (update-status comp189)
    (not (all-on comp188))
    (probabilistic 1/20 (and (not (running comp188))))
  )
)
(:action update-status-comp188-one-off
  :parameters ()
  :precondition (and
    (update-status comp188)
    (not (rebooted comp188))
    (one-off comp188)
  )
  :effect (and
    (not (update-status comp188))
    (update-status comp189)
    (not (one-off comp188))
    (probabilistic 1/4 (and (not (running comp188))))
  )
)
(:action update-status-comp189-rebooted
  :parameters ()
  :precondition (and
    (update-status comp189)
    (rebooted comp189)
  )
  :effect (and
    (not (update-status comp189))
    (update-status comp190)
    (not (rebooted comp189))
    (probabilistic 9/10 (and (running comp189)) 1/10 (and))
  )
)
(:action update-status-comp189-all-on
  :parameters ()
  :precondition (and
    (update-status comp189)
    (not (rebooted comp189))
    (all-on comp189)
  )
  :effect (and
    (not (update-status comp189))
    (update-status comp190)
    (not (all-on comp189))
    (probabilistic 1/20 (and (not (running comp189))))
  )
)
(:action update-status-comp189-one-off
  :parameters ()
  :precondition (and
    (update-status comp189)
    (not (rebooted comp189))
    (one-off comp189)
  )
  :effect (and
    (not (update-status comp189))
    (update-status comp190)
    (not (one-off comp189))
    (probabilistic 1/4 (and (not (running comp189))))
  )
)
(:action update-status-comp190-rebooted
  :parameters ()
  :precondition (and
    (update-status comp190)
    (rebooted comp190)
  )
  :effect (and
    (not (update-status comp190))
    (update-status comp191)
    (not (rebooted comp190))
    (probabilistic 9/10 (and (running comp190)) 1/10 (and))
  )
)
(:action update-status-comp190-all-on
  :parameters ()
  :precondition (and
    (update-status comp190)
    (not (rebooted comp190))
    (all-on comp190)
  )
  :effect (and
    (not (update-status comp190))
    (update-status comp191)
    (not (all-on comp190))
    (probabilistic 1/20 (and (not (running comp190))))
  )
)
(:action update-status-comp190-one-off
  :parameters ()
  :precondition (and
    (update-status comp190)
    (not (rebooted comp190))
    (one-off comp190)
  )
  :effect (and
    (not (update-status comp190))
    (update-status comp191)
    (not (one-off comp190))
    (probabilistic 1/4 (and (not (running comp190))))
  )
)
(:action update-status-comp191-rebooted
  :parameters ()
  :precondition (and
    (update-status comp191)
    (rebooted comp191)
  )
  :effect (and
    (not (update-status comp191))
    (update-status comp192)
    (not (rebooted comp191))
    (probabilistic 9/10 (and (running comp191)) 1/10 (and))
  )
)
(:action update-status-comp191-all-on
  :parameters ()
  :precondition (and
    (update-status comp191)
    (not (rebooted comp191))
    (all-on comp191)
  )
  :effect (and
    (not (update-status comp191))
    (update-status comp192)
    (not (all-on comp191))
    (probabilistic 1/20 (and (not (running comp191))))
  )
)
(:action update-status-comp191-one-off
  :parameters ()
  :precondition (and
    (update-status comp191)
    (not (rebooted comp191))
    (one-off comp191)
  )
  :effect (and
    (not (update-status comp191))
    (update-status comp192)
    (not (one-off comp191))
    (probabilistic 1/4 (and (not (running comp191))))
  )
)
(:action update-status-comp192-rebooted
  :parameters ()
  :precondition (and
    (update-status comp192)
    (rebooted comp192)
  )
  :effect (and
    (not (update-status comp192))
    (update-status comp193)
    (not (rebooted comp192))
    (probabilistic 9/10 (and (running comp192)) 1/10 (and))
  )
)
(:action update-status-comp192-all-on
  :parameters ()
  :precondition (and
    (update-status comp192)
    (not (rebooted comp192))
    (all-on comp192)
  )
  :effect (and
    (not (update-status comp192))
    (update-status comp193)
    (not (all-on comp192))
    (probabilistic 1/20 (and (not (running comp192))))
  )
)
(:action update-status-comp192-one-off
  :parameters ()
  :precondition (and
    (update-status comp192)
    (not (rebooted comp192))
    (one-off comp192)
  )
  :effect (and
    (not (update-status comp192))
    (update-status comp193)
    (not (one-off comp192))
    (probabilistic 1/4 (and (not (running comp192))))
  )
)
(:action update-status-comp193-rebooted
  :parameters ()
  :precondition (and
    (update-status comp193)
    (rebooted comp193)
  )
  :effect (and
    (not (update-status comp193))
    (update-status comp194)
    (not (rebooted comp193))
    (probabilistic 9/10 (and (running comp193)) 1/10 (and))
  )
)
(:action update-status-comp193-all-on
  :parameters ()
  :precondition (and
    (update-status comp193)
    (not (rebooted comp193))
    (all-on comp193)
  )
  :effect (and
    (not (update-status comp193))
    (update-status comp194)
    (not (all-on comp193))
    (probabilistic 1/20 (and (not (running comp193))))
  )
)
(:action update-status-comp193-one-off
  :parameters ()
  :precondition (and
    (update-status comp193)
    (not (rebooted comp193))
    (one-off comp193)
  )
  :effect (and
    (not (update-status comp193))
    (update-status comp194)
    (not (one-off comp193))
    (probabilistic 1/4 (and (not (running comp193))))
  )
)
(:action update-status-comp194-rebooted
  :parameters ()
  :precondition (and
    (update-status comp194)
    (rebooted comp194)
  )
  :effect (and
    (not (update-status comp194))
    (update-status comp195)
    (not (rebooted comp194))
    (probabilistic 9/10 (and (running comp194)) 1/10 (and))
  )
)
(:action update-status-comp194-all-on
  :parameters ()
  :precondition (and
    (update-status comp194)
    (not (rebooted comp194))
    (all-on comp194)
  )
  :effect (and
    (not (update-status comp194))
    (update-status comp195)
    (not (all-on comp194))
    (probabilistic 1/20 (and (not (running comp194))))
  )
)
(:action update-status-comp194-one-off
  :parameters ()
  :precondition (and
    (update-status comp194)
    (not (rebooted comp194))
    (one-off comp194)
  )
  :effect (and
    (not (update-status comp194))
    (update-status comp195)
    (not (one-off comp194))
    (probabilistic 1/4 (and (not (running comp194))))
  )
)
(:action update-status-comp195-rebooted
  :parameters ()
  :precondition (and
    (update-status comp195)
    (rebooted comp195)
  )
  :effect (and
    (not (update-status comp195))
    (update-status comp196)
    (not (rebooted comp195))
    (probabilistic 9/10 (and (running comp195)) 1/10 (and))
  )
)
(:action update-status-comp195-all-on
  :parameters ()
  :precondition (and
    (update-status comp195)
    (not (rebooted comp195))
    (all-on comp195)
  )
  :effect (and
    (not (update-status comp195))
    (update-status comp196)
    (not (all-on comp195))
    (probabilistic 1/20 (and (not (running comp195))))
  )
)
(:action update-status-comp195-one-off
  :parameters ()
  :precondition (and
    (update-status comp195)
    (not (rebooted comp195))
    (one-off comp195)
  )
  :effect (and
    (not (update-status comp195))
    (update-status comp196)
    (not (one-off comp195))
    (probabilistic 1/4 (and (not (running comp195))))
  )
)
(:action update-status-comp196-rebooted
  :parameters ()
  :precondition (and
    (update-status comp196)
    (rebooted comp196)
  )
  :effect (and
    (not (update-status comp196))
    (update-status comp197)
    (not (rebooted comp196))
    (probabilistic 9/10 (and (running comp196)) 1/10 (and))
  )
)
(:action update-status-comp196-all-on
  :parameters ()
  :precondition (and
    (update-status comp196)
    (not (rebooted comp196))
    (all-on comp196)
  )
  :effect (and
    (not (update-status comp196))
    (update-status comp197)
    (not (all-on comp196))
    (probabilistic 1/20 (and (not (running comp196))))
  )
)
(:action update-status-comp196-one-off
  :parameters ()
  :precondition (and
    (update-status comp196)
    (not (rebooted comp196))
    (one-off comp196)
  )
  :effect (and
    (not (update-status comp196))
    (update-status comp197)
    (not (one-off comp196))
    (probabilistic 1/4 (and (not (running comp196))))
  )
)
(:action update-status-comp197-rebooted
  :parameters ()
  :precondition (and
    (update-status comp197)
    (rebooted comp197)
  )
  :effect (and
    (not (update-status comp197))
    (update-status comp198)
    (not (rebooted comp197))
    (probabilistic 9/10 (and (running comp197)) 1/10 (and))
  )
)
(:action update-status-comp197-all-on
  :parameters ()
  :precondition (and
    (update-status comp197)
    (not (rebooted comp197))
    (all-on comp197)
  )
  :effect (and
    (not (update-status comp197))
    (update-status comp198)
    (not (all-on comp197))
    (probabilistic 1/20 (and (not (running comp197))))
  )
)
(:action update-status-comp197-one-off
  :parameters ()
  :precondition (and
    (update-status comp197)
    (not (rebooted comp197))
    (one-off comp197)
  )
  :effect (and
    (not (update-status comp197))
    (update-status comp198)
    (not (one-off comp197))
    (probabilistic 1/4 (and (not (running comp197))))
  )
)
(:action update-status-comp198-rebooted
  :parameters ()
  :precondition (and
    (update-status comp198)
    (rebooted comp198)
  )
  :effect (and
    (not (update-status comp198))
    (update-status comp199)
    (not (rebooted comp198))
    (probabilistic 9/10 (and (running comp198)) 1/10 (and))
  )
)
(:action update-status-comp198-all-on
  :parameters ()
  :precondition (and
    (update-status comp198)
    (not (rebooted comp198))
    (all-on comp198)
  )
  :effect (and
    (not (update-status comp198))
    (update-status comp199)
    (not (all-on comp198))
    (probabilistic 1/20 (and (not (running comp198))))
  )
)
(:action update-status-comp198-one-off
  :parameters ()
  :precondition (and
    (update-status comp198)
    (not (rebooted comp198))
    (one-off comp198)
  )
  :effect (and
    (not (update-status comp198))
    (update-status comp199)
    (not (one-off comp198))
    (probabilistic 1/4 (and (not (running comp198))))
  )
)
(:action update-status-comp199-rebooted
  :parameters ()
  :precondition (and
    (update-status comp199)
    (rebooted comp199)
  )
  :effect (and
    (not (update-status comp199))
    (update-status comp200)
    (not (rebooted comp199))
    (probabilistic 9/10 (and (running comp199)) 1/10 (and))
  )
)
(:action update-status-comp199-all-on
  :parameters ()
  :precondition (and
    (update-status comp199)
    (not (rebooted comp199))
    (all-on comp199)
  )
  :effect (and
    (not (update-status comp199))
    (update-status comp200)
    (not (all-on comp199))
    (probabilistic 1/20 (and (not (running comp199))))
  )
)
(:action update-status-comp199-one-off
  :parameters ()
  :precondition (and
    (update-status comp199)
    (not (rebooted comp199))
    (one-off comp199)
  )
  :effect (and
    (not (update-status comp199))
    (update-status comp200)
    (not (one-off comp199))
    (probabilistic 1/4 (and (not (running comp199))))
  )
)
(:action update-status-comp200-rebooted
  :parameters ()
  :precondition (and
    (update-status comp200)
    (rebooted comp200)
  )
  :effect (and
    (not (update-status comp200))
    (update-status comp201)
    (not (rebooted comp200))
    (probabilistic 9/10 (and (running comp200)) 1/10 (and))
  )
)
(:action update-status-comp200-all-on
  :parameters ()
  :precondition (and
    (update-status comp200)
    (not (rebooted comp200))
    (all-on comp200)
  )
  :effect (and
    (not (update-status comp200))
    (update-status comp201)
    (not (all-on comp200))
    (probabilistic 1/20 (and (not (running comp200))))
  )
)
(:action update-status-comp200-one-off
  :parameters ()
  :precondition (and
    (update-status comp200)
    (not (rebooted comp200))
    (one-off comp200)
  )
  :effect (and
    (not (update-status comp200))
    (update-status comp201)
    (not (one-off comp200))
    (probabilistic 1/4 (and (not (running comp200))))
  )
)
(:action update-status-comp201-rebooted
  :parameters ()
  :precondition (and
    (update-status comp201)
    (rebooted comp201)
  )
  :effect (and
    (not (update-status comp201))
    (update-status comp202)
    (not (rebooted comp201))
    (probabilistic 9/10 (and (running comp201)) 1/10 (and))
  )
)
(:action update-status-comp201-all-on
  :parameters ()
  :precondition (and
    (update-status comp201)
    (not (rebooted comp201))
    (all-on comp201)
  )
  :effect (and
    (not (update-status comp201))
    (update-status comp202)
    (not (all-on comp201))
    (probabilistic 1/20 (and (not (running comp201))))
  )
)
(:action update-status-comp201-one-off
  :parameters ()
  :precondition (and
    (update-status comp201)
    (not (rebooted comp201))
    (one-off comp201)
  )
  :effect (and
    (not (update-status comp201))
    (update-status comp202)
    (not (one-off comp201))
    (probabilistic 1/4 (and (not (running comp201))))
  )
)
(:action update-status-comp202-rebooted
  :parameters ()
  :precondition (and
    (update-status comp202)
    (rebooted comp202)
  )
  :effect (and
    (not (update-status comp202))
    (update-status comp203)
    (not (rebooted comp202))
    (probabilistic 9/10 (and (running comp202)) 1/10 (and))
  )
)
(:action update-status-comp202-all-on
  :parameters ()
  :precondition (and
    (update-status comp202)
    (not (rebooted comp202))
    (all-on comp202)
  )
  :effect (and
    (not (update-status comp202))
    (update-status comp203)
    (not (all-on comp202))
    (probabilistic 1/20 (and (not (running comp202))))
  )
)
(:action update-status-comp202-one-off
  :parameters ()
  :precondition (and
    (update-status comp202)
    (not (rebooted comp202))
    (one-off comp202)
  )
  :effect (and
    (not (update-status comp202))
    (update-status comp203)
    (not (one-off comp202))
    (probabilistic 1/4 (and (not (running comp202))))
  )
)
(:action update-status-comp203-rebooted
  :parameters ()
  :precondition (and
    (update-status comp203)
    (rebooted comp203)
  )
  :effect (and
    (not (update-status comp203))
    (update-status comp204)
    (not (rebooted comp203))
    (probabilistic 9/10 (and (running comp203)) 1/10 (and))
  )
)
(:action update-status-comp203-all-on
  :parameters ()
  :precondition (and
    (update-status comp203)
    (not (rebooted comp203))
    (all-on comp203)
  )
  :effect (and
    (not (update-status comp203))
    (update-status comp204)
    (not (all-on comp203))
    (probabilistic 1/20 (and (not (running comp203))))
  )
)
(:action update-status-comp203-one-off
  :parameters ()
  :precondition (and
    (update-status comp203)
    (not (rebooted comp203))
    (one-off comp203)
  )
  :effect (and
    (not (update-status comp203))
    (update-status comp204)
    (not (one-off comp203))
    (probabilistic 1/4 (and (not (running comp203))))
  )
)
(:action update-status-comp204-rebooted
  :parameters ()
  :precondition (and
    (update-status comp204)
    (rebooted comp204)
  )
  :effect (and
    (not (update-status comp204))
    (update-status comp205)
    (not (rebooted comp204))
    (probabilistic 9/10 (and (running comp204)) 1/10 (and))
  )
)
(:action update-status-comp204-all-on
  :parameters ()
  :precondition (and
    (update-status comp204)
    (not (rebooted comp204))
    (all-on comp204)
  )
  :effect (and
    (not (update-status comp204))
    (update-status comp205)
    (not (all-on comp204))
    (probabilistic 1/20 (and (not (running comp204))))
  )
)
(:action update-status-comp204-one-off
  :parameters ()
  :precondition (and
    (update-status comp204)
    (not (rebooted comp204))
    (one-off comp204)
  )
  :effect (and
    (not (update-status comp204))
    (update-status comp205)
    (not (one-off comp204))
    (probabilistic 1/4 (and (not (running comp204))))
  )
)
(:action update-status-comp205-rebooted
  :parameters ()
  :precondition (and
    (update-status comp205)
  )
  )
)
  )