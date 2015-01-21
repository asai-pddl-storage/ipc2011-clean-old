; Transport city-sequential-66nodes-1000size-4degree-100mindistance-4trucks-50packages-2013seed

(define (problem transport-city-sequential-66nodes-1000size-4degree-100mindistance-4trucks-50packages-2013seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  city-loc-16 - location
  city-loc-17 - location
  city-loc-18 - location
  city-loc-19 - location
  city-loc-20 - location
  city-loc-21 - location
  city-loc-22 - location
  city-loc-23 - location
  city-loc-24 - location
  city-loc-25 - location
  city-loc-26 - location
  city-loc-27 - location
  city-loc-28 - location
  city-loc-29 - location
  city-loc-30 - location
  city-loc-31 - location
  city-loc-32 - location
  city-loc-33 - location
  city-loc-34 - location
  city-loc-35 - location
  city-loc-36 - location
  city-loc-37 - location
  city-loc-38 - location
  city-loc-39 - location
  city-loc-40 - location
  city-loc-41 - location
  city-loc-42 - location
  city-loc-43 - location
  city-loc-44 - location
  city-loc-45 - location
  city-loc-46 - location
  city-loc-47 - location
  city-loc-48 - location
  city-loc-49 - location
  city-loc-50 - location
  city-loc-51 - location
  city-loc-52 - location
  city-loc-53 - location
  city-loc-54 - location
  city-loc-55 - location
  city-loc-56 - location
  city-loc-57 - location
  city-loc-58 - location
  city-loc-59 - location
  city-loc-60 - location
  city-loc-61 - location
  city-loc-62 - location
  city-loc-63 - location
  city-loc-64 - location
  city-loc-65 - location
  city-loc-66 - location
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
  package-43 - package
  package-44 - package
  package-45 - package
  package-46 - package
  package-47 - package
  package-48 - package
  package-49 - package
  package-50 - package
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
  (road city-loc-5 city-loc-4)
  (= (road-length city-loc-5 city-loc-4) 17)
  ; 512,409 -> 554,565
  (road city-loc-4 city-loc-5)
  (= (road-length city-loc-4 city-loc-5) 17)
  ; 700,557 -> 554,565
  (road city-loc-9 city-loc-5)
  (= (road-length city-loc-9 city-loc-5) 15)
  ; 554,565 -> 700,557
  (road city-loc-5 city-loc-9)
  (= (road-length city-loc-5 city-loc-9) 15)
  ; 835,584 -> 700,557
  (road city-loc-12 city-loc-9)
  (= (road-length city-loc-12 city-loc-9) 14)
  ; 700,557 -> 835,584
  (road city-loc-9 city-loc-12)
  (= (road-length city-loc-9 city-loc-12) 14)
  ; 835,584 -> 944,697
  (road city-loc-12 city-loc-10)
  (= (road-length city-loc-12 city-loc-10) 16)
  ; 944,697 -> 835,584
  (road city-loc-10 city-loc-12)
  (= (road-length city-loc-10 city-loc-12) 16)
  ; 389,798 -> 401,900
  (road city-loc-14 city-loc-2)
  (= (road-length city-loc-14 city-loc-2) 11)
  ; 401,900 -> 389,798
  (road city-loc-2 city-loc-14)
  (= (road-length city-loc-2 city-loc-14) 11)
  ; 625,642 -> 554,565
  (road city-loc-15 city-loc-5)
  (= (road-length city-loc-15 city-loc-5) 11)
  ; 554,565 -> 625,642
  (road city-loc-5 city-loc-15)
  (= (road-length city-loc-5 city-loc-15) 11)
  ; 625,642 -> 700,557
  (road city-loc-15 city-loc-9)
  (= (road-length city-loc-15 city-loc-9) 12)
  ; 700,557 -> 625,642
  (road city-loc-9 city-loc-15)
  (= (road-length city-loc-9 city-loc-15) 12)
  ; 922,875 -> 765,898
  (road city-loc-16 city-loc-6)
  (= (road-length city-loc-16 city-loc-6) 16)
  ; 765,898 -> 922,875
  (road city-loc-6 city-loc-16)
  (= (road-length city-loc-6 city-loc-16) 16)
  ; 13,248 -> 55,393
  (road city-loc-17 city-loc-7)
  (= (road-length city-loc-17 city-loc-7) 16)
  ; 55,393 -> 13,248
  (road city-loc-7 city-loc-17)
  (= (road-length city-loc-7 city-loc-17) 16)
  ; 520,164 -> 425,51
  (road city-loc-18 city-loc-1)
  (= (road-length city-loc-18 city-loc-1) 15)
  ; 425,51 -> 520,164
  (road city-loc-1 city-loc-18)
  (= (road-length city-loc-1 city-loc-18) 15)
  ; 626,869 -> 765,898
  (road city-loc-19 city-loc-6)
  (= (road-length city-loc-19 city-loc-6) 15)
  ; 765,898 -> 626,869
  (road city-loc-6 city-loc-19)
  (= (road-length city-loc-6 city-loc-19) 15)
  ; 148,205 -> 276,182
  (road city-loc-20 city-loc-11)
  (= (road-length city-loc-20 city-loc-11) 13)
  ; 276,182 -> 148,205
  (road city-loc-11 city-loc-20)
  (= (road-length city-loc-11 city-loc-20) 13)
  ; 148,205 -> 13,248
  (road city-loc-20 city-loc-17)
  (= (road-length city-loc-20 city-loc-17) 15)
  ; 13,248 -> 148,205
  (road city-loc-17 city-loc-20)
  (= (road-length city-loc-17 city-loc-20) 15)
  ; 782,127 -> 727,217
  (road city-loc-22 city-loc-13)
  (= (road-length city-loc-22 city-loc-13) 11)
  ; 727,217 -> 782,127
  (road city-loc-13 city-loc-22)
  (= (road-length city-loc-13 city-loc-22) 11)
  ; 815,689 -> 944,697
  (road city-loc-23 city-loc-10)
  (= (road-length city-loc-23 city-loc-10) 13)
  ; 944,697 -> 815,689
  (road city-loc-10 city-loc-23)
  (= (road-length city-loc-10 city-loc-23) 13)
  ; 815,689 -> 835,584
  (road city-loc-23 city-loc-12)
  (= (road-length city-loc-23 city-loc-12) 11)
  ; 835,584 -> 815,689
  (road city-loc-12 city-loc-23)
  (= (road-length city-loc-12 city-loc-23) 11)
  ; 267,298 -> 276,182
  (road city-loc-24 city-loc-11)
  (= (road-length city-loc-24 city-loc-11) 12)
  ; 276,182 -> 267,298
  (road city-loc-11 city-loc-24)
  (= (road-length city-loc-11 city-loc-24) 12)
  ; 267,298 -> 148,205
  (road city-loc-24 city-loc-20)
  (= (road-length city-loc-24 city-loc-20) 16)
  ; 148,205 -> 267,298
  (road city-loc-20 city-loc-24)
  (= (road-length city-loc-20 city-loc-24) 16)
  ; 371,493 -> 512,409
  (road city-loc-26 city-loc-4)
  (= (road-length city-loc-26 city-loc-4) 17)
  ; 512,409 -> 371,493
  (road city-loc-4 city-loc-26)
  (= (road-length city-loc-4 city-loc-26) 17)
  ; 849,242 -> 727,217
  (road city-loc-27 city-loc-13)
  (= (road-length city-loc-27 city-loc-13) 13)
  ; 727,217 -> 849,242
  (road city-loc-13 city-loc-27)
  (= (road-length city-loc-13 city-loc-27) 13)
  ; 849,242 -> 782,127
  (road city-loc-27 city-loc-22)
  (= (road-length city-loc-27 city-loc-22) 14)
  ; 782,127 -> 849,242
  (road city-loc-22 city-loc-27)
  (= (road-length city-loc-22 city-loc-27) 14)
  ; 554,978 -> 626,869
  (road city-loc-28 city-loc-19)
  (= (road-length city-loc-28 city-loc-19) 14)
  ; 626,869 -> 554,978
  (road city-loc-19 city-loc-28)
  (= (road-length city-loc-19 city-loc-28) 14)
  ; 216,597 -> 126,655
  (road city-loc-31 city-loc-29)
  (= (road-length city-loc-31 city-loc-29) 11)
  ; 126,655 -> 216,597
  (road city-loc-29 city-loc-31)
  (= (road-length city-loc-29 city-loc-31) 11)
  ; 262,415 -> 267,298
  (road city-loc-32 city-loc-24)
  (= (road-length city-loc-32 city-loc-24) 12)
  ; 267,298 -> 262,415
  (road city-loc-24 city-loc-32)
  (= (road-length city-loc-24 city-loc-32) 12)
  ; 262,415 -> 371,493
  (road city-loc-32 city-loc-26)
  (= (road-length city-loc-32 city-loc-26) 14)
  ; 371,493 -> 262,415
  (road city-loc-26 city-loc-32)
  (= (road-length city-loc-26 city-loc-32) 14)
  ; 206,48 -> 276,182
  (road city-loc-33 city-loc-11)
  (= (road-length city-loc-33 city-loc-11) 16)
  ; 276,182 -> 206,48
  (road city-loc-11 city-loc-33)
  (= (road-length city-loc-11 city-loc-33) 16)
  ; 206,48 -> 87,35
  (road city-loc-33 city-loc-21)
  (= (road-length city-loc-33 city-loc-21) 12)
  ; 87,35 -> 206,48
  (road city-loc-21 city-loc-33)
  (= (road-length city-loc-21 city-loc-33) 12)
  ; 192,840 -> 81,825
  (road city-loc-34 city-loc-8)
  (= (road-length city-loc-34 city-loc-8) 12)
  ; 81,825 -> 192,840
  (road city-loc-8 city-loc-34)
  (= (road-length city-loc-8 city-loc-34) 12)
  ; 956,245 -> 849,242
  (road city-loc-35 city-loc-27)
  (= (road-length city-loc-35 city-loc-27) 11)
  ; 849,242 -> 956,245
  (road city-loc-27 city-loc-35)
  (= (road-length city-loc-27 city-loc-35) 11)
  ; 997,974 -> 922,875
  (road city-loc-36 city-loc-16)
  (= (road-length city-loc-36 city-loc-16) 13)
  ; 922,875 -> 997,974
  (road city-loc-16 city-loc-36)
  (= (road-length city-loc-16 city-loc-36) 13)
  ; 419,360 -> 512,409
  (road city-loc-37 city-loc-4)
  (= (road-length city-loc-37 city-loc-4) 11)
  ; 512,409 -> 419,360
  (road city-loc-4 city-loc-37)
  (= (road-length city-loc-4 city-loc-37) 11)
  ; 419,360 -> 267,298
  (road city-loc-37 city-loc-24)
  (= (road-length city-loc-37 city-loc-24) 17)
  ; 267,298 -> 419,360
  (road city-loc-24 city-loc-37)
  (= (road-length city-loc-24 city-loc-37) 17)
  ; 419,360 -> 371,493
  (road city-loc-37 city-loc-26)
  (= (road-length city-loc-37 city-loc-26) 15)
  ; 371,493 -> 419,360
  (road city-loc-26 city-loc-37)
  (= (road-length city-loc-26 city-loc-37) 15)
  ; 419,360 -> 262,415
  (road city-loc-37 city-loc-32)
  (= (road-length city-loc-37 city-loc-32) 17)
  ; 262,415 -> 419,360
  (road city-loc-32 city-loc-37)
  (= (road-length city-loc-32 city-loc-37) 17)
  ; 553,70 -> 425,51
  (road city-loc-38 city-loc-1)
  (= (road-length city-loc-38 city-loc-1) 13)
  ; 425,51 -> 553,70
  (road city-loc-1 city-loc-38)
  (= (road-length city-loc-1 city-loc-38) 13)
  ; 553,70 -> 520,164
  (road city-loc-38 city-loc-18)
  (= (road-length city-loc-38 city-loc-18) 10)
  ; 520,164 -> 553,70
  (road city-loc-18 city-loc-38)
  (= (road-length city-loc-18 city-loc-38) 10)
  ; 968,139 -> 849,242
  (road city-loc-39 city-loc-27)
  (= (road-length city-loc-39 city-loc-27) 16)
  ; 849,242 -> 968,139
  (road city-loc-27 city-loc-39)
  (= (road-length city-loc-27 city-loc-39) 16)
  ; 968,139 -> 969,3
  (road city-loc-39 city-loc-30)
  (= (road-length city-loc-39 city-loc-30) 14)
  ; 969,3 -> 968,139
  (road city-loc-30 city-loc-39)
  (= (road-length city-loc-30 city-loc-39) 14)
  ; 968,139 -> 956,245
  (road city-loc-39 city-loc-35)
  (= (road-length city-loc-39 city-loc-35) 11)
  ; 956,245 -> 968,139
  (road city-loc-35 city-loc-39)
  (= (road-length city-loc-35 city-loc-39) 11)
  ; 336,637 -> 371,493
  (road city-loc-40 city-loc-26)
  (= (road-length city-loc-40 city-loc-26) 15)
  ; 371,493 -> 336,637
  (road city-loc-26 city-loc-40)
  (= (road-length city-loc-26 city-loc-40) 15)
  ; 336,637 -> 216,597
  (road city-loc-40 city-loc-31)
  (= (road-length city-loc-40 city-loc-31) 13)
  ; 216,597 -> 336,637
  (road city-loc-31 city-loc-40)
  (= (road-length city-loc-31 city-loc-40) 13)
  ; 867,49 -> 782,127
  (road city-loc-41 city-loc-22)
  (= (road-length city-loc-41 city-loc-22) 12)
  ; 782,127 -> 867,49
  (road city-loc-22 city-loc-41)
  (= (road-length city-loc-22 city-loc-41) 12)
  ; 867,49 -> 969,3
  (road city-loc-41 city-loc-30)
  (= (road-length city-loc-41 city-loc-30) 12)
  ; 969,3 -> 867,49
  (road city-loc-30 city-loc-41)
  (= (road-length city-loc-30 city-loc-41) 12)
  ; 867,49 -> 968,139
  (road city-loc-41 city-loc-39)
  (= (road-length city-loc-41 city-loc-39) 14)
  ; 968,139 -> 867,49
  (road city-loc-39 city-loc-41)
  (= (road-length city-loc-39 city-loc-41) 14)
  ; 303,746 -> 389,798
  (road city-loc-42 city-loc-14)
  (= (road-length city-loc-42 city-loc-14) 10)
  ; 389,798 -> 303,746
  (road city-loc-14 city-loc-42)
  (= (road-length city-loc-14 city-loc-42) 10)
  ; 303,746 -> 192,840
  (road city-loc-42 city-loc-34)
  (= (road-length city-loc-42 city-loc-34) 15)
  ; 192,840 -> 303,746
  (road city-loc-34 city-loc-42)
  (= (road-length city-loc-34 city-loc-42) 15)
  ; 303,746 -> 336,637
  (road city-loc-42 city-loc-40)
  (= (road-length city-loc-42 city-loc-40) 12)
  ; 336,637 -> 303,746
  (road city-loc-40 city-loc-42)
  (= (road-length city-loc-40 city-loc-42) 12)
  ; 168,969 -> 192,840
  (road city-loc-43 city-loc-34)
  (= (road-length city-loc-43 city-loc-34) 14)
  ; 192,840 -> 168,969
  (road city-loc-34 city-loc-43)
  (= (road-length city-loc-34 city-loc-43) 14)
  ; 654,75 -> 727,217
  (road city-loc-44 city-loc-13)
  (= (road-length city-loc-44 city-loc-13) 16)
  ; 727,217 -> 654,75
  (road city-loc-13 city-loc-44)
  (= (road-length city-loc-13 city-loc-44) 16)
  ; 654,75 -> 520,164
  (road city-loc-44 city-loc-18)
  (= (road-length city-loc-44 city-loc-18) 17)
  ; 520,164 -> 654,75
  (road city-loc-18 city-loc-44)
  (= (road-length city-loc-18 city-loc-44) 17)
  ; 654,75 -> 782,127
  (road city-loc-44 city-loc-22)
  (= (road-length city-loc-44 city-loc-22) 14)
  ; 782,127 -> 654,75
  (road city-loc-22 city-loc-44)
  (= (road-length city-loc-22 city-loc-44) 14)
  ; 654,75 -> 553,70
  (road city-loc-44 city-loc-38)
  (= (road-length city-loc-44 city-loc-38) 11)
  ; 553,70 -> 654,75
  (road city-loc-38 city-loc-44)
  (= (road-length city-loc-38 city-loc-44) 11)
  ; 527,842 -> 401,900
  (road city-loc-45 city-loc-2)
  (= (road-length city-loc-45 city-loc-2) 14)
  ; 401,900 -> 527,842
  (road city-loc-2 city-loc-45)
  (= (road-length city-loc-2 city-loc-45) 14)
  ; 527,842 -> 389,798
  (road city-loc-45 city-loc-14)
  (= (road-length city-loc-45 city-loc-14) 15)
  ; 389,798 -> 527,842
  (road city-loc-14 city-loc-45)
  (= (road-length city-loc-14 city-loc-45) 15)
  ; 527,842 -> 626,869
  (road city-loc-45 city-loc-19)
  (= (road-length city-loc-45 city-loc-19) 11)
  ; 626,869 -> 527,842
  (road city-loc-19 city-loc-45)
  (= (road-length city-loc-19 city-loc-45) 11)
  ; 527,842 -> 554,978
  (road city-loc-45 city-loc-28)
  (= (road-length city-loc-45 city-loc-28) 14)
  ; 554,978 -> 527,842
  (road city-loc-28 city-loc-45)
  (= (road-length city-loc-28 city-loc-45) 14)
  ; 681,982 -> 765,898
  (road city-loc-46 city-loc-6)
  (= (road-length city-loc-46 city-loc-6) 12)
  ; 765,898 -> 681,982
  (road city-loc-6 city-loc-46)
  (= (road-length city-loc-6 city-loc-46) 12)
  ; 681,982 -> 626,869
  (road city-loc-46 city-loc-19)
  (= (road-length city-loc-46 city-loc-19) 13)
  ; 626,869 -> 681,982
  (road city-loc-19 city-loc-46)
  (= (road-length city-loc-19 city-loc-46) 13)
  ; 681,982 -> 554,978
  (road city-loc-46 city-loc-28)
  (= (road-length city-loc-46 city-loc-28) 13)
  ; 554,978 -> 681,982
  (road city-loc-28 city-loc-46)
  (= (road-length city-loc-28 city-loc-46) 13)
  ; 623,177 -> 727,217
  (road city-loc-47 city-loc-13)
  (= (road-length city-loc-47 city-loc-13) 12)
  ; 727,217 -> 623,177
  (road city-loc-13 city-loc-47)
  (= (road-length city-loc-13 city-loc-47) 12)
  ; 623,177 -> 520,164
  (road city-loc-47 city-loc-18)
  (= (road-length city-loc-47 city-loc-18) 11)
  ; 520,164 -> 623,177
  (road city-loc-18 city-loc-47)
  (= (road-length city-loc-18 city-loc-47) 11)
  ; 623,177 -> 553,70
  (road city-loc-47 city-loc-38)
  (= (road-length city-loc-47 city-loc-38) 13)
  ; 553,70 -> 623,177
  (road city-loc-38 city-loc-47)
  (= (road-length city-loc-38 city-loc-47) 13)
  ; 623,177 -> 654,75
  (road city-loc-47 city-loc-44)
  (= (road-length city-loc-47 city-loc-44) 11)
  ; 654,75 -> 623,177
  (road city-loc-44 city-loc-47)
  (= (road-length city-loc-44 city-loc-47) 11)
  ; 557,286 -> 512,409
  (road city-loc-48 city-loc-4)
  (= (road-length city-loc-48 city-loc-4) 14)
  ; 512,409 -> 557,286
  (road city-loc-4 city-loc-48)
  (= (road-length city-loc-4 city-loc-48) 14)
  ; 557,286 -> 520,164
  (road city-loc-48 city-loc-18)
  (= (road-length city-loc-48 city-loc-18) 13)
  ; 520,164 -> 557,286
  (road city-loc-18 city-loc-48)
  (= (road-length city-loc-18 city-loc-48) 13)
  ; 557,286 -> 419,360
  (road city-loc-48 city-loc-37)
  (= (road-length city-loc-48 city-loc-37) 16)
  ; 419,360 -> 557,286
  (road city-loc-37 city-loc-48)
  (= (road-length city-loc-37 city-loc-48) 16)
  ; 557,286 -> 623,177
  (road city-loc-48 city-loc-47)
  (= (road-length city-loc-48 city-loc-47) 13)
  ; 623,177 -> 557,286
  (road city-loc-47 city-loc-48)
  (= (road-length city-loc-47 city-loc-48) 13)
  ; 907,360 -> 755,388
  (road city-loc-49 city-loc-3)
  (= (road-length city-loc-49 city-loc-3) 16)
  ; 755,388 -> 907,360
  (road city-loc-3 city-loc-49)
  (= (road-length city-loc-3 city-loc-49) 16)
  ; 907,360 -> 987,459
  (road city-loc-49 city-loc-25)
  (= (road-length city-loc-49 city-loc-25) 13)
  ; 987,459 -> 907,360
  (road city-loc-25 city-loc-49)
  (= (road-length city-loc-25 city-loc-49) 13)
  ; 907,360 -> 849,242
  (road city-loc-49 city-loc-27)
  (= (road-length city-loc-49 city-loc-27) 14)
  ; 849,242 -> 907,360
  (road city-loc-27 city-loc-49)
  (= (road-length city-loc-27 city-loc-49) 14)
  ; 907,360 -> 956,245
  (road city-loc-49 city-loc-35)
  (= (road-length city-loc-49 city-loc-35) 13)
  ; 956,245 -> 907,360
  (road city-loc-35 city-loc-49)
  (= (road-length city-loc-35 city-loc-49) 13)
  ; 285,985 -> 401,900
  (road city-loc-50 city-loc-2)
  (= (road-length city-loc-50 city-loc-2) 15)
  ; 401,900 -> 285,985
  (road city-loc-2 city-loc-50)
  (= (road-length city-loc-2 city-loc-50) 15)
  ; 285,985 -> 168,969
  (road city-loc-50 city-loc-43)
  (= (road-length city-loc-50 city-loc-43) 12)
  ; 168,969 -> 285,985
  (road city-loc-43 city-loc-50)
  (= (road-length city-loc-43 city-loc-50) 12)
  ; 22,566 -> 126,655
  (road city-loc-51 city-loc-29)
  (= (road-length city-loc-51 city-loc-29) 14)
  ; 126,655 -> 22,566
  (road city-loc-29 city-loc-51)
  (= (road-length city-loc-29 city-loc-51) 14)
  ; 385,168 -> 425,51
  (road city-loc-52 city-loc-1)
  (= (road-length city-loc-52 city-loc-1) 13)
  ; 425,51 -> 385,168
  (road city-loc-1 city-loc-52)
  (= (road-length city-loc-1 city-loc-52) 13)
  ; 385,168 -> 276,182
  (road city-loc-52 city-loc-11)
  (= (road-length city-loc-52 city-loc-11) 11)
  ; 276,182 -> 385,168
  (road city-loc-11 city-loc-52)
  (= (road-length city-loc-11 city-loc-52) 11)
  ; 385,168 -> 520,164
  (road city-loc-52 city-loc-18)
  (= (road-length city-loc-52 city-loc-18) 14)
  ; 520,164 -> 385,168
  (road city-loc-18 city-loc-52)
  (= (road-length city-loc-18 city-loc-52) 14)
  ; 160,449 -> 55,393
  (road city-loc-53 city-loc-7)
  (= (road-length city-loc-53 city-loc-7) 12)
  ; 55,393 -> 160,449
  (road city-loc-7 city-loc-53)
  (= (road-length city-loc-7 city-loc-53) 12)
  ; 160,449 -> 216,597
  (road city-loc-53 city-loc-31)
  (= (road-length city-loc-53 city-loc-31) 16)
  ; 216,597 -> 160,449
  (road city-loc-31 city-loc-53)
  (= (road-length city-loc-31 city-loc-53) 16)
  ; 160,449 -> 262,415
  (road city-loc-53 city-loc-32)
  (= (road-length city-loc-53 city-loc-32) 11)
  ; 262,415 -> 160,449
  (road city-loc-32 city-loc-53)
  (= (road-length city-loc-32 city-loc-53) 11)
  ; 840,992 -> 765,898
  (road city-loc-54 city-loc-6)
  (= (road-length city-loc-54 city-loc-6) 12)
  ; 765,898 -> 840,992
  (road city-loc-6 city-loc-54)
  (= (road-length city-loc-6 city-loc-54) 12)
  ; 840,992 -> 922,875
  (road city-loc-54 city-loc-16)
  (= (road-length city-loc-54 city-loc-16) 15)
  ; 922,875 -> 840,992
  (road city-loc-16 city-loc-54)
  (= (road-length city-loc-16 city-loc-54) 15)
  ; 840,992 -> 997,974
  (road city-loc-54 city-loc-36)
  (= (road-length city-loc-54 city-loc-36) 16)
  ; 997,974 -> 840,992
  (road city-loc-36 city-loc-54)
  (= (road-length city-loc-36 city-loc-54) 16)
  ; 840,992 -> 681,982
  (road city-loc-54 city-loc-46)
  (= (road-length city-loc-54 city-loc-46) 16)
  ; 681,982 -> 840,992
  (road city-loc-46 city-loc-54)
  (= (road-length city-loc-46 city-loc-54) 16)
  ; 150,327 -> 55,393
  (road city-loc-55 city-loc-7)
  (= (road-length city-loc-55 city-loc-7) 12)
  ; 55,393 -> 150,327
  (road city-loc-7 city-loc-55)
  (= (road-length city-loc-7 city-loc-55) 12)
  ; 150,327 -> 13,248
  (road city-loc-55 city-loc-17)
  (= (road-length city-loc-55 city-loc-17) 16)
  ; 13,248 -> 150,327
  (road city-loc-17 city-loc-55)
  (= (road-length city-loc-17 city-loc-55) 16)
  ; 150,327 -> 148,205
  (road city-loc-55 city-loc-20)
  (= (road-length city-loc-55 city-loc-20) 13)
  ; 148,205 -> 150,327
  (road city-loc-20 city-loc-55)
  (= (road-length city-loc-20 city-loc-55) 13)
  ; 150,327 -> 267,298
  (road city-loc-55 city-loc-24)
  (= (road-length city-loc-55 city-loc-24) 13)
  ; 267,298 -> 150,327
  (road city-loc-24 city-loc-55)
  (= (road-length city-loc-24 city-loc-55) 13)
  ; 150,327 -> 262,415
  (road city-loc-55 city-loc-32)
  (= (road-length city-loc-55 city-loc-32) 15)
  ; 262,415 -> 150,327
  (road city-loc-32 city-loc-55)
  (= (road-length city-loc-32 city-loc-55) 15)
  ; 150,327 -> 160,449
  (road city-loc-55 city-loc-53)
  (= (road-length city-loc-55 city-loc-53) 13)
  ; 160,449 -> 150,327
  (road city-loc-53 city-loc-55)
  (= (road-length city-loc-53 city-loc-55) 13)
  ; 311,29 -> 425,51
  (road city-loc-56 city-loc-1)
  (= (road-length city-loc-56 city-loc-1) 12)
  ; 425,51 -> 311,29
  (road city-loc-1 city-loc-56)
  (= (road-length city-loc-1 city-loc-56) 12)
  ; 311,29 -> 276,182
  (road city-loc-56 city-loc-11)
  (= (road-length city-loc-56 city-loc-11) 16)
  ; 276,182 -> 311,29
  (road city-loc-11 city-loc-56)
  (= (road-length city-loc-11 city-loc-56) 16)
  ; 311,29 -> 206,48
  (road city-loc-56 city-loc-33)
  (= (road-length city-loc-56 city-loc-33) 11)
  ; 206,48 -> 311,29
  (road city-loc-33 city-loc-56)
  (= (road-length city-loc-33 city-loc-56) 11)
  ; 311,29 -> 385,168
  (road city-loc-56 city-loc-52)
  (= (road-length city-loc-56 city-loc-52) 16)
  ; 385,168 -> 311,29
  (road city-loc-52 city-loc-56)
  (= (road-length city-loc-52 city-loc-56) 16)
  ; 953,556 -> 944,697
  (road city-loc-57 city-loc-10)
  (= (road-length city-loc-57 city-loc-10) 15)
  ; 944,697 -> 953,556
  (road city-loc-10 city-loc-57)
  (= (road-length city-loc-10 city-loc-57) 15)
  ; 953,556 -> 835,584
  (road city-loc-57 city-loc-12)
  (= (road-length city-loc-57 city-loc-12) 13)
  ; 835,584 -> 953,556
  (road city-loc-12 city-loc-57)
  (= (road-length city-loc-12 city-loc-57) 13)
  ; 953,556 -> 987,459
  (road city-loc-57 city-loc-25)
  (= (road-length city-loc-57 city-loc-25) 11)
  ; 987,459 -> 953,556
  (road city-loc-25 city-loc-57)
  (= (road-length city-loc-25 city-loc-57) 11)
  ; 879,478 -> 755,388
  (road city-loc-58 city-loc-3)
  (= (road-length city-loc-58 city-loc-3) 16)
  ; 755,388 -> 879,478
  (road city-loc-3 city-loc-58)
  (= (road-length city-loc-3 city-loc-58) 16)
  ; 879,478 -> 835,584
  (road city-loc-58 city-loc-12)
  (= (road-length city-loc-58 city-loc-12) 12)
  ; 835,584 -> 879,478
  (road city-loc-12 city-loc-58)
  (= (road-length city-loc-12 city-loc-58) 12)
  ; 879,478 -> 987,459
  (road city-loc-58 city-loc-25)
  (= (road-length city-loc-58 city-loc-25) 11)
  ; 987,459 -> 879,478
  (road city-loc-25 city-loc-58)
  (= (road-length city-loc-25 city-loc-58) 11)
  ; 879,478 -> 907,360
  (road city-loc-58 city-loc-49)
  (= (road-length city-loc-58 city-loc-49) 13)
  ; 907,360 -> 879,478
  (road city-loc-49 city-loc-58)
  (= (road-length city-loc-49 city-loc-58) 13)
  ; 879,478 -> 953,556
  (road city-loc-58 city-loc-57)
  (= (road-length city-loc-58 city-loc-57) 11)
  ; 953,556 -> 879,478
  (road city-loc-57 city-loc-58)
  (= (road-length city-loc-57 city-loc-58) 11)
  ; 702,726 -> 625,642
  (road city-loc-59 city-loc-15)
  (= (road-length city-loc-59 city-loc-15) 12)
  ; 625,642 -> 702,726
  (road city-loc-15 city-loc-59)
  (= (road-length city-loc-15 city-loc-59) 12)
  ; 702,726 -> 626,869
  (road city-loc-59 city-loc-19)
  (= (road-length city-loc-59 city-loc-19) 17)
  ; 626,869 -> 702,726
  (road city-loc-19 city-loc-59)
  (= (road-length city-loc-19 city-loc-59) 17)
  ; 702,726 -> 815,689
  (road city-loc-59 city-loc-23)
  (= (road-length city-loc-59 city-loc-23) 12)
  ; 815,689 -> 702,726
  (road city-loc-23 city-loc-59)
  (= (road-length city-loc-23 city-loc-59) 12)
  ; 19,718 -> 81,825
  (road city-loc-60 city-loc-8)
  (= (road-length city-loc-60 city-loc-8) 13)
  ; 81,825 -> 19,718
  (road city-loc-8 city-loc-60)
  (= (road-length city-loc-8 city-loc-60) 13)
  ; 19,718 -> 126,655
  (road city-loc-60 city-loc-29)
  (= (road-length city-loc-60 city-loc-29) 13)
  ; 126,655 -> 19,718
  (road city-loc-29 city-loc-60)
  (= (road-length city-loc-29 city-loc-60) 13)
  ; 19,718 -> 22,566
  (road city-loc-60 city-loc-51)
  (= (road-length city-loc-60 city-loc-51) 16)
  ; 22,566 -> 19,718
  (road city-loc-51 city-loc-60)
  (= (road-length city-loc-51 city-loc-60) 16)
  ; 618,393 -> 755,388
  (road city-loc-61 city-loc-3)
  (= (road-length city-loc-61 city-loc-3) 14)
  ; 755,388 -> 618,393
  (road city-loc-3 city-loc-61)
  (= (road-length city-loc-3 city-loc-61) 14)
  ; 618,393 -> 512,409
  (road city-loc-61 city-loc-4)
  (= (road-length city-loc-61 city-loc-4) 11)
  ; 512,409 -> 618,393
  (road city-loc-4 city-loc-61)
  (= (road-length city-loc-4 city-loc-61) 11)
  ; 618,393 -> 557,286
  (road city-loc-61 city-loc-48)
  (= (road-length city-loc-61 city-loc-48) 13)
  ; 557,286 -> 618,393
  (road city-loc-48 city-loc-61)
  (= (road-length city-loc-48 city-loc-61) 13)
  ; 531,732 -> 389,798
  (road city-loc-62 city-loc-14)
  (= (road-length city-loc-62 city-loc-14) 16)
  ; 389,798 -> 531,732
  (road city-loc-14 city-loc-62)
  (= (road-length city-loc-14 city-loc-62) 16)
  ; 531,732 -> 625,642
  (road city-loc-62 city-loc-15)
  (= (road-length city-loc-62 city-loc-15) 13)
  ; 625,642 -> 531,732
  (road city-loc-15 city-loc-62)
  (= (road-length city-loc-15 city-loc-62) 13)
  ; 531,732 -> 527,842
  (road city-loc-62 city-loc-45)
  (= (road-length city-loc-62 city-loc-45) 11)
  ; 527,842 -> 531,732
  (road city-loc-45 city-loc-62)
  (= (road-length city-loc-45 city-loc-62) 11)
  ; 183,740 -> 81,825
  (road city-loc-63 city-loc-8)
  (= (road-length city-loc-63 city-loc-8) 14)
  ; 81,825 -> 183,740
  (road city-loc-8 city-loc-63)
  (= (road-length city-loc-8 city-loc-63) 14)
  ; 183,740 -> 126,655
  (road city-loc-63 city-loc-29)
  (= (road-length city-loc-63 city-loc-29) 11)
  ; 126,655 -> 183,740
  (road city-loc-29 city-loc-63)
  (= (road-length city-loc-29 city-loc-63) 11)
  ; 183,740 -> 216,597
  (road city-loc-63 city-loc-31)
  (= (road-length city-loc-63 city-loc-31) 15)
  ; 216,597 -> 183,740
  (road city-loc-31 city-loc-63)
  (= (road-length city-loc-31 city-loc-63) 15)
  ; 183,740 -> 192,840
  (road city-loc-63 city-loc-34)
  (= (road-length city-loc-63 city-loc-34) 10)
  ; 192,840 -> 183,740
  (road city-loc-34 city-loc-63)
  (= (road-length city-loc-34 city-loc-63) 10)
  ; 183,740 -> 303,746
  (road city-loc-63 city-loc-42)
  (= (road-length city-loc-63 city-loc-42) 12)
  ; 303,746 -> 183,740
  (road city-loc-42 city-loc-63)
  (= (road-length city-loc-42 city-loc-63) 12)
  ; 183,740 -> 19,718
  (road city-loc-63 city-loc-60)
  (= (road-length city-loc-63 city-loc-60) 17)
  ; 19,718 -> 183,740
  (road city-loc-60 city-loc-63)
  (= (road-length city-loc-60 city-loc-63) 17)
  ; 473,633 -> 554,565
  (road city-loc-64 city-loc-5)
  (= (road-length city-loc-64 city-loc-5) 11)
  ; 554,565 -> 473,633
  (road city-loc-5 city-loc-64)
  (= (road-length city-loc-5 city-loc-64) 11)
  ; 473,633 -> 625,642
  (road city-loc-64 city-loc-15)
  (= (road-length city-loc-64 city-loc-15) 16)
  ; 625,642 -> 473,633
  (road city-loc-15 city-loc-64)
  (= (road-length city-loc-15 city-loc-64) 16)
  ; 473,633 -> 336,637
  (road city-loc-64 city-loc-40)
  (= (road-length city-loc-64 city-loc-40) 14)
  ; 336,637 -> 473,633
  (road city-loc-40 city-loc-64)
  (= (road-length city-loc-40 city-loc-64) 14)
  ; 473,633 -> 531,732
  (road city-loc-64 city-loc-62)
  (= (road-length city-loc-64 city-loc-62) 12)
  ; 531,732 -> 473,633
  (road city-loc-62 city-loc-64)
  (= (road-length city-loc-62 city-loc-64) 12)
  ; 12,918 -> 81,825
  (road city-loc-65 city-loc-8)
  (= (road-length city-loc-65 city-loc-8) 12)
  ; 81,825 -> 12,918
  (road city-loc-8 city-loc-65)
  (= (road-length city-loc-8 city-loc-65) 12)
  ; 12,918 -> 168,969
  (road city-loc-65 city-loc-43)
  (= (road-length city-loc-65 city-loc-43) 17)
  ; 168,969 -> 12,918
  (road city-loc-43 city-loc-65)
  (= (road-length city-loc-43 city-loc-65) 17)
  ; 293,883 -> 401,900
  (road city-loc-66 city-loc-2)
  (= (road-length city-loc-66 city-loc-2) 11)
  ; 401,900 -> 293,883
  (road city-loc-2 city-loc-66)
  (= (road-length city-loc-2 city-loc-66) 11)
  ; 293,883 -> 389,798
  (road city-loc-66 city-loc-14)
  (= (road-length city-loc-66 city-loc-14) 13)
  ; 389,798 -> 293,883
  (road city-loc-14 city-loc-66)
  (= (road-length city-loc-14 city-loc-66) 13)
  ; 293,883 -> 192,840
  (road city-loc-66 city-loc-34)
  (= (road-length city-loc-66 city-loc-34) 11)
  ; 192,840 -> 293,883
  (road city-loc-34 city-loc-66)
  (= (road-length city-loc-34 city-loc-66) 11)
  ; 293,883 -> 303,746
  (road city-loc-66 city-loc-42)
  (= (road-length city-loc-66 city-loc-42) 14)
  ; 303,746 -> 293,883
  (road city-loc-42 city-loc-66)
  (= (road-length city-loc-42 city-loc-66) 14)
  ; 293,883 -> 168,969
  (road city-loc-66 city-loc-43)
  (= (road-length city-loc-66 city-loc-43) 16)
  ; 168,969 -> 293,883
  (road city-loc-43 city-loc-66)
  (= (road-length city-loc-43 city-loc-66) 16)
  ; 293,883 -> 285,985
  (road city-loc-66 city-loc-50)
  (= (road-length city-loc-66 city-loc-50) 11)
  ; 285,985 -> 293,883
  (road city-loc-50 city-loc-66)
  (= (road-length city-loc-50 city-loc-66) 11)
  (at package-1 city-loc-25)
  (at package-2 city-loc-27)
  (at package-3 city-loc-40)
  (at package-4 city-loc-55)
  (at package-5 city-loc-32)
  (at package-6 city-loc-4)
  (at package-7 city-loc-65)
  (at package-8 city-loc-54)
  (at package-9 city-loc-32)
  (at package-10 city-loc-38)
  (at package-11 city-loc-41)
  (at package-12 city-loc-24)
  (at package-13 city-loc-48)
  (at package-14 city-loc-54)
  (at package-15 city-loc-6)
  (at package-16 city-loc-65)
  (at package-17 city-loc-9)
  (at package-18 city-loc-1)
  (at package-19 city-loc-32)
  (at package-20 city-loc-64)
  (at package-21 city-loc-16)
  (at package-22 city-loc-16)
  (at package-23 city-loc-58)
  (at package-24 city-loc-66)
  (at package-25 city-loc-37)
  (at package-26 city-loc-27)
  (at package-27 city-loc-5)
  (at package-28 city-loc-6)
  (at package-29 city-loc-53)
  (at package-30 city-loc-32)
  (at package-31 city-loc-51)
  (at package-32 city-loc-33)
  (at package-33 city-loc-19)
  (at package-34 city-loc-39)
  (at package-35 city-loc-13)
  (at package-36 city-loc-35)
  (at package-37 city-loc-22)
  (at package-38 city-loc-44)
  (at package-39 city-loc-46)
  (at package-40 city-loc-61)
  (at package-41 city-loc-49)
  (at package-42 city-loc-37)
  (at package-43 city-loc-37)
  (at package-44 city-loc-23)
  (at package-45 city-loc-3)
  (at package-46 city-loc-64)
  (at package-47 city-loc-14)
  (at package-48 city-loc-22)
  (at package-49 city-loc-46)
  (at package-50 city-loc-2)
  (at truck-1 city-loc-5)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-33)
  (capacity truck-2 capacity-3)
  (at truck-3 city-loc-63)
  (capacity truck-3 capacity-4)
  (at truck-4 city-loc-33)
  (capacity truck-4 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-13)
  (at package-2 city-loc-34)
  (at package-3 city-loc-36)
  (at package-4 city-loc-65)
  (at package-5 city-loc-57)
  (at package-6 city-loc-25)
  (at package-7 city-loc-59)
  (at package-8 city-loc-25)
  (at package-9 city-loc-40)
  (at package-10 city-loc-29)
  (at package-11 city-loc-7)
  (at package-12 city-loc-8)
  (at package-13 city-loc-46)
  (at package-14 city-loc-19)
  (at package-15 city-loc-29)
  (at package-16 city-loc-42)
  (at package-17 city-loc-6)
  (at package-18 city-loc-23)
  (at package-19 city-loc-8)
  (at package-20 city-loc-46)
  (at package-21 city-loc-22)
  (at package-22 city-loc-9)
  (at package-23 city-loc-45)
  (at package-24 city-loc-36)
  (at package-25 city-loc-31)
  (at package-26 city-loc-42)
  (at package-27 city-loc-35)
  (at package-28 city-loc-51)
  (at package-29 city-loc-14)
  (at package-30 city-loc-36)
  (at package-31 city-loc-32)
  (at package-32 city-loc-49)
  (at package-33 city-loc-30)
  (at package-34 city-loc-48)
  (at package-35 city-loc-48)
  (at package-36 city-loc-50)
  (at package-37 city-loc-10)
  (at package-38 city-loc-6)
  (at package-39 city-loc-5)
  (at package-40 city-loc-45)
  (at package-41 city-loc-1)
  (at package-42 city-loc-41)
  (at package-43 city-loc-1)
  (at package-44 city-loc-37)
  (at package-45 city-loc-54)
  (at package-46 city-loc-32)
  (at package-47 city-loc-17)
  (at package-48 city-loc-37)
  (at package-49 city-loc-6)
  (at package-50 city-loc-23)
 ))
 (:metric minimize (total-cost))
)
