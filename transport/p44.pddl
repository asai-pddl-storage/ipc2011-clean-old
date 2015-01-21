; Transport two-cities-sequential-66nodes-1000size-4degree-100mindistance-4trucks-42packages-2013seed

(define (problem transport-two-cities-sequential-66nodes-1000size-4degree-100mindistance-4trucks-42packages-2013seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  city-1-loc-11 - location
  city-2-loc-11 - location
  city-1-loc-12 - location
  city-2-loc-12 - location
  city-1-loc-13 - location
  city-2-loc-13 - location
  city-1-loc-14 - location
  city-2-loc-14 - location
  city-1-loc-15 - location
  city-2-loc-15 - location
  city-1-loc-16 - location
  city-2-loc-16 - location
  city-1-loc-17 - location
  city-2-loc-17 - location
  city-1-loc-18 - location
  city-2-loc-18 - location
  city-1-loc-19 - location
  city-2-loc-19 - location
  city-1-loc-20 - location
  city-2-loc-20 - location
  city-1-loc-21 - location
  city-2-loc-21 - location
  city-1-loc-22 - location
  city-2-loc-22 - location
  city-1-loc-23 - location
  city-2-loc-23 - location
  city-1-loc-24 - location
  city-2-loc-24 - location
  city-1-loc-25 - location
  city-2-loc-25 - location
  city-1-loc-26 - location
  city-2-loc-26 - location
  city-1-loc-27 - location
  city-2-loc-27 - location
  city-1-loc-28 - location
  city-2-loc-28 - location
  city-1-loc-29 - location
  city-2-loc-29 - location
  city-1-loc-30 - location
  city-2-loc-30 - location
  city-1-loc-31 - location
  city-2-loc-31 - location
  city-1-loc-32 - location
  city-2-loc-32 - location
  city-1-loc-33 - location
  city-2-loc-33 - location
  city-1-loc-34 - location
  city-2-loc-34 - location
  city-1-loc-35 - location
  city-2-loc-35 - location
  city-1-loc-36 - location
  city-2-loc-36 - location
  city-1-loc-37 - location
  city-2-loc-37 - location
  city-1-loc-38 - location
  city-2-loc-38 - location
  city-1-loc-39 - location
  city-2-loc-39 - location
  city-1-loc-40 - location
  city-2-loc-40 - location
  city-1-loc-41 - location
  city-2-loc-41 - location
  city-1-loc-42 - location
  city-2-loc-42 - location
  city-1-loc-43 - location
  city-2-loc-43 - location
  city-1-loc-44 - location
  city-2-loc-44 - location
  city-1-loc-45 - location
  city-2-loc-45 - location
  city-1-loc-46 - location
  city-2-loc-46 - location
  city-1-loc-47 - location
  city-2-loc-47 - location
  city-1-loc-48 - location
  city-2-loc-48 - location
  city-1-loc-49 - location
  city-2-loc-49 - location
  city-1-loc-50 - location
  city-2-loc-50 - location
  city-1-loc-51 - location
  city-2-loc-51 - location
  city-1-loc-52 - location
  city-2-loc-52 - location
  city-1-loc-53 - location
  city-2-loc-53 - location
  city-1-loc-54 - location
  city-2-loc-54 - location
  city-1-loc-55 - location
  city-2-loc-55 - location
  city-1-loc-56 - location
  city-2-loc-56 - location
  city-1-loc-57 - location
  city-2-loc-57 - location
  city-1-loc-58 - location
  city-2-loc-58 - location
  city-1-loc-59 - location
  city-2-loc-59 - location
  city-1-loc-60 - location
  city-2-loc-60 - location
  city-1-loc-61 - location
  city-2-loc-61 - location
  city-1-loc-62 - location
  city-2-loc-62 - location
  city-1-loc-63 - location
  city-2-loc-63 - location
  city-1-loc-64 - location
  city-2-loc-64 - location
  city-1-loc-65 - location
  city-2-loc-65 - location
  city-1-loc-66 - location
  city-2-loc-66 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  truck-4 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  package-9 - package
  package-10 - package
  package-11 - package
  package-12 - package
  package-13 - package
  package-14 - package
  package-15 - package
  package-16 - package
  package-17 - package
  package-18 - package
  package-19 - package
  package-20 - package
  package-21 - package
  package-22 - package
  package-23 - package
  package-24 - package
  package-25 - package
  package-26 - package
  package-27 - package
  package-28 - package
  package-29 - package
  package-30 - package
  package-31 - package
  package-32 - package
  package-33 - package
  package-34 - package
  package-35 - package
  package-36 - package
  package-37 - package
  package-38 - package
  package-39 - package
  package-40 - package
  package-41 - package
  package-42 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init
  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 554,565 -> 512,409
  (road city-1-loc-5 city-1-loc-4)
  (= (road-length city-1-loc-5 city-1-loc-4) 17)
  ; 512,409 -> 554,565
  (road city-1-loc-4 city-1-loc-5)
  (= (road-length city-1-loc-4 city-1-loc-5) 17)
  ; 700,557 -> 554,565
  (road city-1-loc-9 city-1-loc-5)
  (= (road-length city-1-loc-9 city-1-loc-5) 15)
  ; 554,565 -> 700,557
  (road city-1-loc-5 city-1-loc-9)
  (= (road-length city-1-loc-5 city-1-loc-9) 15)
  ; 835,584 -> 700,557
  (road city-1-loc-12 city-1-loc-9)
  (= (road-length city-1-loc-12 city-1-loc-9) 14)
  ; 700,557 -> 835,584
  (road city-1-loc-9 city-1-loc-12)
  (= (road-length city-1-loc-9 city-1-loc-12) 14)
  ; 835,584 -> 944,697
  (road city-1-loc-12 city-1-loc-10)
  (= (road-length city-1-loc-12 city-1-loc-10) 16)
  ; 944,697 -> 835,584
  (road city-1-loc-10 city-1-loc-12)
  (= (road-length city-1-loc-10 city-1-loc-12) 16)
  ; 389,798 -> 401,900
  (road city-1-loc-14 city-1-loc-2)
  (= (road-length city-1-loc-14 city-1-loc-2) 11)
  ; 401,900 -> 389,798
  (road city-1-loc-2 city-1-loc-14)
  (= (road-length city-1-loc-2 city-1-loc-14) 11)
  ; 625,642 -> 554,565
  (road city-1-loc-15 city-1-loc-5)
  (= (road-length city-1-loc-15 city-1-loc-5) 11)
  ; 554,565 -> 625,642
  (road city-1-loc-5 city-1-loc-15)
  (= (road-length city-1-loc-5 city-1-loc-15) 11)
  ; 625,642 -> 700,557
  (road city-1-loc-15 city-1-loc-9)
  (= (road-length city-1-loc-15 city-1-loc-9) 12)
  ; 700,557 -> 625,642
  (road city-1-loc-9 city-1-loc-15)
  (= (road-length city-1-loc-9 city-1-loc-15) 12)
  ; 922,875 -> 765,898
  (road city-1-loc-16 city-1-loc-6)
  (= (road-length city-1-loc-16 city-1-loc-6) 16)
  ; 765,898 -> 922,875
  (road city-1-loc-6 city-1-loc-16)
  (= (road-length city-1-loc-6 city-1-loc-16) 16)
  ; 13,248 -> 55,393
  (road city-1-loc-17 city-1-loc-7)
  (= (road-length city-1-loc-17 city-1-loc-7) 16)
  ; 55,393 -> 13,248
  (road city-1-loc-7 city-1-loc-17)
  (= (road-length city-1-loc-7 city-1-loc-17) 16)
  ; 520,164 -> 425,51
  (road city-1-loc-18 city-1-loc-1)
  (= (road-length city-1-loc-18 city-1-loc-1) 15)
  ; 425,51 -> 520,164
  (road city-1-loc-1 city-1-loc-18)
  (= (road-length city-1-loc-1 city-1-loc-18) 15)
  ; 626,869 -> 765,898
  (road city-1-loc-19 city-1-loc-6)
  (= (road-length city-1-loc-19 city-1-loc-6) 15)
  ; 765,898 -> 626,869
  (road city-1-loc-6 city-1-loc-19)
  (= (road-length city-1-loc-6 city-1-loc-19) 15)
  ; 148,205 -> 276,182
  (road city-1-loc-20 city-1-loc-11)
  (= (road-length city-1-loc-20 city-1-loc-11) 13)
  ; 276,182 -> 148,205
  (road city-1-loc-11 city-1-loc-20)
  (= (road-length city-1-loc-11 city-1-loc-20) 13)
  ; 148,205 -> 13,248
  (road city-1-loc-20 city-1-loc-17)
  (= (road-length city-1-loc-20 city-1-loc-17) 15)
  ; 13,248 -> 148,205
  (road city-1-loc-17 city-1-loc-20)
  (= (road-length city-1-loc-17 city-1-loc-20) 15)
  ; 782,127 -> 727,217
  (road city-1-loc-22 city-1-loc-13)
  (= (road-length city-1-loc-22 city-1-loc-13) 11)
  ; 727,217 -> 782,127
  (road city-1-loc-13 city-1-loc-22)
  (= (road-length city-1-loc-13 city-1-loc-22) 11)
  ; 815,689 -> 944,697
  (road city-1-loc-23 city-1-loc-10)
  (= (road-length city-1-loc-23 city-1-loc-10) 13)
  ; 944,697 -> 815,689
  (road city-1-loc-10 city-1-loc-23)
  (= (road-length city-1-loc-10 city-1-loc-23) 13)
  ; 815,689 -> 835,584
  (road city-1-loc-23 city-1-loc-12)
  (= (road-length city-1-loc-23 city-1-loc-12) 11)
  ; 835,584 -> 815,689
  (road city-1-loc-12 city-1-loc-23)
  (= (road-length city-1-loc-12 city-1-loc-23) 11)
  ; 267,298 -> 276,182
  (road city-1-loc-24 city-1-loc-11)
  (= (road-length city-1-loc-24 city-1-loc-11) 12)
  ; 276,182 -> 267,298
  (road city-1-loc-11 city-1-loc-24)
  (= (road-length city-1-loc-11 city-1-loc-24) 12)
  ; 267,298 -> 148,205
  (road city-1-loc-24 city-1-loc-20)
  (= (road-length city-1-loc-24 city-1-loc-20) 16)
  ; 148,205 -> 267,298
  (road city-1-loc-20 city-1-loc-24)
  (= (road-length city-1-loc-20 city-1-loc-24) 16)
  ; 371,493 -> 512,409
  (road city-1-loc-26 city-1-loc-4)
  (= (road-length city-1-loc-26 city-1-loc-4) 17)
  ; 512,409 -> 371,493
  (road city-1-loc-4 city-1-loc-26)
  (= (road-length city-1-loc-4 city-1-loc-26) 17)
  ; 849,242 -> 727,217
  (road city-1-loc-27 city-1-loc-13)
  (= (road-length city-1-loc-27 city-1-loc-13) 13)
  ; 727,217 -> 849,242
  (road city-1-loc-13 city-1-loc-27)
  (= (road-length city-1-loc-13 city-1-loc-27) 13)
  ; 849,242 -> 782,127
  (road city-1-loc-27 city-1-loc-22)
  (= (road-length city-1-loc-27 city-1-loc-22) 14)
  ; 782,127 -> 849,242
  (road city-1-loc-22 city-1-loc-27)
  (= (road-length city-1-loc-22 city-1-loc-27) 14)
  ; 554,978 -> 626,869
  (road city-1-loc-28 city-1-loc-19)
  (= (road-length city-1-loc-28 city-1-loc-19) 14)
  ; 626,869 -> 554,978
  (road city-1-loc-19 city-1-loc-28)
  (= (road-length city-1-loc-19 city-1-loc-28) 14)
  ; 216,597 -> 126,655
  (road city-1-loc-31 city-1-loc-29)
  (= (road-length city-1-loc-31 city-1-loc-29) 11)
  ; 126,655 -> 216,597
  (road city-1-loc-29 city-1-loc-31)
  (= (road-length city-1-loc-29 city-1-loc-31) 11)
  ; 262,415 -> 267,298
  (road city-1-loc-32 city-1-loc-24)
  (= (road-length city-1-loc-32 city-1-loc-24) 12)
  ; 267,298 -> 262,415
  (road city-1-loc-24 city-1-loc-32)
  (= (road-length city-1-loc-24 city-1-loc-32) 12)
  ; 262,415 -> 371,493
  (road city-1-loc-32 city-1-loc-26)
  (= (road-length city-1-loc-32 city-1-loc-26) 14)
  ; 371,493 -> 262,415
  (road city-1-loc-26 city-1-loc-32)
  (= (road-length city-1-loc-26 city-1-loc-32) 14)
  ; 206,48 -> 276,182
  (road city-1-loc-33 city-1-loc-11)
  (= (road-length city-1-loc-33 city-1-loc-11) 16)
  ; 276,182 -> 206,48
  (road city-1-loc-11 city-1-loc-33)
  (= (road-length city-1-loc-11 city-1-loc-33) 16)
  ; 206,48 -> 87,35
  (road city-1-loc-33 city-1-loc-21)
  (= (road-length city-1-loc-33 city-1-loc-21) 12)
  ; 87,35 -> 206,48
  (road city-1-loc-21 city-1-loc-33)
  (= (road-length city-1-loc-21 city-1-loc-33) 12)
  ; 192,840 -> 81,825
  (road city-1-loc-34 city-1-loc-8)
  (= (road-length city-1-loc-34 city-1-loc-8) 12)
  ; 81,825 -> 192,840
  (road city-1-loc-8 city-1-loc-34)
  (= (road-length city-1-loc-8 city-1-loc-34) 12)
  ; 956,245 -> 849,242
  (road city-1-loc-35 city-1-loc-27)
  (= (road-length city-1-loc-35 city-1-loc-27) 11)
  ; 849,242 -> 956,245
  (road city-1-loc-27 city-1-loc-35)
  (= (road-length city-1-loc-27 city-1-loc-35) 11)
  ; 997,974 -> 922,875
  (road city-1-loc-36 city-1-loc-16)
  (= (road-length city-1-loc-36 city-1-loc-16) 13)
  ; 922,875 -> 997,974
  (road city-1-loc-16 city-1-loc-36)
  (= (road-length city-1-loc-16 city-1-loc-36) 13)
  ; 419,360 -> 512,409
  (road city-1-loc-37 city-1-loc-4)
  (= (road-length city-1-loc-37 city-1-loc-4) 11)
  ; 512,409 -> 419,360
  (road city-1-loc-4 city-1-loc-37)
  (= (road-length city-1-loc-4 city-1-loc-37) 11)
  ; 419,360 -> 267,298
  (road city-1-loc-37 city-1-loc-24)
  (= (road-length city-1-loc-37 city-1-loc-24) 17)
  ; 267,298 -> 419,360
  (road city-1-loc-24 city-1-loc-37)
  (= (road-length city-1-loc-24 city-1-loc-37) 17)
  ; 419,360 -> 371,493
  (road city-1-loc-37 city-1-loc-26)
  (= (road-length city-1-loc-37 city-1-loc-26) 15)
  ; 371,493 -> 419,360
  (road city-1-loc-26 city-1-loc-37)
  (= (road-length city-1-loc-26 city-1-loc-37) 15)
  ; 419,360 -> 262,415
  (road city-1-loc-37 city-1-loc-32)
  (= (road-length city-1-loc-37 city-1-loc-32) 17)
  ; 262,415 -> 419,360
  (road city-1-loc-32 city-1-loc-37)
  (= (road-length city-1-loc-32 city-1-loc-37) 17)
  ; 553,70 -> 425,51
  (road city-1-loc-38 city-1-loc-1)
  (= (road-length city-1-loc-38 city-1-loc-1) 13)
  ; 425,51 -> 553,70
  (road city-1-loc-1 city-1-loc-38)
  (= (road-length city-1-loc-1 city-1-loc-38) 13)
  ; 553,70 -> 520,164
  (road city-1-loc-38 city-1-loc-18)
  (= (road-length city-1-loc-38 city-1-loc-18) 10)
  ; 520,164 -> 553,70
  (road city-1-loc-18 city-1-loc-38)
  (= (road-length city-1-loc-18 city-1-loc-38) 10)
  ; 968,139 -> 849,242
  (road city-1-loc-39 city-1-loc-27)
  (= (road-length city-1-loc-39 city-1-loc-27) 16)
  ; 849,242 -> 968,139
  (road city-1-loc-27 city-1-loc-39)
  (= (road-length city-1-loc-27 city-1-loc-39) 16)
  ; 968,139 -> 969,3
  (road city-1-loc-39 city-1-loc-30)
  (= (road-length city-1-loc-39 city-1-loc-30) 14)
  ; 969,3 -> 968,139
  (road city-1-loc-30 city-1-loc-39)
  (= (road-length city-1-loc-30 city-1-loc-39) 14)
  ; 968,139 -> 956,245
  (road city-1-loc-39 city-1-loc-35)
  (= (road-length city-1-loc-39 city-1-loc-35) 11)
  ; 956,245 -> 968,139
  (road city-1-loc-35 city-1-loc-39)
  (= (road-length city-1-loc-35 city-1-loc-39) 11)
  ; 336,637 -> 371,493
  (road city-1-loc-40 city-1-loc-26)
  (= (road-length city-1-loc-40 city-1-loc-26) 15)
  ; 371,493 -> 336,637
  (road city-1-loc-26 city-1-loc-40)
  (= (road-length city-1-loc-26 city-1-loc-40) 15)
  ; 336,637 -> 216,597
  (road city-1-loc-40 city-1-loc-31)
  (= (road-length city-1-loc-40 city-1-loc-31) 13)
  ; 216,597 -> 336,637
  (road city-1-loc-31 city-1-loc-40)
  (= (road-length city-1-loc-31 city-1-loc-40) 13)
  ; 867,49 -> 782,127
  (road city-1-loc-41 city-1-loc-22)
  (= (road-length city-1-loc-41 city-1-loc-22) 12)
  ; 782,127 -> 867,49
  (road city-1-loc-22 city-1-loc-41)
  (= (road-length city-1-loc-22 city-1-loc-41) 12)
  ; 867,49 -> 969,3
  (road city-1-loc-41 city-1-loc-30)
  (= (road-length city-1-loc-41 city-1-loc-30) 12)
  ; 969,3 -> 867,49
  (road city-1-loc-30 city-1-loc-41)
  (= (road-length city-1-loc-30 city-1-loc-41) 12)
  ; 867,49 -> 968,139
  (road city-1-loc-41 city-1-loc-39)
  (= (road-length city-1-loc-41 city-1-loc-39) 14)
  ; 968,139 -> 867,49
  (road city-1-loc-39 city-1-loc-41)
  (= (road-length city-1-loc-39 city-1-loc-41) 14)
  ; 303,746 -> 389,798
  (road city-1-loc-42 city-1-loc-14)
  (= (road-length city-1-loc-42 city-1-loc-14) 10)
  ; 389,798 -> 303,746
  (road city-1-loc-14 city-1-loc-42)
  (= (road-length city-1-loc-14 city-1-loc-42) 10)
  ; 303,746 -> 192,840
  (road city-1-loc-42 city-1-loc-34)
  (= (road-length city-1-loc-42 city-1-loc-34) 15)
  ; 192,840 -> 303,746
  (road city-1-loc-34 city-1-loc-42)
  (= (road-length city-1-loc-34 city-1-loc-42) 15)
  ; 303,746 -> 336,637
  (road city-1-loc-42 city-1-loc-40)
  (= (road-length city-1-loc-42 city-1-loc-40) 12)
  ; 336,637 -> 303,746
  (road city-1-loc-40 city-1-loc-42)
  (= (road-length city-1-loc-40 city-1-loc-42) 12)
  ; 168,969 -> 192,840
  (road city-1-loc-43 city-1-loc-34)
  (= (road-length city-1-loc-43 city-1-loc-34) 14)
  ; 192,840 -> 168,969
  (road city-1-loc-34 city-1-loc-43)
  (= (road-length city-1-loc-34 city-1-loc-43) 14)
  ; 654,75 -> 727,217
  (road city-1-loc-44 city-1-loc-13)
  (= (road-length city-1-loc-44 city-1-loc-13) 16)
  ; 727,217 -> 654,75
  (road city-1-loc-13 city-1-loc-44)
  (= (road-length city-1-loc-13 city-1-loc-44) 16)
  ; 654,75 -> 520,164
  (road city-1-loc-44 city-1-loc-18)
  (= (road-length city-1-loc-44 city-1-loc-18) 17)
  ; 520,164 -> 654,75
  (road city-1-loc-18 city-1-loc-44)
  (= (road-length city-1-loc-18 city-1-loc-44) 17)
  ; 654,75 -> 782,127
  (road city-1-loc-44 city-1-loc-22)
  (= (road-length city-1-loc-44 city-1-loc-22) 14)
  ; 782,127 -> 654,75
  (road city-1-loc-22 city-1-loc-44)
  (= (road-length city-1-loc-22 city-1-loc-44) 14)
  ; 654,75 -> 553,70
  (road city-1-loc-44 city-1-loc-38)
  (= (road-length city-1-loc-44 city-1-loc-38) 11)
  ; 553,70 -> 654,75
  (road city-1-loc-38 city-1-loc-44)
  (= (road-length city-1-loc-38 city-1-loc-44) 11)
  ; 527,842 -> 401,900
  (road city-1-loc-45 city-1-loc-2)
  (= (road-length city-1-loc-45 city-1-loc-2) 14)
  ; 401,900 -> 527,842
  (road city-1-loc-2 city-1-loc-45)
  (= (road-length city-1-loc-2 city-1-loc-45) 14)
  ; 527,842 -> 389,798
  (road city-1-loc-45 city-1-loc-14)
  (= (road-length city-1-loc-45 city-1-loc-14) 15)
  ; 389,798 -> 527,842
  (road city-1-loc-14 city-1-loc-45)
  (= (road-length city-1-loc-14 city-1-loc-45) 15)
  ; 527,842 -> 626,869
  (road city-1-loc-45 city-1-loc-19)
  (= (road-length city-1-loc-45 city-1-loc-19) 11)
  ; 626,869 -> 527,842
  (road city-1-loc-19 city-1-loc-45)
  (= (road-length city-1-loc-19 city-1-loc-45) 11)
  ; 527,842 -> 554,978
  (road city-1-loc-45 city-1-loc-28)
  (= (road-length city-1-loc-45 city-1-loc-28) 14)
  ; 554,978 -> 527,842
  (road city-1-loc-28 city-1-loc-45)
  (= (road-length city-1-loc-28 city-1-loc-45) 14)
  ; 681,982 -> 765,898
  (road city-1-loc-46 city-1-loc-6)
  (= (road-length city-1-loc-46 city-1-loc-6) 12)
  ; 765,898 -> 681,982
  (road city-1-loc-6 city-1-loc-46)
  (= (road-length city-1-loc-6 city-1-loc-46) 12)
  ; 681,982 -> 626,869
  (road city-1-loc-46 city-1-loc-19)
  (= (road-length city-1-loc-46 city-1-loc-19) 13)
  ; 626,869 -> 681,982
  (road city-1-loc-19 city-1-loc-46)
  (= (road-length city-1-loc-19 city-1-loc-46) 13)
  ; 681,982 -> 554,978
  (road city-1-loc-46 city-1-loc-28)
  (= (road-length city-1-loc-46 city-1-loc-28) 13)
  ; 554,978 -> 681,982
  (road city-1-loc-28 city-1-loc-46)
  (= (road-length city-1-loc-28 city-1-loc-46) 13)
  ; 623,177 -> 727,217
  (road city-1-loc-47 city-1-loc-13)
  (= (road-length city-1-loc-47 city-1-loc-13) 12)
  ; 727,217 -> 623,177
  (road city-1-loc-13 city-1-loc-47)
  (= (road-length city-1-loc-13 city-1-loc-47) 12)
  ; 623,177 -> 520,164
  (road city-1-loc-47 city-1-loc-18)
  (= (road-length city-1-loc-47 city-1-loc-18) 11)
  ; 520,164 -> 623,177
  (road city-1-loc-18 city-1-loc-47)
  (= (road-length city-1-loc-18 city-1-loc-47) 11)
  ; 623,177 -> 553,70
  (road city-1-loc-47 city-1-loc-38)
  (= (road-length city-1-loc-47 city-1-loc-38) 13)
  ; 553,70 -> 623,177
  (road city-1-loc-38 city-1-loc-47)
  (= (road-length city-1-loc-38 city-1-loc-47) 13)
  ; 623,177 -> 654,75
  (road city-1-loc-47 city-1-loc-44)
  (= (road-length city-1-loc-47 city-1-loc-44) 11)
  ; 654,75 -> 623,177
  (road city-1-loc-44 city-1-loc-47)
  (= (road-length city-1-loc-44 city-1-loc-47) 11)
  ; 557,286 -> 512,409
  (road city-1-loc-48 city-1-loc-4)
  (= (road-length city-1-loc-48 city-1-loc-4) 14)
  ; 512,409 -> 557,286
  (road city-1-loc-4 city-1-loc-48)
  (= (road-length city-1-loc-4 city-1-loc-48) 14)
  ; 557,286 -> 520,164
  (road city-1-loc-48 city-1-loc-18)
  (= (road-length city-1-loc-48 city-1-loc-18) 13)
  ; 520,164 -> 557,286
  (road city-1-loc-18 city-1-loc-48)
  (= (road-length city-1-loc-18 city-1-loc-48) 13)
  ; 557,286 -> 419,360
  (road city-1-loc-48 city-1-loc-37)
  (= (road-length city-1-loc-48 city-1-loc-37) 16)
  ; 419,360 -> 557,286
  (road city-1-loc-37 city-1-loc-48)
  (= (road-length city-1-loc-37 city-1-loc-48) 16)
  ; 557,286 -> 623,177
  (road city-1-loc-48 city-1-loc-47)
  (= (road-length city-1-loc-48 city-1-loc-47) 13)
  ; 623,177 -> 557,286
  (road city-1-loc-47 city-1-loc-48)
  (= (road-length city-1-loc-47 city-1-loc-48) 13)
  ; 907,360 -> 755,388
  (road city-1-loc-49 city-1-loc-3)
  (= (road-length city-1-loc-49 city-1-loc-3) 16)
  ; 755,388 -> 907,360
  (road city-1-loc-3 city-1-loc-49)
  (= (road-length city-1-loc-3 city-1-loc-49) 16)
  ; 907,360 -> 987,459
  (road city-1-loc-49 city-1-loc-25)
  (= (road-length city-1-loc-49 city-1-loc-25) 13)
  ; 987,459 -> 907,360
  (road city-1-loc-25 city-1-loc-49)
  (= (road-length city-1-loc-25 city-1-loc-49) 13)
  ; 907,360 -> 849,242
  (road city-1-loc-49 city-1-loc-27)
  (= (road-length city-1-loc-49 city-1-loc-27) 14)
  ; 849,242 -> 907,360
  (road city-1-loc-27 city-1-loc-49)
  (= (road-length city-1-loc-27 city-1-loc-49) 14)
  ; 907,360 -> 956,245
  (road city-1-loc-49 city-1-loc-35)
  (= (road-length city-1-loc-49 city-1-loc-35) 13)
  ; 956,245 -> 907,360
  (road city-1-loc-35 city-1-loc-49)
  (= (road-length city-1-loc-35 city-1-loc-49) 13)
  ; 285,985 -> 401,900
  (road city-1-loc-50 city-1-loc-2)
  (= (road-length city-1-loc-50 city-1-loc-2) 15)
  ; 401,900 -> 285,985
  (road city-1-loc-2 city-1-loc-50)
  (= (road-length city-1-loc-2 city-1-loc-50) 15)
  ; 285,985 -> 168,969
  (road city-1-loc-50 city-1-loc-43)
  (= (road-length city-1-loc-50 city-1-loc-43) 12)
  ; 168,969 -> 285,985
  (road city-1-loc-43 city-1-loc-50)
  (= (road-length city-1-loc-43 city-1-loc-50) 12)
  ; 22,566 -> 126,655
  (road city-1-loc-51 city-1-loc-29)
  (= (road-length city-1-loc-51 city-1-loc-29) 14)
  ; 126,655 -> 22,566
  (road city-1-loc-29 city-1-loc-51)
  (= (road-length city-1-loc-29 city-1-loc-51) 14)
  ; 385,168 -> 425,51
  (road city-1-loc-52 city-1-loc-1)
  (= (road-length city-1-loc-52 city-1-loc-1) 13)
  ; 425,51 -> 385,168
  (road city-1-loc-1 city-1-loc-52)
  (= (road-length city-1-loc-1 city-1-loc-52) 13)
  ; 385,168 -> 276,182
  (road city-1-loc-52 city-1-loc-11)
  (= (road-length city-1-loc-52 city-1-loc-11) 11)
  ; 276,182 -> 385,168
  (road city-1-loc-11 city-1-loc-52)
  (= (road-length city-1-loc-11 city-1-loc-52) 11)
  ; 385,168 -> 520,164
  (road city-1-loc-52 city-1-loc-18)
  (= (road-length city-1-loc-52 city-1-loc-18) 14)
  ; 520,164 -> 385,168
  (road city-1-loc-18 city-1-loc-52)
  (= (road-length city-1-loc-18 city-1-loc-52) 14)
  ; 160,449 -> 55,393
  (road city-1-loc-53 city-1-loc-7)
  (= (road-length city-1-loc-53 city-1-loc-7) 12)
  ; 55,393 -> 160,449
  (road city-1-loc-7 city-1-loc-53)
  (= (road-length city-1-loc-7 city-1-loc-53) 12)
  ; 160,449 -> 216,597
  (road city-1-loc-53 city-1-loc-31)
  (= (road-length city-1-loc-53 city-1-loc-31) 16)
  ; 216,597 -> 160,449
  (road city-1-loc-31 city-1-loc-53)
  (= (road-length city-1-loc-31 city-1-loc-53) 16)
  ; 160,449 -> 262,415
  (road city-1-loc-53 city-1-loc-32)
  (= (road-length city-1-loc-53 city-1-loc-32) 11)
  ; 262,415 -> 160,449
  (road city-1-loc-32 city-1-loc-53)
  (= (road-length city-1-loc-32 city-1-loc-53) 11)
  ; 840,992 -> 765,898
  (road city-1-loc-54 city-1-loc-6)
  (= (road-length city-1-loc-54 city-1-loc-6) 12)
  ; 765,898 -> 840,992
  (road city-1-loc-6 city-1-loc-54)
  (= (road-length city-1-loc-6 city-1-loc-54) 12)
  ; 840,992 -> 922,875
  (road city-1-loc-54 city-1-loc-16)
  (= (road-length city-1-loc-54 city-1-loc-16) 15)
  ; 922,875 -> 840,992
  (road city-1-loc-16 city-1-loc-54)
  (= (road-length city-1-loc-16 city-1-loc-54) 15)
  ; 840,992 -> 997,974
  (road city-1-loc-54 city-1-loc-36)
  (= (road-length city-1-loc-54 city-1-loc-36) 16)
  ; 997,974 -> 840,992
  (road city-1-loc-36 city-1-loc-54)
  (= (road-length city-1-loc-36 city-1-loc-54) 16)
  ; 840,992 -> 681,982
  (road city-1-loc-54 city-1-loc-46)
  (= (road-length city-1-loc-54 city-1-loc-46) 16)
  ; 681,982 -> 840,992
  (road city-1-loc-46 city-1-loc-54)
  (= (road-length city-1-loc-46 city-1-loc-54) 16)
  ; 150,327 -> 55,393
  (road city-1-loc-55 city-1-loc-7)
  (= (road-length city-1-loc-55 city-1-loc-7) 12)
  ; 55,393 -> 150,327
  (road city-1-loc-7 city-1-loc-55)
  (= (road-length city-1-loc-7 city-1-loc-55) 12)
  ; 150,327 -> 13,248
  (road city-1-loc-55 city-1-loc-17)
  (= (road-length city-1-loc-55 city-1-loc-17) 16)
  ; 13,248 -> 150,327
  (road city-1-loc-17 city-1-loc-55)
  (= (road-length city-1-loc-17 city-1-loc-55) 16)
  ; 150,327 -> 148,205
  (road city-1-loc-55 city-1-loc-20)
  (= (road-length city-1-loc-55 city-1-loc-20) 13)
  ; 148,205 -> 150,327
  (road city-1-loc-20 city-1-loc-55)
  (= (road-length city-1-loc-20 city-1-loc-55) 13)
  ; 150,327 -> 267,298
  (road city-1-loc-55 city-1-loc-24)
  (= (road-length city-1-loc-55 city-1-loc-24) 13)
  ; 267,298 -> 150,327
  (road city-1-loc-24 city-1-loc-55)
  (= (road-length city-1-loc-24 city-1-loc-55) 13)
  ; 150,327 -> 262,415
  (road city-1-loc-55 city-1-loc-32)
  (= (road-length city-1-loc-55 city-1-loc-32) 15)
  ; 262,415 -> 150,327
  (road city-1-loc-32 city-1-loc-55)
  (= (road-length city-1-loc-32 city-1-loc-55) 15)
  ; 150,327 -> 160,449
  (road city-1-loc-55 city-1-loc-53)
  (= (road-length city-1-loc-55 city-1-loc-53) 13)
  ; 160,449 -> 150,327
  (road city-1-loc-53 city-1-loc-55)
  (= (road-length city-1-loc-53 city-1-loc-55) 13)
  ; 311,29 -> 425,51
  (road city-1-loc-56 city-1-loc-1)
  (= (road-length city-1-loc-56 city-1-loc-1) 12)
  ; 425,51 -> 311,29
  (road city-1-loc-1 city-1-loc-56)
  (= (road-length city-1-loc-1 city-1-loc-56) 12)
  ; 311,29 -> 276,182
  (road city-1-loc-56 city-1-loc-11)
  (= (road-length city-1-loc-56 city-1-loc-11) 16)
  ; 276,182 -> 311,29
  (road city-1-loc-11 city-1-loc-56)
  (= (road-length city-1-loc-11 city-1-loc-56) 16)
  ; 311,29 -> 206,48
  (road city-1-loc-56 city-1-loc-33)
  (= (road-length city-1-loc-56 city-1-loc-33) 11)
  ; 206,48 -> 311,29
  (road city-1-loc-33 city-1-loc-56)
  (= (road-length city-1-loc-33 city-1-loc-56) 11)
  ; 311,29 -> 385,168
  (road city-1-loc-56 city-1-loc-52)
  (= (road-length city-1-loc-56 city-1-loc-52) 16)
  ; 385,168 -> 311,29
  (road city-1-loc-52 city-1-loc-56)
  (= (road-length city-1-loc-52 city-1-loc-56) 16)
  ; 953,556 -> 944,697
  (road city-1-loc-57 city-1-loc-10)
  (= (road-length city-1-loc-57 city-1-loc-10) 15)
  ; 944,697 -> 953,556
  (road city-1-loc-10 city-1-loc-57)
  (= (road-length city-1-loc-10 city-1-loc-57) 15)
  ; 953,556 -> 835,584
  (road city-1-loc-57 city-1-loc-12)
  (= (road-length city-1-loc-57 city-1-loc-12) 13)
  ; 835,584 -> 953,556
  (road city-1-loc-12 city-1-loc-57)
  (= (road-length city-1-loc-12 city-1-loc-57) 13)
  ; 953,556 -> 987,459
  (road city-1-loc-57 city-1-loc-25)
  (= (road-length city-1-loc-57 city-1-loc-25) 11)
  ; 987,459 -> 953,556
  (road city-1-loc-25 city-1-loc-57)
  (= (road-length city-1-loc-25 city-1-loc-57) 11)
  ; 879,478 -> 755,388
  (road city-1-loc-58 city-1-loc-3)
  (= (road-length city-1-loc-58 city-1-loc-3) 16)
  ; 755,388 -> 879,478
  (road city-1-loc-3 city-1-loc-58)
  (= (road-length city-1-loc-3 city-1-loc-58) 16)
  ; 879,478 -> 835,584
  (road city-1-loc-58 city-1-loc-12)
  (= (road-length city-1-loc-58 city-1-loc-12) 12)
  ; 835,584 -> 879,478
  (road city-1-loc-12 city-1-loc-58)
  (= (road-length city-1-loc-12 city-1-loc-58) 12)
  ; 879,478 -> 987,459
  (road city-1-loc-58 city-1-loc-25)
  (= (road-length city-1-loc-58 city-1-loc-25) 11)
  ; 987,459 -> 879,478
  (road city-1-loc-25 city-1-loc-58)
  (= (road-length city-1-loc-25 city-1-loc-58) 11)
  ; 879,478 -> 907,360
  (road city-1-loc-58 city-1-loc-49)
  (= (road-length city-1-loc-58 city-1-loc-49) 13)
  ; 907,360 -> 879,478
  (road city-1-loc-49 city-1-loc-58)
  (= (road-length city-1-loc-49 city-1-loc-58) 13)
  ; 879,478 -> 953,556
  (road city-1-loc-58 city-1-loc-57)
  (= (road-length city-1-loc-58 city-1-loc-57) 11)
  ; 953,556 -> 879,478
  (road city-1-loc-57 city-1-loc-58)
  (= (road-length city-1-loc-57 city-1-loc-58) 11)
  ; 702,726 -> 625,642
  (road city-1-loc-59 city-1-loc-15)
  (= (road-length city-1-loc-59 city-1-loc-15) 12)
  ; 625,642 -> 702,726
  (road city-1-loc-15 city-1-loc-59)
  (= (road-length city-1-loc-15 city-1-loc-59) 12)
  ; 702,726 -> 626,869
  (road city-1-loc-59 city-1-loc-19)
  (= (road-length city-1-loc-59 city-1-loc-19) 17)
  ; 626,869 -> 702,726
  (road city-1-loc-19 city-1-loc-59)
  (= (road-length city-1-loc-19 city-1-loc-59) 17)
  ; 702,726 -> 815,689
  (road city-1-loc-59 city-1-loc-23)
  (= (road-length city-1-loc-59 city-1-loc-23) 12)
  ; 815,689 -> 702,726
  (road city-1-loc-23 city-1-loc-59)
  (= (road-length city-1-loc-23 city-1-loc-59) 12)
  ; 19,718 -> 81,825
  (road city-1-loc-60 city-1-loc-8)
  (= (road-length city-1-loc-60 city-1-loc-8) 13)
  ; 81,825 -> 19,718
  (road city-1-loc-8 city-1-loc-60)
  (= (road-length city-1-loc-8 city-1-loc-60) 13)
  ; 19,718 -> 126,655
  (road city-1-loc-60 city-1-loc-29)
  (= (road-length city-1-loc-60 city-1-loc-29) 13)
  ; 126,655 -> 19,718
  (road city-1-loc-29 city-1-loc-60)
  (= (road-length city-1-loc-29 city-1-loc-60) 13)
  ; 19,718 -> 22,566
  (road city-1-loc-60 city-1-loc-51)
  (= (road-length city-1-loc-60 city-1-loc-51) 16)
  ; 22,566 -> 19,718
  (road city-1-loc-51 city-1-loc-60)
  (= (road-length city-1-loc-51 city-1-loc-60) 16)
  ; 618,393 -> 755,388
  (road city-1-loc-61 city-1-loc-3)
  (= (road-length city-1-loc-61 city-1-loc-3) 14)
  ; 755,388 -> 618,393
  (road city-1-loc-3 city-1-loc-61)
  (= (road-length city-1-loc-3 city-1-loc-61) 14)
  ; 618,393 -> 512,409
  (road city-1-loc-61 city-1-loc-4)
  (= (road-length city-1-loc-61 city-1-loc-4) 11)
  ; 512,409 -> 618,393
  (road city-1-loc-4 city-1-loc-61)
  (= (road-length city-1-loc-4 city-1-loc-61) 11)
  ; 618,393 -> 557,286
  (road city-1-loc-61 city-1-loc-48)
  (= (road-length city-1-loc-61 city-1-loc-48) 13)
  ; 557,286 -> 618,393
  (road city-1-loc-48 city-1-loc-61)
  (= (road-length city-1-loc-48 city-1-loc-61) 13)
  ; 531,732 -> 389,798
  (road city-1-loc-62 city-1-loc-14)
  (= (road-length city-1-loc-62 city-1-loc-14) 16)
  ; 389,798 -> 531,732
  (road city-1-loc-14 city-1-loc-62)
  (= (road-length city-1-loc-14 city-1-loc-62) 16)
  ; 531,732 -> 625,642
  (road city-1-loc-62 city-1-loc-15)
  (= (road-length city-1-loc-62 city-1-loc-15) 13)
  ; 625,642 -> 531,732
  (road city-1-loc-15 city-1-loc-62)
  (= (road-length city-1-loc-15 city-1-loc-62) 13)
  ; 531,732 -> 527,842
  (road city-1-loc-62 city-1-loc-45)
  (= (road-length city-1-loc-62 city-1-loc-45) 11)
  ; 527,842 -> 531,732
  (road city-1-loc-45 city-1-loc-62)
  (= (road-length city-1-loc-45 city-1-loc-62) 11)
  ; 183,740 -> 81,825
  (road city-1-loc-63 city-1-loc-8)
  (= (road-length city-1-loc-63 city-1-loc-8) 14)
  ; 81,825 -> 183,740
  (road city-1-loc-8 city-1-loc-63)
  (= (road-length city-1-loc-8 city-1-loc-63) 14)
  ; 183,740 -> 126,655
  (road city-1-loc-63 city-1-loc-29)
  (= (road-length city-1-loc-63 city-1-loc-29) 11)
  ; 126,655 -> 183,740
  (road city-1-loc-29 city-1-loc-63)
  (= (road-length city-1-loc-29 city-1-loc-63) 11)
  ; 183,740 -> 216,597
  (road city-1-loc-63 city-1-loc-31)
  (= (road-length city-1-loc-63 city-1-loc-31) 15)
  ; 216,597 -> 183,740
  (road city-1-loc-31 city-1-loc-63)
  (= (road-length city-1-loc-31 city-1-loc-63) 15)
  ; 183,740 -> 192,840
  (road city-1-loc-63 city-1-loc-34)
  (= (road-length city-1-loc-63 city-1-loc-34) 10)
  ; 192,840 -> 183,740
  (road city-1-loc-34 city-1-loc-63)
  (= (road-length city-1-loc-34 city-1-loc-63) 10)
  ; 183,740 -> 303,746
  (road city-1-loc-63 city-1-loc-42)
  (= (road-length city-1-loc-63 city-1-loc-42) 12)
  ; 303,746 -> 183,740
  (road city-1-loc-42 city-1-loc-63)
  (= (road-length city-1-loc-42 city-1-loc-63) 12)
  ; 183,740 -> 19,718
  (road city-1-loc-63 city-1-loc-60)
  (= (road-length city-1-loc-63 city-1-loc-60) 17)
  ; 19,718 -> 183,740
  (road city-1-loc-60 city-1-loc-63)
  (= (road-length city-1-loc-60 city-1-loc-63) 17)
  ; 473,633 -> 554,565
  (road city-1-loc-64 city-1-loc-5)
  (= (road-length city-1-loc-64 city-1-loc-5) 11)
  ; 554,565 -> 473,633
  (road city-1-loc-5 city-1-loc-64)
  (= (road-length city-1-loc-5 city-1-loc-64) 11)
  ; 473,633 -> 625,642
  (road city-1-loc-64 city-1-loc-15)
  (= (road-length city-1-loc-64 city-1-loc-15) 16)
  ; 625,642 -> 473,633
  (road city-1-loc-15 city-1-loc-64)
  (= (road-length city-1-loc-15 city-1-loc-64) 16)
  ; 473,633 -> 336,637
  (road city-1-loc-64 city-1-loc-40)
  (= (road-length city-1-loc-64 city-1-loc-40) 14)
  ; 336,637 -> 473,633
  (road city-1-loc-40 city-1-loc-64)
  (= (road-length city-1-loc-40 city-1-loc-64) 14)
  ; 473,633 -> 531,732
  (road city-1-loc-64 city-1-loc-62)
  (= (road-length city-1-loc-64 city-1-loc-62) 12)
  ; 531,732 -> 473,633
  (road city-1-loc-62 city-1-loc-64)
  (= (road-length city-1-loc-62 city-1-loc-64) 12)
  ; 12,918 -> 81,825
  (road city-1-loc-65 city-1-loc-8)
  (= (road-length city-1-loc-65 city-1-loc-8) 12)
  ; 81,825 -> 12,918
  (road city-1-loc-8 city-1-loc-65)
  (= (road-length city-1-loc-8 city-1-loc-65) 12)
  ; 12,918 -> 168,969
  (road city-1-loc-65 city-1-loc-43)
  (= (road-length city-1-loc-65 city-1-loc-43) 17)
  ; 168,969 -> 12,918
  (road city-1-loc-43 city-1-loc-65)
  (= (road-length city-1-loc-43 city-1-loc-65) 17)
  ; 293,883 -> 401,900
  (road city-1-loc-66 city-1-loc-2)
  (= (road-length city-1-loc-66 city-1-loc-2) 11)
  ; 401,900 -> 293,883
  (road city-1-loc-2 city-1-loc-66)
  (= (road-length city-1-loc-2 city-1-loc-66) 11)
  ; 293,883 -> 389,798
  (road city-1-loc-66 city-1-loc-14)
  (= (road-length city-1-loc-66 city-1-loc-14) 13)
  ; 389,798 -> 293,883
  (road city-1-loc-14 city-1-loc-66)
  (= (road-length city-1-loc-14 city-1-loc-66) 13)
  ; 293,883 -> 192,840
  (road city-1-loc-66 city-1-loc-34)
  (= (road-length city-1-loc-66 city-1-loc-34) 11)
  ; 192,840 -> 293,883
  (road city-1-loc-34 city-1-loc-66)
  (= (road-length city-1-loc-34 city-1-loc-66) 11)
  ; 293,883 -> 303,746
  (road city-1-loc-66 city-1-loc-42)
  (= (road-length city-1-loc-66 city-1-loc-42) 14)
  ; 303,746 -> 293,883
  (road city-1-loc-42 city-1-loc-66)
  (= (road-length city-1-loc-42 city-1-loc-66) 14)
  ; 293,883 -> 168,969
  (road city-1-loc-66 city-1-loc-43)
  (= (road-length city-1-loc-66 city-1-loc-43) 16)
  ; 168,969 -> 293,883
  (road city-1-loc-43 city-1-loc-66)
  (= (road-length city-1-loc-43 city-1-loc-66) 16)
  ; 293,883 -> 285,985
  (road city-1-loc-66 city-1-loc-50)
  (= (road-length city-1-loc-66 city-1-loc-50) 11)
  ; 285,985 -> 293,883
  (road city-1-loc-50 city-1-loc-66)
  (= (road-length city-1-loc-50 city-1-loc-66) 11)
  ; 2717,804 -> 2604,825
  (road city-2-loc-7 city-2-loc-2)
  (= (road-length city-2-loc-7 city-2-loc-2) 12)
  ; 2604,825 -> 2717,804
  (road city-2-loc-2 city-2-loc-7)
  (= (road-length city-2-loc-2 city-2-loc-7) 12)
  ; 2187,522 -> 2276,576
  (road city-2-loc-15 city-2-loc-14)
  (= (road-length city-2-loc-15 city-2-loc-14) 11)
  ; 2276,576 -> 2187,522
  (road city-2-loc-14 city-2-loc-15)
  (= (road-length city-2-loc-14 city-2-loc-15) 11)
  ; 2686,913 -> 2604,825
  (road city-2-loc-16 city-2-loc-2)
  (= (road-length city-2-loc-16 city-2-loc-2) 12)
  ; 2604,825 -> 2686,913
  (road city-2-loc-2 city-2-loc-16)
  (= (road-length city-2-loc-2 city-2-loc-16) 12)
  ; 2686,913 -> 2717,804
  (road city-2-loc-16 city-2-loc-7)
  (= (road-length city-2-loc-16 city-2-loc-7) 12)
  ; 2717,804 -> 2686,913
  (road city-2-loc-7 city-2-loc-16)
  (= (road-length city-2-loc-7 city-2-loc-16) 12)
  ; 2576,65 -> 2470,59
  (road city-2-loc-18 city-2-loc-3)
  (= (road-length city-2-loc-18 city-2-loc-3) 11)
  ; 2470,59 -> 2576,65
  (road city-2-loc-3 city-2-loc-18)
  (= (road-length city-2-loc-3 city-2-loc-18) 11)
  ; 2576,65 -> 2691,21
  (road city-2-loc-18 city-2-loc-17)
  (= (road-length city-2-loc-18 city-2-loc-17) 13)
  ; 2691,21 -> 2576,65
  (road city-2-loc-17 city-2-loc-18)
  (= (road-length city-2-loc-17 city-2-loc-18) 13)
  ; 2851,369 -> 2801,478
  (road city-2-loc-19 city-2-loc-13)
  (= (road-length city-2-loc-19 city-2-loc-13) 12)
  ; 2801,478 -> 2851,369
  (road city-2-loc-13 city-2-loc-19)
  (= (road-length city-2-loc-13 city-2-loc-19) 12)
  ; 2090,106 -> 2123,12
  (road city-2-loc-20 city-2-loc-9)
  (= (road-length city-2-loc-20 city-2-loc-9) 10)
  ; 2123,12 -> 2090,106
  (road city-2-loc-9 city-2-loc-20)
  (= (road-length city-2-loc-9 city-2-loc-20) 10)
  ; 2691,282 -> 2606,362
  (road city-2-loc-21 city-2-loc-6)
  (= (road-length city-2-loc-21 city-2-loc-6) 12)
  ; 2606,362 -> 2691,282
  (road city-2-loc-6 city-2-loc-21)
  (= (road-length city-2-loc-6 city-2-loc-21) 12)
  ; 2330,121 -> 2470,59
  (road city-2-loc-24 city-2-loc-3)
  (= (road-length city-2-loc-24 city-2-loc-3) 16)
  ; 2470,59 -> 2330,121
  (road city-2-loc-3 city-2-loc-24)
  (= (road-length city-2-loc-3 city-2-loc-24) 16)
  ; 2330,121 -> 2229,241
  (road city-2-loc-24 city-2-loc-11)
  (= (road-length city-2-loc-24 city-2-loc-11) 16)
  ; 2229,241 -> 2330,121
  (road city-2-loc-11 city-2-loc-24)
  (= (road-length city-2-loc-11 city-2-loc-24) 16)
  ; 2680,537 -> 2801,478
  (road city-2-loc-25 city-2-loc-13)
  (= (road-length city-2-loc-25 city-2-loc-13) 14)
  ; 2801,478 -> 2680,537
  (road city-2-loc-13 city-2-loc-25)
  (= (road-length city-2-loc-13 city-2-loc-25) 14)
  ; 2518,762 -> 2604,825
  (road city-2-loc-26 city-2-loc-2)
  (= (road-length city-2-loc-26 city-2-loc-2) 11)
  ; 2604,825 -> 2518,762
  (road city-2-loc-2 city-2-loc-26)
  (= (road-length city-2-loc-2 city-2-loc-26) 11)
  ; 2005,613 -> 2111,691
  (road city-2-loc-27 city-2-loc-23)
  (= (road-length city-2-loc-27 city-2-loc-23) 14)
  ; 2111,691 -> 2005,613
  (road city-2-loc-23 city-2-loc-27)
  (= (road-length city-2-loc-23 city-2-loc-27) 14)
  ; 2979,370 -> 2851,369
  (road city-2-loc-28 city-2-loc-19)
  (= (road-length city-2-loc-28 city-2-loc-19) 13)
  ; 2851,369 -> 2979,370
  (road city-2-loc-19 city-2-loc-28)
  (= (road-length city-2-loc-19 city-2-loc-28) 13)
  ; 2856,624 -> 2801,478
  (road city-2-loc-29 city-2-loc-13)
  (= (road-length city-2-loc-29 city-2-loc-13) 16)
  ; 2801,478 -> 2856,624
  (road city-2-loc-13 city-2-loc-29)
  (= (road-length city-2-loc-13 city-2-loc-29) 16)
  ; 2195,899 -> 2089,982
  (road city-2-loc-30 city-2-loc-8)
  (= (road-length city-2-loc-30 city-2-loc-8) 14)
  ; 2089,982 -> 2195,899
  (road city-2-loc-8 city-2-loc-30)
  (= (road-length city-2-loc-8 city-2-loc-30) 14)
  ; 2810,209 -> 2851,369
  (road city-2-loc-32 city-2-loc-19)
  (= (road-length city-2-loc-32 city-2-loc-19) 17)
  ; 2851,369 -> 2810,209
  (road city-2-loc-19 city-2-loc-32)
  (= (road-length city-2-loc-19 city-2-loc-32) 17)
  ; 2810,209 -> 2691,282
  (road city-2-loc-32 city-2-loc-21)
  (= (road-length city-2-loc-32 city-2-loc-21) 14)
  ; 2691,282 -> 2810,209
  (road city-2-loc-21 city-2-loc-32)
  (= (road-length city-2-loc-21 city-2-loc-32) 14)
  ; 2345,963 -> 2474,959
  (road city-2-loc-33 city-2-loc-10)
  (= (road-length city-2-loc-33 city-2-loc-10) 13)
  ; 2474,959 -> 2345,963
  (road city-2-loc-10 city-2-loc-33)
  (= (road-length city-2-loc-10 city-2-loc-33) 13)
  ; 2345,963 -> 2195,899
  (road city-2-loc-33 city-2-loc-30)
  (= (road-length city-2-loc-33 city-2-loc-30) 17)
  ; 2195,899 -> 2345,963
  (road city-2-loc-30 city-2-loc-33)
  (= (road-length city-2-loc-30 city-2-loc-33) 17)
  ; 2054,243 -> 2090,106
  (road city-2-loc-34 city-2-loc-20)
  (= (road-length city-2-loc-34 city-2-loc-20) 15)
  ; 2090,106 -> 2054,243
  (road city-2-loc-20 city-2-loc-34)
  (= (road-length city-2-loc-20 city-2-loc-34) 15)
  ; 2054,243 -> 2077,345
  (road city-2-loc-34 city-2-loc-22)
  (= (road-length city-2-loc-34 city-2-loc-22) 11)
  ; 2077,345 -> 2054,243
  (road city-2-loc-22 city-2-loc-34)
  (= (road-length city-2-loc-22 city-2-loc-34) 11)
  ; 2750,128 -> 2691,21
  (road city-2-loc-35 city-2-loc-17)
  (= (road-length city-2-loc-35 city-2-loc-17) 13)
  ; 2691,21 -> 2750,128
  (road city-2-loc-17 city-2-loc-35)
  (= (road-length city-2-loc-17 city-2-loc-35) 13)
  ; 2750,128 -> 2691,282
  (road city-2-loc-35 city-2-loc-21)
  (= (road-length city-2-loc-35 city-2-loc-21) 17)
  ; 2691,282 -> 2750,128
  (road city-2-loc-21 city-2-loc-35)
  (= (road-length city-2-loc-21 city-2-loc-35) 17)
  ; 2750,128 -> 2810,209
  (road city-2-loc-35 city-2-loc-32)
  (= (road-length city-2-loc-35 city-2-loc-32) 11)
  ; 2810,209 -> 2750,128
  (road city-2-loc-32 city-2-loc-35)
  (= (road-length city-2-loc-32 city-2-loc-35) 11)
  ; 2935,254 -> 2851,369
  (road city-2-loc-36 city-2-loc-19)
  (= (road-length city-2-loc-36 city-2-loc-19) 15)
  ; 2851,369 -> 2935,254
  (road city-2-loc-19 city-2-loc-36)
  (= (road-length city-2-loc-19 city-2-loc-36) 15)
  ; 2935,254 -> 2979,370
  (road city-2-loc-36 city-2-loc-28)
  (= (road-length city-2-loc-36 city-2-loc-28) 13)
  ; 2979,370 -> 2935,254
  (road city-2-loc-28 city-2-loc-36)
  (= (road-length city-2-loc-28 city-2-loc-36) 13)
  ; 2935,254 -> 2955,122
  (road city-2-loc-36 city-2-loc-31)
  (= (road-length city-2-loc-36 city-2-loc-31) 14)
  ; 2955,122 -> 2935,254
  (road city-2-loc-31 city-2-loc-36)
  (= (road-length city-2-loc-31 city-2-loc-36) 14)
  ; 2935,254 -> 2810,209
  (road city-2-loc-36 city-2-loc-32)
  (= (road-length city-2-loc-36 city-2-loc-32) 14)
  ; 2810,209 -> 2935,254
  (road city-2-loc-32 city-2-loc-36)
  (= (road-length city-2-loc-32 city-2-loc-36) 14)
  ; 2566,496 -> 2472,573
  (road city-2-loc-37 city-2-loc-5)
  (= (road-length city-2-loc-37 city-2-loc-5) 13)
  ; 2472,573 -> 2566,496
  (road city-2-loc-5 city-2-loc-37)
  (= (road-length city-2-loc-5 city-2-loc-37) 13)
  ; 2566,496 -> 2606,362
  (road city-2-loc-37 city-2-loc-6)
  (= (road-length city-2-loc-37 city-2-loc-6) 14)
  ; 2606,362 -> 2566,496
  (road city-2-loc-6 city-2-loc-37)
  (= (road-length city-2-loc-6 city-2-loc-37) 14)
  ; 2566,496 -> 2680,537
  (road city-2-loc-37 city-2-loc-25)
  (= (road-length city-2-loc-37 city-2-loc-25) 13)
  ; 2680,537 -> 2566,496
  (road city-2-loc-25 city-2-loc-37)
  (= (road-length city-2-loc-25 city-2-loc-37) 13)
  ; 2801,729 -> 2717,804
  (road city-2-loc-38 city-2-loc-7)
  (= (road-length city-2-loc-38 city-2-loc-7) 12)
  ; 2717,804 -> 2801,729
  (road city-2-loc-7 city-2-loc-38)
  (= (road-length city-2-loc-7 city-2-loc-38) 12)
  ; 2801,729 -> 2856,624
  (road city-2-loc-38 city-2-loc-29)
  (= (road-length city-2-loc-38 city-2-loc-29) 12)
  ; 2856,624 -> 2801,729
  (road city-2-loc-29 city-2-loc-38)
  (= (road-length city-2-loc-29 city-2-loc-38) 12)
  ; 2377,640 -> 2472,573
  (road city-2-loc-39 city-2-loc-5)
  (= (road-length city-2-loc-39 city-2-loc-5) 12)
  ; 2472,573 -> 2377,640
  (road city-2-loc-5 city-2-loc-39)
  (= (road-length city-2-loc-5 city-2-loc-39) 12)
  ; 2377,640 -> 2276,576
  (road city-2-loc-39 city-2-loc-14)
  (= (road-length city-2-loc-39 city-2-loc-14) 12)
  ; 2276,576 -> 2377,640
  (road city-2-loc-14 city-2-loc-39)
  (= (road-length city-2-loc-14 city-2-loc-39) 12)
  ; 2847,878 -> 2977,806
  (road city-2-loc-40 city-2-loc-4)
  (= (road-length city-2-loc-40 city-2-loc-4) 15)
  ; 2977,806 -> 2847,878
  (road city-2-loc-4 city-2-loc-40)
  (= (road-length city-2-loc-4 city-2-loc-40) 15)
  ; 2847,878 -> 2717,804
  (road city-2-loc-40 city-2-loc-7)
  (= (road-length city-2-loc-40 city-2-loc-7) 15)
  ; 2717,804 -> 2847,878
  (road city-2-loc-7 city-2-loc-40)
  (= (road-length city-2-loc-7 city-2-loc-40) 15)
  ; 2847,878 -> 2868,985
  (road city-2-loc-40 city-2-loc-12)
  (= (road-length city-2-loc-40 city-2-loc-12) 11)
  ; 2868,985 -> 2847,878
  (road city-2-loc-12 city-2-loc-40)
  (= (road-length city-2-loc-12 city-2-loc-40) 11)
  ; 2847,878 -> 2686,913
  (road city-2-loc-40 city-2-loc-16)
  (= (road-length city-2-loc-40 city-2-loc-16) 17)
  ; 2686,913 -> 2847,878
  (road city-2-loc-16 city-2-loc-40)
  (= (road-length city-2-loc-16 city-2-loc-40) 17)
  ; 2847,878 -> 2801,729
  (road city-2-loc-40 city-2-loc-38)
  (= (road-length city-2-loc-40 city-2-loc-38) 16)
  ; 2801,729 -> 2847,878
  (road city-2-loc-38 city-2-loc-40)
  (= (road-length city-2-loc-38 city-2-loc-40) 16)
  ; 2593,678 -> 2604,825
  (road city-2-loc-41 city-2-loc-2)
  (= (road-length city-2-loc-41 city-2-loc-2) 15)
  ; 2604,825 -> 2593,678
  (road city-2-loc-2 city-2-loc-41)
  (= (road-length city-2-loc-2 city-2-loc-41) 15)
  ; 2593,678 -> 2472,573
  (road city-2-loc-41 city-2-loc-5)
  (= (road-length city-2-loc-41 city-2-loc-5) 16)
  ; 2472,573 -> 2593,678
  (road city-2-loc-5 city-2-loc-41)
  (= (road-length city-2-loc-5 city-2-loc-41) 16)
  ; 2593,678 -> 2680,537
  (road city-2-loc-41 city-2-loc-25)
  (= (road-length city-2-loc-41 city-2-loc-25) 17)
  ; 2680,537 -> 2593,678
  (road city-2-loc-25 city-2-loc-41)
  (= (road-length city-2-loc-25 city-2-loc-41) 17)
  ; 2593,678 -> 2518,762
  (road city-2-loc-41 city-2-loc-26)
  (= (road-length city-2-loc-41 city-2-loc-26) 12)
  ; 2518,762 -> 2593,678
  (road city-2-loc-26 city-2-loc-41)
  (= (road-length city-2-loc-26 city-2-loc-41) 12)
  ; 2573,172 -> 2470,59
  (road city-2-loc-42 city-2-loc-3)
  (= (road-length city-2-loc-42 city-2-loc-3) 16)
  ; 2470,59 -> 2573,172
  (road city-2-loc-3 city-2-loc-42)
  (= (road-length city-2-loc-3 city-2-loc-42) 16)
  ; 2573,172 -> 2576,65
  (road city-2-loc-42 city-2-loc-18)
  (= (road-length city-2-loc-42 city-2-loc-18) 11)
  ; 2576,65 -> 2573,172
  (road city-2-loc-18 city-2-loc-42)
  (= (road-length city-2-loc-18 city-2-loc-42) 11)
  ; 2573,172 -> 2691,282
  (road city-2-loc-42 city-2-loc-21)
  (= (road-length city-2-loc-42 city-2-loc-21) 17)
  ; 2691,282 -> 2573,172
  (road city-2-loc-21 city-2-loc-42)
  (= (road-length city-2-loc-21 city-2-loc-42) 17)
  ; 2735,622 -> 2801,478
  (road city-2-loc-43 city-2-loc-13)
  (= (road-length city-2-loc-43 city-2-loc-13) 16)
  ; 2801,478 -> 2735,622
  (road city-2-loc-13 city-2-loc-43)
  (= (road-length city-2-loc-13 city-2-loc-43) 16)
  ; 2735,622 -> 2680,537
  (road city-2-loc-43 city-2-loc-25)
  (= (road-length city-2-loc-43 city-2-loc-25) 11)
  ; 2680,537 -> 2735,622
  (road city-2-loc-25 city-2-loc-43)
  (= (road-length city-2-loc-25 city-2-loc-43) 11)
  ; 2735,622 -> 2856,624
  (road city-2-loc-43 city-2-loc-29)
  (= (road-length city-2-loc-43 city-2-loc-29) 13)
  ; 2856,624 -> 2735,622
  (road city-2-loc-29 city-2-loc-43)
  (= (road-length city-2-loc-29 city-2-loc-43) 13)
  ; 2735,622 -> 2801,729
  (road city-2-loc-43 city-2-loc-38)
  (= (road-length city-2-loc-43 city-2-loc-38) 13)
  ; 2801,729 -> 2735,622
  (road city-2-loc-38 city-2-loc-43)
  (= (road-length city-2-loc-38 city-2-loc-43) 13)
  ; 2735,622 -> 2593,678
  (road city-2-loc-43 city-2-loc-41)
  (= (road-length city-2-loc-43 city-2-loc-41) 16)
  ; 2593,678 -> 2735,622
  (road city-2-loc-41 city-2-loc-43)
  (= (road-length city-2-loc-41 city-2-loc-43) 16)
  ; 2255,433 -> 2365,402
  (road city-2-loc-44 city-2-loc-1)
  (= (road-length city-2-loc-44 city-2-loc-1) 12)
  ; 2365,402 -> 2255,433
  (road city-2-loc-1 city-2-loc-44)
  (= (road-length city-2-loc-1 city-2-loc-44) 12)
  ; 2255,433 -> 2276,576
  (road city-2-loc-44 city-2-loc-14)
  (= (road-length city-2-loc-44 city-2-loc-14) 15)
  ; 2276,576 -> 2255,433
  (road city-2-loc-14 city-2-loc-44)
  (= (road-length city-2-loc-14 city-2-loc-44) 15)
  ; 2255,433 -> 2187,522
  (road city-2-loc-44 city-2-loc-15)
  (= (road-length city-2-loc-44 city-2-loc-15) 12)
  ; 2187,522 -> 2255,433
  (road city-2-loc-15 city-2-loc-44)
  (= (road-length city-2-loc-15 city-2-loc-44) 12)
  ; 2942,474 -> 2801,478
  (road city-2-loc-45 city-2-loc-13)
  (= (road-length city-2-loc-45 city-2-loc-13) 15)
  ; 2801,478 -> 2942,474
  (road city-2-loc-13 city-2-loc-45)
  (= (road-length city-2-loc-13 city-2-loc-45) 15)
  ; 2942,474 -> 2851,369
  (road city-2-loc-45 city-2-loc-19)
  (= (road-length city-2-loc-45 city-2-loc-19) 14)
  ; 2851,369 -> 2942,474
  (road city-2-loc-19 city-2-loc-45)
  (= (road-length city-2-loc-19 city-2-loc-45) 14)
  ; 2942,474 -> 2979,370
  (road city-2-loc-45 city-2-loc-28)
  (= (road-length city-2-loc-45 city-2-loc-28) 11)
  ; 2979,370 -> 2942,474
  (road city-2-loc-28 city-2-loc-45)
  (= (road-length city-2-loc-28 city-2-loc-45) 11)
  ; 2092,860 -> 2089,982
  (road city-2-loc-46 city-2-loc-8)
  (= (road-length city-2-loc-46 city-2-loc-8) 13)
  ; 2089,982 -> 2092,860
  (road city-2-loc-8 city-2-loc-46)
  (= (road-length city-2-loc-8 city-2-loc-46) 13)
  ; 2092,860 -> 2195,899
  (road city-2-loc-46 city-2-loc-30)
  (= (road-length city-2-loc-46 city-2-loc-30) 11)
  ; 2195,899 -> 2092,860
  (road city-2-loc-30 city-2-loc-46)
  (= (road-length city-2-loc-30 city-2-loc-46) 11)
  ; 2008,785 -> 2111,691
  (road city-2-loc-47 city-2-loc-23)
  (= (road-length city-2-loc-47 city-2-loc-23) 14)
  ; 2111,691 -> 2008,785
  (road city-2-loc-23 city-2-loc-47)
  (= (road-length city-2-loc-23 city-2-loc-47) 14)
  ; 2008,785 -> 2092,860
  (road city-2-loc-47 city-2-loc-46)
  (= (road-length city-2-loc-47 city-2-loc-46) 12)
  ; 2092,860 -> 2008,785
  (road city-2-loc-46 city-2-loc-47)
  (= (road-length city-2-loc-46 city-2-loc-47) 12)
  ; 2828,1 -> 2691,21
  (road city-2-loc-48 city-2-loc-17)
  (= (road-length city-2-loc-48 city-2-loc-17) 14)
  ; 2691,21 -> 2828,1
  (road city-2-loc-17 city-2-loc-48)
  (= (road-length city-2-loc-17 city-2-loc-48) 14)
  ; 2828,1 -> 2750,128
  (road city-2-loc-48 city-2-loc-35)
  (= (road-length city-2-loc-48 city-2-loc-35) 15)
  ; 2750,128 -> 2828,1
  (road city-2-loc-35 city-2-loc-48)
  (= (road-length city-2-loc-35 city-2-loc-48) 15)
  ; 2402,780 -> 2518,762
  (road city-2-loc-49 city-2-loc-26)
  (= (road-length city-2-loc-49 city-2-loc-26) 12)
  ; 2518,762 -> 2402,780
  (road city-2-loc-26 city-2-loc-49)
  (= (road-length city-2-loc-26 city-2-loc-49) 12)
  ; 2402,780 -> 2377,640
  (road city-2-loc-49 city-2-loc-39)
  (= (road-length city-2-loc-49 city-2-loc-39) 15)
  ; 2377,640 -> 2402,780
  (road city-2-loc-39 city-2-loc-49)
  (= (road-length city-2-loc-39 city-2-loc-49) 15)
  ; 2976,653 -> 2977,806
  (road city-2-loc-50 city-2-loc-4)
  (= (road-length city-2-loc-50 city-2-loc-4) 16)
  ; 2977,806 -> 2976,653
  (road city-2-loc-4 city-2-loc-50)
  (= (road-length city-2-loc-4 city-2-loc-50) 16)
  ; 2976,653 -> 2856,624
  (road city-2-loc-50 city-2-loc-29)
  (= (road-length city-2-loc-50 city-2-loc-29) 13)
  ; 2856,624 -> 2976,653
  (road city-2-loc-29 city-2-loc-50)
  (= (road-length city-2-loc-29 city-2-loc-50) 13)
  ; 2963,9 -> 2955,122
  (road city-2-loc-51 city-2-loc-31)
  (= (road-length city-2-loc-51 city-2-loc-31) 12)
  ; 2955,122 -> 2963,9
  (road city-2-loc-31 city-2-loc-51)
  (= (road-length city-2-loc-31 city-2-loc-51) 12)
  ; 2963,9 -> 2828,1
  (road city-2-loc-51 city-2-loc-48)
  (= (road-length city-2-loc-51 city-2-loc-48) 14)
  ; 2828,1 -> 2963,9
  (road city-2-loc-48 city-2-loc-51)
  (= (road-length city-2-loc-48 city-2-loc-51) 14)
  ; 2469,470 -> 2365,402
  (road city-2-loc-52 city-2-loc-1)
  (= (road-length city-2-loc-52 city-2-loc-1) 13)
  ; 2365,402 -> 2469,470
  (road city-2-loc-1 city-2-loc-52)
  (= (road-length city-2-loc-1 city-2-loc-52) 13)
  ; 2469,470 -> 2472,573
  (road city-2-loc-52 city-2-loc-5)
  (= (road-length city-2-loc-52 city-2-loc-5) 11)
  ; 2472,573 -> 2469,470
  (road city-2-loc-5 city-2-loc-52)
  (= (road-length city-2-loc-5 city-2-loc-52) 11)
  ; 2469,470 -> 2566,496
  (road city-2-loc-52 city-2-loc-37)
  (= (road-length city-2-loc-52 city-2-loc-37) 10)
  ; 2566,496 -> 2469,470
  (road city-2-loc-37 city-2-loc-52)
  (= (road-length city-2-loc-37 city-2-loc-52) 10)
  ; 2453,205 -> 2470,59
  (road city-2-loc-53 city-2-loc-3)
  (= (road-length city-2-loc-53 city-2-loc-3) 15)
  ; 2470,59 -> 2453,205
  (road city-2-loc-3 city-2-loc-53)
  (= (road-length city-2-loc-3 city-2-loc-53) 15)
  ; 2453,205 -> 2330,121
  (road city-2-loc-53 city-2-loc-24)
  (= (road-length city-2-loc-53 city-2-loc-24) 15)
  ; 2330,121 -> 2453,205
  (road city-2-loc-24 city-2-loc-53)
  (= (road-length city-2-loc-24 city-2-loc-53) 15)
  ; 2453,205 -> 2573,172
  (road city-2-loc-53 city-2-loc-42)
  (= (road-length city-2-loc-53 city-2-loc-42) 13)
  ; 2573,172 -> 2453,205
  (road city-2-loc-42 city-2-loc-53)
  (= (road-length city-2-loc-42 city-2-loc-53) 13)
  ; 2708,412 -> 2606,362
  (road city-2-loc-54 city-2-loc-6)
  (= (road-length city-2-loc-54 city-2-loc-6) 12)
  ; 2606,362 -> 2708,412
  (road city-2-loc-6 city-2-loc-54)
  (= (road-length city-2-loc-6 city-2-loc-54) 12)
  ; 2708,412 -> 2801,478
  (road city-2-loc-54 city-2-loc-13)
  (= (road-length city-2-loc-54 city-2-loc-13) 12)
  ; 2801,478 -> 2708,412
  (road city-2-loc-13 city-2-loc-54)
  (= (road-length city-2-loc-13 city-2-loc-54) 12)
  ; 2708,412 -> 2851,369
  (road city-2-loc-54 city-2-loc-19)
  (= (road-length city-2-loc-54 city-2-loc-19) 15)
  ; 2851,369 -> 2708,412
  (road city-2-loc-19 city-2-loc-54)
  (= (road-length city-2-loc-19 city-2-loc-54) 15)
  ; 2708,412 -> 2691,282
  (road city-2-loc-54 city-2-loc-21)
  (= (road-length city-2-loc-54 city-2-loc-21) 14)
  ; 2691,282 -> 2708,412
  (road city-2-loc-21 city-2-loc-54)
  (= (road-length city-2-loc-21 city-2-loc-54) 14)
  ; 2708,412 -> 2680,537
  (road city-2-loc-54 city-2-loc-25)
  (= (road-length city-2-loc-54 city-2-loc-25) 13)
  ; 2680,537 -> 2708,412
  (road city-2-loc-25 city-2-loc-54)
  (= (road-length city-2-loc-25 city-2-loc-54) 13)
  ; 2708,412 -> 2566,496
  (road city-2-loc-54 city-2-loc-37)
  (= (road-length city-2-loc-54 city-2-loc-37) 17)
  ; 2566,496 -> 2708,412
  (road city-2-loc-37 city-2-loc-54)
  (= (road-length city-2-loc-37 city-2-loc-54) 17)
  ; 2488,344 -> 2365,402
  (road city-2-loc-55 city-2-loc-1)
  (= (road-length city-2-loc-55 city-2-loc-1) 14)
  ; 2365,402 -> 2488,344
  (road city-2-loc-1 city-2-loc-55)
  (= (road-length city-2-loc-1 city-2-loc-55) 14)
  ; 2488,344 -> 2606,362
  (road city-2-loc-55 city-2-loc-6)
  (= (road-length city-2-loc-55 city-2-loc-6) 12)
  ; 2606,362 -> 2488,344
  (road city-2-loc-6 city-2-loc-55)
  (= (road-length city-2-loc-6 city-2-loc-55) 12)
  ; 2488,344 -> 2469,470
  (road city-2-loc-55 city-2-loc-52)
  (= (road-length city-2-loc-55 city-2-loc-52) 13)
  ; 2469,470 -> 2488,344
  (road city-2-loc-52 city-2-loc-55)
  (= (road-length city-2-loc-52 city-2-loc-55) 13)
  ; 2488,344 -> 2453,205
  (road city-2-loc-55 city-2-loc-53)
  (= (road-length city-2-loc-55 city-2-loc-53) 15)
  ; 2453,205 -> 2488,344
  (road city-2-loc-53 city-2-loc-55)
  (= (road-length city-2-loc-53 city-2-loc-55) 15)
  ; 2010,8 -> 2123,12
  (road city-2-loc-56 city-2-loc-9)
  (= (road-length city-2-loc-56 city-2-loc-9) 12)
  ; 2123,12 -> 2010,8
  (road city-2-loc-9 city-2-loc-56)
  (= (road-length city-2-loc-9 city-2-loc-56) 12)
  ; 2010,8 -> 2090,106
  (road city-2-loc-56 city-2-loc-20)
  (= (road-length city-2-loc-56 city-2-loc-20) 13)
  ; 2090,106 -> 2010,8
  (road city-2-loc-20 city-2-loc-56)
  (= (road-length city-2-loc-20 city-2-loc-56) 13)
  ; 2314,829 -> 2195,899
  (road city-2-loc-57 city-2-loc-30)
  (= (road-length city-2-loc-57 city-2-loc-30) 14)
  ; 2195,899 -> 2314,829
  (road city-2-loc-30 city-2-loc-57)
  (= (road-length city-2-loc-30 city-2-loc-57) 14)
  ; 2314,829 -> 2345,963
  (road city-2-loc-57 city-2-loc-33)
  (= (road-length city-2-loc-57 city-2-loc-33) 14)
  ; 2345,963 -> 2314,829
  (road city-2-loc-33 city-2-loc-57)
  (= (road-length city-2-loc-33 city-2-loc-57) 14)
  ; 2314,829 -> 2402,780
  (road city-2-loc-57 city-2-loc-49)
  (= (road-length city-2-loc-57 city-2-loc-49) 11)
  ; 2402,780 -> 2314,829
  (road city-2-loc-49 city-2-loc-57)
  (= (road-length city-2-loc-49 city-2-loc-57) 11)
  ; 2384,301 -> 2365,402
  (road city-2-loc-58 city-2-loc-1)
  (= (road-length city-2-loc-58 city-2-loc-1) 11)
  ; 2365,402 -> 2384,301
  (road city-2-loc-1 city-2-loc-58)
  (= (road-length city-2-loc-1 city-2-loc-58) 11)
  ; 2384,301 -> 2229,241
  (road city-2-loc-58 city-2-loc-11)
  (= (road-length city-2-loc-58 city-2-loc-11) 17)
  ; 2229,241 -> 2384,301
  (road city-2-loc-11 city-2-loc-58)
  (= (road-length city-2-loc-11 city-2-loc-58) 17)
  ; 2384,301 -> 2453,205
  (road city-2-loc-58 city-2-loc-53)
  (= (road-length city-2-loc-58 city-2-loc-53) 12)
  ; 2453,205 -> 2384,301
  (road city-2-loc-53 city-2-loc-58)
  (= (road-length city-2-loc-53 city-2-loc-58) 12)
  ; 2384,301 -> 2488,344
  (road city-2-loc-58 city-2-loc-55)
  (= (road-length city-2-loc-58 city-2-loc-55) 12)
  ; 2488,344 -> 2384,301
  (road city-2-loc-55 city-2-loc-58)
  (= (road-length city-2-loc-55 city-2-loc-58) 12)
  ; 2195,775 -> 2111,691
  (road city-2-loc-59 city-2-loc-23)
  (= (road-length city-2-loc-59 city-2-loc-23) 12)
  ; 2111,691 -> 2195,775
  (road city-2-loc-23 city-2-loc-59)
  (= (road-length city-2-loc-23 city-2-loc-59) 12)
  ; 2195,775 -> 2195,899
  (road city-2-loc-59 city-2-loc-30)
  (= (road-length city-2-loc-59 city-2-loc-30) 13)
  ; 2195,899 -> 2195,775
  (road city-2-loc-30 city-2-loc-59)
  (= (road-length city-2-loc-30 city-2-loc-59) 13)
  ; 2195,775 -> 2092,860
  (road city-2-loc-59 city-2-loc-46)
  (= (road-length city-2-loc-59 city-2-loc-46) 14)
  ; 2092,860 -> 2195,775
  (road city-2-loc-46 city-2-loc-59)
  (= (road-length city-2-loc-46 city-2-loc-59) 14)
  ; 2195,775 -> 2314,829
  (road city-2-loc-59 city-2-loc-57)
  (= (road-length city-2-loc-59 city-2-loc-57) 14)
  ; 2314,829 -> 2195,775
  (road city-2-loc-57 city-2-loc-59)
  (= (road-length city-2-loc-57 city-2-loc-59) 14)
  ; 2584,926 -> 2604,825
  (road city-2-loc-60 city-2-loc-2)
  (= (road-length city-2-loc-60 city-2-loc-2) 11)
  ; 2604,825 -> 2584,926
  (road city-2-loc-2 city-2-loc-60)
  (= (road-length city-2-loc-2 city-2-loc-60) 11)
  ; 2584,926 -> 2474,959
  (road city-2-loc-60 city-2-loc-10)
  (= (road-length city-2-loc-60 city-2-loc-10) 12)
  ; 2474,959 -> 2584,926
  (road city-2-loc-10 city-2-loc-60)
  (= (road-length city-2-loc-10 city-2-loc-60) 12)
  ; 2584,926 -> 2686,913
  (road city-2-loc-60 city-2-loc-16)
  (= (road-length city-2-loc-60 city-2-loc-16) 11)
  ; 2686,913 -> 2584,926
  (road city-2-loc-16 city-2-loc-60)
  (= (road-length city-2-loc-16 city-2-loc-60) 11)
  ; 2042,470 -> 2187,522
  (road city-2-loc-61 city-2-loc-15)
  (= (road-length city-2-loc-61 city-2-loc-15) 16)
  ; 2187,522 -> 2042,470
  (road city-2-loc-15 city-2-loc-61)
  (= (road-length city-2-loc-15 city-2-loc-61) 16)
  ; 2042,470 -> 2077,345
  (road city-2-loc-61 city-2-loc-22)
  (= (road-length city-2-loc-61 city-2-loc-22) 13)
  ; 2077,345 -> 2042,470
  (road city-2-loc-22 city-2-loc-61)
  (= (road-length city-2-loc-22 city-2-loc-61) 13)
  ; 2042,470 -> 2005,613
  (road city-2-loc-61 city-2-loc-27)
  (= (road-length city-2-loc-61 city-2-loc-27) 15)
  ; 2005,613 -> 2042,470
  (road city-2-loc-27 city-2-loc-61)
  (= (road-length city-2-loc-27 city-2-loc-61) 15)
  ; 2973,987 -> 2868,985
  (road city-2-loc-62 city-2-loc-12)
  (= (road-length city-2-loc-62 city-2-loc-12) 11)
  ; 2868,985 -> 2973,987
  (road city-2-loc-12 city-2-loc-62)
  (= (road-length city-2-loc-12 city-2-loc-62) 11)
  ; 2264,5 -> 2123,12
  (road city-2-loc-63 city-2-loc-9)
  (= (road-length city-2-loc-63 city-2-loc-9) 15)
  ; 2123,12 -> 2264,5
  (road city-2-loc-9 city-2-loc-63)
  (= (road-length city-2-loc-9 city-2-loc-63) 15)
  ; 2264,5 -> 2330,121
  (road city-2-loc-63 city-2-loc-24)
  (= (road-length city-2-loc-63 city-2-loc-24) 14)
  ; 2330,121 -> 2264,5
  (road city-2-loc-24 city-2-loc-63)
  (= (road-length city-2-loc-24 city-2-loc-63) 14)
  ; 2225,109 -> 2123,12
  (road city-2-loc-64 city-2-loc-9)
  (= (road-length city-2-loc-64 city-2-loc-9) 15)
  ; 2123,12 -> 2225,109
  (road city-2-loc-9 city-2-loc-64)
  (= (road-length city-2-loc-9 city-2-loc-64) 15)
  ; 2225,109 -> 2229,241
  (road city-2-loc-64 city-2-loc-11)
  (= (road-length city-2-loc-64 city-2-loc-11) 14)
  ; 2229,241 -> 2225,109
  (road city-2-loc-11 city-2-loc-64)
  (= (road-length city-2-loc-11 city-2-loc-64) 14)
  ; 2225,109 -> 2090,106
  (road city-2-loc-64 city-2-loc-20)
  (= (road-length city-2-loc-64 city-2-loc-20) 14)
  ; 2090,106 -> 2225,109
  (road city-2-loc-20 city-2-loc-64)
  (= (road-length city-2-loc-20 city-2-loc-64) 14)
  ; 2225,109 -> 2330,121
  (road city-2-loc-64 city-2-loc-24)
  (= (road-length city-2-loc-64 city-2-loc-24) 11)
  ; 2330,121 -> 2225,109
  (road city-2-loc-24 city-2-loc-64)
  (= (road-length city-2-loc-24 city-2-loc-64) 11)
  ; 2225,109 -> 2264,5
  (road city-2-loc-64 city-2-loc-63)
  (= (road-length city-2-loc-64 city-2-loc-63) 12)
  ; 2264,5 -> 2225,109
  (road city-2-loc-63 city-2-loc-64)
  (= (road-length city-2-loc-63 city-2-loc-64) 12)
  ; 2282,685 -> 2276,576
  (road city-2-loc-65 city-2-loc-14)
  (= (road-length city-2-loc-65 city-2-loc-14) 11)
  ; 2276,576 -> 2282,685
  (road city-2-loc-14 city-2-loc-65)
  (= (road-length city-2-loc-14 city-2-loc-65) 11)
  ; 2282,685 -> 2377,640
  (road city-2-loc-65 city-2-loc-39)
  (= (road-length city-2-loc-65 city-2-loc-39) 11)
  ; 2377,640 -> 2282,685
  (road city-2-loc-39 city-2-loc-65)
  (= (road-length city-2-loc-39 city-2-loc-65) 11)
  ; 2282,685 -> 2402,780
  (road city-2-loc-65 city-2-loc-49)
  (= (road-length city-2-loc-65 city-2-loc-49) 16)
  ; 2402,780 -> 2282,685
  (road city-2-loc-49 city-2-loc-65)
  (= (road-length city-2-loc-49 city-2-loc-65) 16)
  ; 2282,685 -> 2314,829
  (road city-2-loc-65 city-2-loc-57)
  (= (road-length city-2-loc-65 city-2-loc-57) 15)
  ; 2314,829 -> 2282,685
  (road city-2-loc-57 city-2-loc-65)
  (= (road-length city-2-loc-57 city-2-loc-65) 15)
  ; 2282,685 -> 2195,775
  (road city-2-loc-65 city-2-loc-59)
  (= (road-length city-2-loc-65 city-2-loc-59) 13)
  ; 2195,775 -> 2282,685
  (road city-2-loc-59 city-2-loc-65)
  (= (road-length city-2-loc-59 city-2-loc-65) 13)
  ; 2241,990 -> 2089,982
  (road city-2-loc-66 city-2-loc-8)
  (= (road-length city-2-loc-66 city-2-loc-8) 16)
  ; 2089,982 -> 2241,990
  (road city-2-loc-8 city-2-loc-66)
  (= (road-length city-2-loc-8 city-2-loc-66) 16)
  ; 2241,990 -> 2195,899
  (road city-2-loc-66 city-2-loc-30)
  (= (road-length city-2-loc-66 city-2-loc-30) 11)
  ; 2195,899 -> 2241,990
  (road city-2-loc-30 city-2-loc-66)
  (= (road-length city-2-loc-30 city-2-loc-66) 11)
  ; 2241,990 -> 2345,963
  (road city-2-loc-66 city-2-loc-33)
  (= (road-length city-2-loc-66 city-2-loc-33) 11)
  ; 2345,963 -> 2241,990
  (road city-2-loc-33 city-2-loc-66)
  (= (road-length city-2-loc-33 city-2-loc-66) 11)
  ; 997,974 <-> 2008,785
  (road city-1-loc-36 city-2-loc-47)
  (= (road-length city-1-loc-36 city-2-loc-47) 103)
  (road city-2-loc-47 city-1-loc-36)
  (= (road-length city-2-loc-47 city-1-loc-36) 103)
  (at package-1 city-1-loc-51)
  (at package-2 city-1-loc-56)
  (at package-3 city-1-loc-11)
  (at package-4 city-1-loc-22)
  (at package-5 city-1-loc-33)
  (at package-6 city-1-loc-9)
  (at package-7 city-1-loc-9)
  (at package-8 city-1-loc-8)
  (at package-9 city-1-loc-44)
  (at package-10 city-1-loc-30)
  (at package-11 city-1-loc-49)
  (at package-12 city-1-loc-9)
  (at package-13 city-1-loc-15)
  (at package-14 city-1-loc-10)
  (at package-15 city-1-loc-22)
  (at package-16 city-1-loc-38)
  (at package-17 city-1-loc-66)
  (at package-18 city-1-loc-8)
  (at package-19 city-1-loc-45)
  (at package-20 city-1-loc-55)
  (at package-21 city-1-loc-35)
  (at package-22 city-1-loc-19)
  (at package-23 city-1-loc-2)
  (at package-24 city-1-loc-58)
  (at package-25 city-1-loc-22)
  (at package-26 city-1-loc-56)
  (at package-27 city-1-loc-2)
  (at package-28 city-1-loc-7)
  (at package-29 city-1-loc-37)
  (at package-30 city-1-loc-47)
  (at package-31 city-1-loc-32)
  (at package-32 city-1-loc-39)
  (at package-33 city-1-loc-35)
  (at package-34 city-1-loc-29)
  (at package-35 city-1-loc-20)
  (at package-36 city-1-loc-20)
  (at package-37 city-1-loc-12)
  (at package-38 city-1-loc-47)
  (at package-39 city-1-loc-34)
  (at package-40 city-1-loc-51)
  (at package-41 city-1-loc-43)
  (at package-42 city-1-loc-54)
  (at truck-1 city-2-loc-43)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-60)
  (capacity truck-2 capacity-2)
  (at truck-3 city-2-loc-46)
  (capacity truck-3 capacity-2)
  (at truck-4 city-2-loc-15)
  (capacity truck-4 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-33)
  (at package-2 city-2-loc-18)
  (at package-3 city-2-loc-40)
  (at package-4 city-2-loc-51)
  (at package-5 city-2-loc-8)
  (at package-6 city-2-loc-49)
  (at package-7 city-2-loc-20)
  (at package-8 city-2-loc-48)
  (at package-9 city-2-loc-2)
  (at package-10 city-2-loc-18)
  (at package-11 city-2-loc-50)
  (at package-12 city-2-loc-3)
  (at package-13 city-2-loc-51)
  (at package-14 city-2-loc-27)
  (at package-15 city-2-loc-9)
  (at package-16 city-2-loc-8)
  (at package-17 city-2-loc-29)
  (at package-18 city-2-loc-49)
  (at package-19 city-2-loc-47)
  (at package-20 city-2-loc-8)
  (at package-21 city-2-loc-18)
  (at package-22 city-2-loc-26)
  (at package-23 city-2-loc-38)
  (at package-24 city-2-loc-44)
  (at package-25 city-2-loc-16)
  (at package-26 city-2-loc-20)
  (at package-27 city-2-loc-56)
  (at package-28 city-2-loc-41)
  (at package-29 city-2-loc-10)
  (at package-30 city-2-loc-4)
  (at package-31 city-2-loc-62)
  (at package-32 city-2-loc-40)
  (at package-33 city-2-loc-62)
  (at package-34 city-2-loc-20)
  (at package-35 city-2-loc-25)
  (at package-36 city-2-loc-6)
  (at package-37 city-2-loc-13)
  (at package-38 city-2-loc-62)
  (at package-39 city-2-loc-24)
  (at package-40 city-2-loc-44)
  (at package-41 city-2-loc-2)
  (at package-42 city-2-loc-64)
 ))
 (:metric minimize (total-cost))
)
