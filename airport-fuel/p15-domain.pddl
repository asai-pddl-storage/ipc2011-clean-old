
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (is-parked ?a - airplane ?s - segment)
  (is-start-runway ?s - segment ?d - direction)
  (airborne ?a - airplane ?s - segment) (not_occupied ?s - segment)
  (blocked ?s - segment ?a - airplane)
  (has-type ?a - airplane ?t - airplanetype)
  (facing ?a - airplane ?d - direction) (is-pushing ?a - airplane)
  (at-segment ?a - airplane ?s - segment) (is-moving ?a - airplane)
  (occupied ?s - segment) (not_blocked ?s - segment ?a - airplane))
 (:types airplane segment direction airplanetype)
 (:constants north south - direction light medium heavy - airplanetype
  seg_09thresh_0_100 seg_09help_0_100 seg_09_0_150 seg_a_09_0_100
  seg_rwy_0_1300 seg_27thresh_0_100 seg_27help_0_100 seg_27_0_150
  seg_b_27_0_100 seg_n1_n2_0_100 seg_n1_a_0_100 seg_n2_n3_1_0_86 seg_n2_n3_0_85
  seg_n3_n_0_100 seg_n_n4_0_100 seg_n_c_0_100 seg_n4_n5_1_0_85 seg_n4_n5_0_86
  seg_n5_n6_0_100 seg_n6_b_0_100 seg_c_c2_0_100 seg_c2_c3_0_100 seg_c3_c4_0_50
  seg_c3_c_a01_0_100 seg_c3_c_b01_0_100 seg_c4_c5_0_50 seg_c5_c6_0_50
  seg_c5_c_a02_0_100 seg_c5_c_b02_0_100 seg_c6_c7_0_100 seg_a01_0_100
  seg_a02_0_100 seg_b01_0_100 seg_b02_0_100 seg_n2_n3_2_0_86 seg_n2_n3_3_0_86
  seg_n2_n3_4_0_85 seg_n2_n3_5_0_86 seg_n2_n3_6_0_86 seg_n4_n5_2_0_86
  seg_n4_n5_3_0_86 seg_n4_n5_4_0_85 seg_n4_n5_5_0_86 seg_n4_n5_6_0_86 - segment
  airplane_cfbeg airplane_dfboy airplane_wurst - airplane)
 (:functions (total-cost) - number)
 (:action
  ugly563ugly614ugly599ugly645ugly705ugly54ugly62ugly101ugly71startup_seg_c6_c7_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly564ugly607ugly589ugly651ugly583ugly38ugly127ugly141ugly57move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_1_0_85 airplane_dfboy)
       (not_blocked seg_n4_n5_1_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_2_0_86))
       (not_occupied seg_n4_n5_2_0_86) (not (at-segment ?a seg_n4_n5_2_0_86))
       (occupied seg_n4_n5_1_0_85) (not (not_occupied seg_n4_n5_1_0_85))
       (blocked seg_n4_n5_1_0_85 ?a) (not (not_blocked seg_n4_n5_1_0_85 ?a))
       (at-segment ?a seg_n4_n5_1_0_85) (not (blocked seg_n4_n5_3_0_86 ?a))
       (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action
  ugly565ugly644ugly628ugly693ugly593ugly50ugly5ugly29ugly68move_seg_c_c2_0_100_seg_c2_c3_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
       (not_blocked seg_c2_c3_0_100 airplane_dfboy)
       (not_blocked seg_c2_c3_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_c2_c3_0_100) (not (not_occupied seg_c2_c3_0_100))
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (at-segment ?a seg_c2_c3_0_100) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly566ugly588ugly676ugly574ugly679ugly138ugly26ugly37ugly110move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_cfbeg)
       (not_blocked seg_n_n4_0_100 airplane_dfboy)
       (not_blocked seg_n_n4_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_1_0_85))
       (not_occupied seg_n4_n5_1_0_85) (not (at-segment ?a seg_n4_n5_1_0_85))
       (occupied seg_n_n4_0_100) (not (not_occupied seg_n_n4_0_100))
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))
       (at-segment ?a seg_n_n4_0_100) (not (blocked seg_n4_n5_2_0_86 ?a))
       (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action
  ugly567ugly661ugly572ugly620ugly568ugly112ugly65ugly53ugly43move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_a02_0_100 airplane_wurst)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_c5_0_50))
       (not_occupied seg_c4_c5_0_50) (not (at-segment ?a seg_c4_c5_0_50))
       (occupied seg_c5_c_a02_0_100) (not (not_occupied seg_c5_c_a02_0_100))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly568ugly674ugly625ugly692ugly643ugly2ugly19ugly13ugly89move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_cfbeg)
       (not_blocked seg_n1_n2_0_100 airplane_dfboy)
       (not_blocked seg_n1_n2_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_1_0_86))
       (not_occupied seg_n2_n3_1_0_86) (not (at-segment ?a seg_n2_n3_1_0_86))
       (occupied seg_n1_n2_0_100) (not (not_occupied seg_n1_n2_0_100))
       (blocked seg_n1_n2_0_100 ?a) (not (not_blocked seg_n1_n2_0_100 ?a))
       (at-segment ?a seg_n1_n2_0_100) (not (blocked seg_n2_n3_2_0_86 ?a))
       (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action
  ugly569ugly653ugly578ugly667ugly581ugly94ugly49ugly61ugly115startup_seg_n4_n5_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly570ugly638ugly591ugly639ugly567ugly99ugly11ugly18ugly109startup_seg_a01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly571ugly590ugly603ugly580ugly683ugly25ugly77ugly30ugly119park_seg_b02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly572ugly620ugly568ugly674ugly625ugly130ugly39ugly112ugly65move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_cfbeg)
       (not_blocked seg_b02_0_100 airplane_dfboy)
       (not_blocked seg_b02_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_b02_0_100))
       (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_b02_0_100)
       (not (not_occupied seg_b02_0_100)) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a)) (at-segment ?a seg_b02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly573ugly675ugly565ugly644ugly628ugly131ugly41ugly138ugly26move_seg_c3_c_a01_0_100_seg_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_a01_0_100)
       (not_blocked seg_a01_0_100 airplane_cfbeg)
       (not_blocked seg_a01_0_100 airplane_dfboy)
       (not_blocked seg_a01_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_a01_0_100))
       (not_occupied seg_c3_c_a01_0_100)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_a01_0_100)
       (not (not_occupied seg_a01_0_100)) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a)) (at-segment ?a seg_a01_0_100)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly574ugly679ugly700ugly668ugly631ugly134ugly103ugly14ugly142startup_seg_c3_c4_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly575ugly691ugly680ugly611ugly630ugly32ugly80ugly126ugly128pushback_seg_c5_c6_0_50_seg_c6_c7_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy)
       (not_blocked seg_c6_c7_0_100 airplane_wurst))
  :effect
  (and (not (occupied seg_c5_c6_0_50)) (not_occupied seg_c5_c6_0_50)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (at-segment ?a seg_c5_c6_0_50)) (occupied seg_c6_c7_0_100)
       (not (not_occupied seg_c6_c7_0_100)) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a)) (at-segment ?a seg_c6_c7_0_100)))
 (:action
  ugly576ugly595ugly602ugly623ugly584ugly39ugly112ugly65ugly53move_seg_c2_c3_0_100_seg_c3_c4_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst)
       (not_occupied seg_c3_c_a01_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c3_c4_0_50) (not (not_occupied seg_c3_c4_0_50))
       (blocked seg_c3_c4_0_50 ?a) (not (not_blocked seg_c3_c4_0_50 ?a))
       (at-segment ?a seg_c3_c4_0_50) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly577ugly636ugly654ugly606ugly573ugly113ugly114ugly72ugly56startup_seg_c6_c7_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action
  ugly578ugly667ugly581ugly656ugly613ugly86ugly124ugly84ugly88move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_cfbeg)
       (not_blocked seg_27_0_150 airplane_dfboy)
       (not_blocked seg_27_0_150 airplane_wurst) (not_occupied seg_09_0_150))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_rwy_0_1300))
       (not_occupied seg_rwy_0_1300) (not (at-segment ?a seg_rwy_0_1300))
       (occupied seg_27_0_150) (not (not_occupied seg_27_0_150))
       (blocked seg_27_0_150 ?a) (not (not_blocked seg_27_0_150 ?a))
       (at-segment ?a seg_27_0_150)))
 (:action
  ugly579ugly617ugly655ugly646ugly633ugly72ugly56ugly107ugly12park_seg_b01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly580ugly683ugly587ugly627ugly689ugly64ugly23ugly133ugly2move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_cfbeg)
       (not_blocked seg_09_0_150 airplane_dfboy)
       (not_blocked seg_09_0_150 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a_09_0_100))
       (not_occupied seg_a_09_0_100) (not (at-segment ?a seg_a_09_0_100))
       (occupied seg_09_0_150) (not (not_occupied seg_09_0_150))
       (blocked seg_09_0_150 ?a) (not (not_blocked seg_09_0_150 ?a))
       (at-segment ?a seg_09_0_150) (not (blocked seg_n1_a_0_100 ?a))
       (not_blocked seg_n1_a_0_100 ?a)))
 (:action
  ugly581ugly656ugly613ugly648ugly576ugly33ugly81ugly108ugly97startup_seg_n4_n5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly582ugly641ugly582ugly641ugly582ugly79ugly70ugly139ugly94move_seg_c3_c_b01_0_100_seg_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_b01_0_100)
       (not_blocked seg_b01_0_100 airplane_cfbeg)
       (not_blocked seg_b01_0_100 airplane_dfboy)
       (not_blocked seg_b01_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_b01_0_100))
       (not_occupied seg_c3_c_b01_0_100)
       (not (at-segment ?a seg_c3_c_b01_0_100)) (occupied seg_b01_0_100)
       (not (not_occupied seg_b01_0_100)) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a)) (at-segment ?a seg_b01_0_100)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action
  ugly583ugly600ugly577ugly636ugly654ugly44ugly116ugly47ugly50move_seg_c3_c4_0_50_seg_c2_c3_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
       (not_blocked seg_c2_c3_0_100 airplane_dfboy)
       (not_blocked seg_c2_c3_0_100 airplane_wurst)
       (not_occupied seg_c3_c_a01_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c4_0_50))
       (not_occupied seg_c3_c4_0_50) (not (at-segment ?a seg_c3_c4_0_50))
       (occupied seg_c2_c3_0_100) (not (not_occupied seg_c2_c3_0_100))
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (at-segment ?a seg_c2_c3_0_100) (not (blocked seg_c4_c5_0_50 ?a))
       (not_blocked seg_c4_c5_0_50 ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly584ugly601ugly575ugly691ugly680ugly49ugly61ugly115ugly143move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_cfbeg)
       (not_blocked seg_n5_n6_0_100 airplane_dfboy)
       (not_blocked seg_n5_n6_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n6_b_0_100))
       (not_occupied seg_n6_b_0_100) (not (at-segment ?a seg_n6_b_0_100))
       (occupied seg_n5_n6_0_100) (not (not_occupied seg_n5_n6_0_100))
       (blocked seg_n5_n6_0_100 ?a) (not (not_blocked seg_n5_n6_0_100 ?a))
       (at-segment ?a seg_n5_n6_0_100) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly585ugly615ugly666ugly658ugly677ugly1ugly90ugly137ugly69startup_seg_n2_n3_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly586ugly688ugly619ugly672ugly664ugly87ugly9ugly3ugly58move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_5_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_5_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_6_0_86))
       (not_occupied seg_n4_n5_6_0_86) (not (at-segment ?a seg_n4_n5_6_0_86))
       (occupied seg_n4_n5_5_0_86) (not (not_occupied seg_n4_n5_5_0_86))
       (blocked seg_n4_n5_5_0_86 ?a) (not (not_blocked seg_n4_n5_5_0_86 ?a))
       (at-segment ?a seg_n4_n5_5_0_86) (not (blocked seg_n4_n5_0_86 ?a))
       (not_blocked seg_n4_n5_0_86 ?a)))
 (:action
  ugly587ugly627ugly689ugly626ugly566ugly26ugly37ugly110ugly32startup_seg_n4_n5_1_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly588ugly676ugly574ugly679ugly700ugly106ugly28ugly1ugly90startup_seg_n4_n5_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly589ugly651ugly583ugly600ugly577ugly74ugly42ugly113ugly114startup_seg_n2_n3_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly590ugly603ugly580ugly683ugly587ugly65ugly53ugly43ugly44park_seg_b01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))))
 (:action
  ugly591ugly639ugly567ugly661ugly572ugly58ugly27ugly45ugly129move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_cfbeg)
       (not_blocked seg_b_27_0_100 airplane_dfboy)
       (not_blocked seg_b_27_0_100 airplane_wurst)
       (not_occupied seg_27help_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_27_0_150))
       (not_occupied seg_27_0_150) (not (at-segment ?a seg_27_0_150))
       (occupied seg_b_27_0_100) (not (not_occupied seg_b_27_0_100))
       (blocked seg_b_27_0_100 ?a) (not (not_blocked seg_b_27_0_100 ?a))
       (at-segment ?a seg_b_27_0_100) (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (blocked seg_rwy_0_1300 ?a)) (not_blocked seg_rwy_0_1300 ?a)
       (blocked seg_27help_0_100 ?a) (not (not_blocked seg_27help_0_100 ?a))))
 (:action
  ugly592ugly670ugly640ugly704ugly701ugly80ugly126ugly128ugly59startup_seg_n_n4_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly593ugly612ugly671ugly597ugly622ugly46ugly20ugly4ugly86startup_seg_n2_n3_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly594ugly621ugly686ugly690ugly604ugly123ugly73ugly82ugly92move_seg_c2_c3_0_100_seg_c_c2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
       (not_blocked seg_c_c2_0_100 airplane_dfboy)
       (not_blocked seg_c_c2_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c_c2_0_100) (not (not_occupied seg_c_c2_0_100))
       (blocked seg_c_c2_0_100 ?a) (not (not_blocked seg_c_c2_0_100 ?a))
       (at-segment ?a seg_c_c2_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly595ugly602ugly623ugly584ugly601ugly13ugly89ugly16ugly125move_seg_n_c_0_100_seg_c_c2_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
       (not_blocked seg_c_c2_0_100 airplane_dfboy)
       (not_blocked seg_c_c2_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_c_0_100))
       (not_occupied seg_n_c_0_100) (not (at-segment ?a seg_n_c_0_100))
       (occupied seg_c_c2_0_100) (not (not_occupied seg_c_c2_0_100))
       (blocked seg_c_c2_0_100 ?a) (not (not_blocked seg_c_c2_0_100 ?a))
       (at-segment ?a seg_c_c2_0_100) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a)))
 (:action
  ugly596ugly570ugly638ugly591ugly639ugly5ugly29ugly68ugly35startup_seg_n4_n5_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly597ugly622ugly608ugly592ugly670ugly78ugly130ugly39ugly112startup_seg_b_27_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly598ugly569ugly653ugly578ugly667ugly19ugly13ugly89ugly16startup_seg_n2_n3_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly599ugly645ugly705ugly616ugly682ugly67ugly75ugly140ugly122startup_seg_b02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly600ugly577ugly636ugly654ugly606ugly11ugly18ugly109ugly111move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_cfbeg)
       (not_blocked seg_n1_a_0_100 airplane_dfboy)
       (not_blocked seg_n1_a_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_n2_0_100))
       (not_occupied seg_n1_n2_0_100) (not (at-segment ?a seg_n1_n2_0_100))
       (occupied seg_n1_a_0_100) (not (not_occupied seg_n1_a_0_100))
       (blocked seg_n1_a_0_100 ?a) (not (not_blocked seg_n1_a_0_100 ?a))
       (at-segment ?a seg_n1_a_0_100) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action
  ugly601ugly575ugly691ugly680ugly611ugly68ugly35ugly135ugly96move_seg_b01_0_100_seg_c3_c_b01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b01_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_b01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_b01_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b01_0_100))
       (not_occupied seg_b01_0_100) (not (at-segment ?a seg_b01_0_100))
       (occupied seg_c3_c_b01_0_100) (not (not_occupied seg_c3_c_b01_0_100))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100)))
 (:action
  ugly602ugly623ugly584ugly601ugly575ugly129ugly22ugly10ugly132startup_seg_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly603ugly580ugly683ugly587ugly627ugly127ugly141ugly57ugly31move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_dfboy)
       (not_blocked seg_n_c_0_100 airplane_wurst)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_n4_0_100))
       (not_occupied seg_n_n4_0_100) (not (at-segment ?a seg_n_n4_0_100))
       (occupied seg_n_c_0_100) (not (not_occupied seg_n_c_0_100))
       (blocked seg_n_c_0_100 ?a) (not (not_blocked seg_n_c_0_100 ?a))
       (at-segment ?a seg_n_c_0_100) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n4_n5_1_0_85 ?a)) (not_blocked seg_n4_n5_1_0_85 ?a)
       (blocked seg_n3_n_0_100 ?a) (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly604ugly685ugly605ugly659ugly673ugly107ugly12ugly117ugly51takeoff_seg_27_0_150_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly605ugly659ugly673ugly669ugly652ugly122ugly123ugly73ugly82startup_seg_c3_c4_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))
 (:action
  ugly606ugly573ugly675ugly565ugly644ugly66ugly7ugly99ugly11move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_cfbeg)
       (not_blocked seg_a_09_0_100 airplane_dfboy)
       (not_blocked seg_a_09_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_a_0_100))
       (not_occupied seg_n1_a_0_100) (not (at-segment ?a seg_n1_a_0_100))
       (occupied seg_a_09_0_100) (not (not_occupied seg_a_09_0_100))
       (blocked seg_a_09_0_100 ?a) (not (not_blocked seg_a_09_0_100 ?a))
       (at-segment ?a seg_a_09_0_100) (not (blocked seg_n1_n2_0_100 ?a))
       (not_blocked seg_n1_n2_0_100 ?a)))
 (:action
  ugly607ugly589ugly651ugly583ugly600ugly15ugly91ugly54ugly62startup_seg_c5_c6_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly608ugly592ugly670ugly640ugly704ugly139ugly94ugly49ugly61startup_seg_a02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly609ugly663ugly650ugly698ugly657ugly70ugly139ugly94ugly49takeoff_seg_09_0_150_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly610ugly694ugly687ugly660ugly598ugly7ugly99ugly11ugly18park_seg_a01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action
  ugly611ugly630ugly594ugly621ugly686ugly128ugly59ugly76ugly48move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_1_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_1_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_2_0_86))
       (not_occupied seg_n2_n3_2_0_86) (not (at-segment ?a seg_n2_n3_2_0_86))
       (occupied seg_n2_n3_1_0_86) (not (not_occupied seg_n2_n3_1_0_86))
       (blocked seg_n2_n3_1_0_86 ?a) (not (not_blocked seg_n2_n3_1_0_86 ?a))
       (at-segment ?a seg_n2_n3_1_0_86) (not (blocked seg_n2_n3_3_0_86 ?a))
       (not_blocked seg_n2_n3_3_0_86 ?a)))
 (:action
  ugly612ugly671ugly597ugly622ugly608ugly30ugly119ugly121ugly104move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_a02_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a02_0_100))
       (not_occupied seg_a02_0_100) (not (at-segment ?a seg_a02_0_100))
       (occupied seg_c5_c_a02_0_100) (not (not_occupied seg_c5_c_a02_0_100))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action
  ugly613ugly648ugly576ugly595ugly602ugly61ugly115ugly143ugly24startup_seg_n3_n_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly614ugly599ugly645ugly705ugly616ugly120ugly36ugly136ugly105park_seg_b02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action
  ugly615ugly666ugly658ugly677ugly563ugly52ugly40ugly66ugly7startup_seg_c4_c5_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c3_c4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a))))
 (:action
  ugly616ugly682ugly629ugly609ugly663ugly88ugly21ugly98ugly8startup_seg_n1_n2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly617ugly655ugly646ugly633ugly634ugly62ugly101ugly71ugly106move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_4_0_85 airplane_dfboy)
       (not_blocked seg_n4_n5_4_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_5_0_86))
       (not_occupied seg_n4_n5_5_0_86) (not (at-segment ?a seg_n4_n5_5_0_86))
       (occupied seg_n4_n5_4_0_85) (not (not_occupied seg_n4_n5_4_0_85))
       (blocked seg_n4_n5_4_0_85 ?a) (not (not_blocked seg_n4_n5_4_0_85 ?a))
       (at-segment ?a seg_n4_n5_4_0_85) (not (blocked seg_n4_n5_6_0_86 ?a))
       (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action
  ugly618ugly703ugly662ugly585ugly615ugly104ugly38ugly127ugly141pushback_seg_b02_0_100_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_b02_0_100 airplane_wurst))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (blocked seg_b02_0_100 ?a)) (not_blocked seg_b02_0_100 ?a)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly619ugly672ugly664ugly649ugly571ugly28ugly1ugly90ugly137startup_seg_n1_a_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly620ugly568ugly674ugly625ugly692ugly81ugly108ugly97ugly83startup_seg_n5_n6_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly621ugly686ugly690ugly604ugly685ugly43ugly44ugly116ugly47move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_b02_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b02_0_100))
       (not_occupied seg_b02_0_100) (not (at-segment ?a seg_b02_0_100))
       (occupied seg_c5_c_b02_0_100) (not (not_occupied seg_c5_c_b02_0_100))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly622ugly608ugly592ugly670ugly640ugly142ugly93ugly25ugly77move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_2_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_2_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_3_0_86))
       (not_occupied seg_n4_n5_3_0_86) (not (at-segment ?a seg_n4_n5_3_0_86))
       (occupied seg_n4_n5_2_0_86) (not (not_occupied seg_n4_n5_2_0_86))
       (blocked seg_n4_n5_2_0_86 ?a) (not (not_blocked seg_n4_n5_2_0_86 ?a))
       (at-segment ?a seg_n4_n5_2_0_86) (not (blocked seg_n4_n5_4_0_85 ?a))
       (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action
  ugly623ugly584ugly601ugly575ugly691ugly118ugly63ugly79ugly70startup_seg_n4_n5_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly624ugly647ugly699ugly596ugly570ugly76ugly48ugly15ugly91pushback_seg_a01_0_100_seg_c3_c_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_a01_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_a01_0_100 airplane_wurst))
  :effect
  (and (not (occupied seg_a01_0_100)) (not_occupied seg_a01_0_100)
       (not (blocked seg_a01_0_100 ?a)) (not_blocked seg_a01_0_100 ?a)
       (not (at-segment ?a seg_a01_0_100)) (occupied seg_c3_c_a01_0_100)
       (not (not_occupied seg_c3_c_a01_0_100)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100)))
 (:action
  ugly625ugly692ugly643ugly564ugly607ugly27ugly45ugly129ugly22move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_6_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_6_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_0_85))
       (not_occupied seg_n2_n3_0_85) (not (at-segment ?a seg_n2_n3_0_85))
       (occupied seg_n2_n3_6_0_86) (not (not_occupied seg_n2_n3_6_0_86))
       (blocked seg_n2_n3_6_0_86 ?a) (not (not_blocked seg_n2_n3_6_0_86 ?a))
       (at-segment ?a seg_n2_n3_6_0_86) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a)))
 (:action
  ugly626ugly566ugly588ugly676ugly574ugly117ugly51ugly60ugly102startup_seg_b_27_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action
  ugly627ugly689ugly626ugly566ugly588ugly114ugly72ugly56ugly107move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_4_0_85 airplane_dfboy)
       (not_blocked seg_n2_n3_4_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_5_0_86))
       (not_occupied seg_n2_n3_5_0_86) (not (at-segment ?a seg_n2_n3_5_0_86))
       (occupied seg_n2_n3_4_0_85) (not (not_occupied seg_n2_n3_4_0_85))
       (blocked seg_n2_n3_4_0_85 ?a) (not (not_blocked seg_n2_n3_4_0_85 ?a))
       (at-segment ?a seg_n2_n3_4_0_85) (not (blocked seg_n2_n3_6_0_86 ?a))
       (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action
  ugly628ugly693ugly593ugly612ugly671ugly35ugly135ugly96ugly46move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_cfbeg)
       (not_blocked seg_rwy_0_1300 airplane_dfboy)
       (not_blocked seg_rwy_0_1300 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_09_0_150))
       (not_occupied seg_09_0_150) (not (at-segment ?a seg_09_0_150))
       (occupied seg_rwy_0_1300) (not (not_occupied seg_rwy_0_1300))
       (blocked seg_rwy_0_1300 ?a) (not (not_blocked seg_rwy_0_1300 ?a))
       (at-segment ?a seg_rwy_0_1300) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly629ugly609ugly663ugly650ugly698ugly95ugly134ugly103ugly14startup_seg_n4_n5_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly630ugly594ugly621ugly686ugly690ugly42ugly113ugly114ugly72pushback_seg_c3_c4_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy)
       (not_blocked seg_c4_c5_0_50 airplane_wurst))
  :effect
  (and (not (occupied seg_c3_c4_0_50)) (not_occupied seg_c3_c4_0_50)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (at-segment ?a seg_c3_c4_0_50)) (occupied seg_c4_c5_0_50)
       (not (not_occupied seg_c4_c5_0_50)) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (at-segment ?a seg_c4_c5_0_50)))
 (:action
  ugly631ugly696ugly697ugly637ugly610ugly132ugly118ugly63ugly79startup_seg_n2_n3_1_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly632ugly681ugly678ugly702ugly695ugly17ugly55ugly52ugly40startup_seg_n1_n2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly633ugly634ugly624ugly647ugly699ugly34ugly100ugly87ugly9move_seg_c3_c4_0_50_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy)
       (not_blocked seg_c4_c5_0_50 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c4_0_50))
       (not_occupied seg_c3_c4_0_50) (not (at-segment ?a seg_c3_c4_0_50))
       (occupied seg_c4_c5_0_50) (not (not_occupied seg_c4_c5_0_50))
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (at-segment ?a seg_c4_c5_0_50) (not (blocked seg_c2_c3_0_100 ?a))
       (not_blocked seg_c2_c3_0_100 ?a) (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly634ugly624ugly647ugly699ugly596ugly8ugly67ugly75ugly140startup_seg_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly635ugly635ugly635ugly635ugly635ugly73ugly82ugly92ugly6startup_seg_c3_c_a01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly636ugly654ugly606ugly573ugly675ugly3ugly58ugly27ugly45startup_seg_n2_n3_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly637ugly610ugly694ugly687ugly660ugly36ugly136ugly105ugly120move_seg_c2_c3_0_100_seg_c3_c_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_a01_0_100 airplane_wurst)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c3_c_a01_0_100) (not (not_occupied seg_c3_c_a01_0_100))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly638ugly591ugly639ugly567ugly661ugly10ugly132ugly118ugly63startup_seg_n_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly639ugly567ugly661ugly572ugly620ugly6ugly95ugly134ugly103move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_2_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_2_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_3_0_86))
       (not_occupied seg_n2_n3_3_0_86) (not (at-segment ?a seg_n2_n3_3_0_86))
       (occupied seg_n2_n3_2_0_86) (not (not_occupied seg_n2_n3_2_0_86))
       (blocked seg_n2_n3_2_0_86 ?a) (not (not_blocked seg_n2_n3_2_0_86 ?a))
       (at-segment ?a seg_n2_n3_2_0_86) (not (blocked seg_n2_n3_4_0_85 ?a))
       (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action
  ugly640ugly704ugly701ugly642ugly618ugly141ugly57ugly31ugly33startup_seg_n4_n5_1_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly641ugly582ugly641ugly582ugly641ugly20ugly4ugly86ugly124startup_seg_n5_n6_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly642ugly618ugly703ugly662ugly585ugly53ugly43ugly44ugly116move_seg_c3_c_b01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_b01_0_100))
       (not_occupied seg_c3_c_b01_0_100)
       (not (at-segment ?a seg_c3_c_b01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b01_0_100 ?a)) (not_blocked seg_b01_0_100 ?a)
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly643ugly564ugly607ugly589ugly651ugly21ugly98ugly8ugly67startup_seg_n3_n_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly644ugly628ugly693ugly593ugly612ugly109ugly111ugly17ugly55move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
       (not_blocked seg_c5_c_b02_0_100 airplane_wurst)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_c5_0_50))
       (not_occupied seg_c4_c5_0_50) (not (at-segment ?a seg_c4_c5_0_50))
       (occupied seg_c5_c_b02_0_100) (not (not_occupied seg_c5_c_b02_0_100))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly645ugly705ugly616ugly682ugly629ugly47ugly50ugly5ugly29startup_seg_n1_a_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action
  ugly646ugly633ugly634ugly624ugly647ugly137ugly69ugly131ugly41startup_seg_n4_n5_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly647ugly699ugly596ugly570ugly638ugly29ugly68ugly35ugly135startup_seg_c3_c_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a))))
 (:action
  ugly648ugly576ugly595ugly602ugly623ugly22ugly10ugly132ugly118startup_seg_a_09_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly649ugly571ugly590ugly603ugly580ugly121ugly104ugly38ugly127startup_seg_n4_n5_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly650ugly698ugly657ugly632ugly681ugly116ugly47ugly50ugly5move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_3_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_3_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_4_0_85))
       (not_occupied seg_n4_n5_4_0_85) (not (at-segment ?a seg_n4_n5_4_0_85))
       (occupied seg_n4_n5_3_0_86) (not (not_occupied seg_n4_n5_3_0_86))
       (blocked seg_n4_n5_3_0_86 ?a) (not (not_blocked seg_n4_n5_3_0_86 ?a))
       (at-segment ?a seg_n4_n5_3_0_86) (not (blocked seg_n4_n5_5_0_86 ?a))
       (not_blocked seg_n4_n5_5_0_86 ?a)))
 (:action
  ugly651ugly583ugly600ugly577ugly636ugly92ugly6ugly95ugly134startup_seg_c5_c_a02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly652ugly684ugly665ugly586ugly688ugly57ugly31ugly33ugly81park_seg_a01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))))
 (:action
  ugly653ugly578ugly667ugly581ugly656ugly51ugly60ugly102ugly64move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_cfbeg)
       (not_blocked seg_n6_b_0_100 airplane_dfboy)
       (not_blocked seg_n6_b_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b_27_0_100))
       (not_occupied seg_b_27_0_100) (not (at-segment ?a seg_b_27_0_100))
       (occupied seg_n6_b_0_100) (not (not_occupied seg_n6_b_0_100))
       (blocked seg_n6_b_0_100 ?a) (not (not_blocked seg_n6_b_0_100 ?a))
       (at-segment ?a seg_n6_b_0_100) (not (blocked seg_27_0_150 ?a))
       (not_blocked seg_27_0_150 ?a) (not (blocked seg_27help_0_100 ?a))
       (not_blocked seg_27help_0_100 ?a)))
 (:action
  ugly654ugly606ugly573ugly675ugly565ugly82ugly92ugly6ugly95startup_seg_n4_n5_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly655ugly646ugly633ugly634ugly624ugly85ugly78ugly130ugly39park_seg_a02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action
  ugly656ugly613ugly648ugly576ugly595ugly40ugly66ugly7ugly99move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_5_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_5_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_6_0_86))
       (not_occupied seg_n2_n3_6_0_86) (not (at-segment ?a seg_n2_n3_6_0_86))
       (occupied seg_n2_n3_5_0_86) (not (not_occupied seg_n2_n3_5_0_86))
       (blocked seg_n2_n3_5_0_86 ?a) (not (not_blocked seg_n2_n3_5_0_86 ?a))
       (at-segment ?a seg_n2_n3_5_0_86) (not (blocked seg_n2_n3_0_85 ?a))
       (not_blocked seg_n2_n3_0_85 ?a)))
 (:action
  ugly657ugly632ugly681ugly678ugly702ugly133ugly2ugly19ugly13startup_seg_c_c2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly658ugly677ugly563ugly614ugly599ugly83ugly85ugly78ugly130move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_a02_0_100))
       (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a02_0_100 ?a)) (not_blocked seg_a02_0_100 ?a)
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly659ugly673ugly669ugly652ugly684ugly103ugly14ugly142ugly93move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n5_n6_0_100))
       (not_occupied seg_n5_n6_0_100) (not (at-segment ?a seg_n5_n6_0_100))
       (occupied seg_n4_n5_0_86) (not (not_occupied seg_n4_n5_0_86))
       (blocked seg_n4_n5_0_86 ?a) (not (not_blocked seg_n4_n5_0_86 ?a))
       (at-segment ?a seg_n4_n5_0_86) (not (blocked seg_n6_b_0_100 ?a))
       (not_blocked seg_n6_b_0_100 ?a)))
 (:action
  ugly660ugly598ugly569ugly653ugly578ugly105ugly120ugly36ugly136startup_seg_c5_c_b02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly661ugly572ugly620ugly568ugly674ugly63ugly79ugly70ugly139startup_seg_c3_c_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a))))
 (:action
  ugly662ugly585ugly615ugly666ugly658ugly115ugly143ugly24ugly74move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy)
       (not_blocked seg_c4_c5_0_50 airplane_wurst)
       (not_occupied seg_c5_c_a02_0_100) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c6_0_50))
       (not_occupied seg_c5_c6_0_50) (not (at-segment ?a seg_c5_c6_0_50))
       (occupied seg_c4_c5_0_50) (not (not_occupied seg_c4_c5_0_50))
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (at-segment ?a seg_c4_c5_0_50) (not (blocked seg_c6_c7_0_100 ?a))
       (not_blocked seg_c6_c7_0_100 ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly663ugly650ugly698ugly657ugly632ugly119ugly121ugly104ugly38startup_seg_n2_n3_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly664ugly649ugly571ugly590ugly603ugly18ugly109ugly111ugly17pushback_seg_c3_c_a01_0_100_seg_c3_c4_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst))
  :effect
  (and (not (occupied seg_c3_c_a01_0_100)) (not_occupied seg_c3_c_a01_0_100)
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly665ugly586ugly688ugly619ugly672ugly102ugly64ugly23ugly133move_seg_c3_c_a01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c3_c_a01_0_100))
       (not_occupied seg_c3_c_a01_0_100)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a01_0_100 ?a)) (not_blocked seg_a01_0_100 ?a)
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly666ugly658ugly677ugly563ugly614ugly37ugly110ugly32ugly80startup_seg_n2_n3_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly667ugly581ugly656ugly613ugly648ugly14ugly142ugly93ugly25startup_seg_n_n4_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly668ugly631ugly696ugly697ugly637ugly48ugly15ugly91ugly54startup_seg_a_09_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action
  ugly669ugly652ugly684ugly665ugly586ugly126ugly128ugly59ugly76move_seg_c2_c3_0_100_seg_c3_c_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_b01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_b01_0_100 airplane_wurst)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c2_c3_0_100))
       (not_occupied seg_c2_c3_0_100) (not (at-segment ?a seg_c2_c3_0_100))
       (occupied seg_c3_c_b01_0_100) (not (not_occupied seg_c3_c_b01_0_100))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly670ugly640ugly704ugly701ugly642ugly56ugly107ugly12ugly117move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_b02_0_100))
       (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b02_0_100 ?a)) (not_blocked seg_b02_0_100 ?a)
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly671ugly597ugly622ugly608ugly592ugly108ugly97ugly83ugly85startup_seg_n_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly672ugly664ugly649ugly571ugly590ugly41ugly138ugly26ugly37startup_seg_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly673ugly669ugly652ugly684ugly665ugly24ugly74ugly42ugly113startup_seg_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly674ugly625ugly692ugly643ugly564ugly45ugly129ugly22ugly10startup_seg_n2_n3_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly675ugly565ugly644ugly628ugly693ugly31ugly33ugly81ugly108startup_seg_c3_c_b01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly676ugly574ugly679ugly700ugly668ugly69ugly131ugly41ugly138move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_6_0_86 airplane_dfboy)
       (not_blocked seg_n4_n5_6_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_0_86))
       (not_occupied seg_n4_n5_0_86) (not (at-segment ?a seg_n4_n5_0_86))
       (occupied seg_n4_n5_6_0_86) (not (not_occupied seg_n4_n5_6_0_86))
       (blocked seg_n4_n5_6_0_86 ?a) (not (not_blocked seg_n4_n5_6_0_86 ?a))
       (at-segment ?a seg_n4_n5_6_0_86) (not (blocked seg_n5_n6_0_100 ?a))
       (not_blocked seg_n5_n6_0_100 ?a)))
 (:action
  ugly677ugly563ugly614ugly599ugly645ugly143ugly24ugly74ugly42park_seg_a02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly678ugly702ugly695ugly579ugly617ugly93ugly25ugly77ugly30startup_seg_b01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly679ugly700ugly668ugly631ugly696ugly135ugly96ugly46ugly20move_seg_c4_c5_0_50_seg_c3_c4_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
       (not_blocked seg_c3_c4_0_50 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c4_c5_0_50))
       (not_occupied seg_c4_c5_0_50) (not (at-segment ?a seg_c4_c5_0_50))
       (occupied seg_c3_c4_0_50) (not (not_occupied seg_c3_c4_0_50))
       (blocked seg_c3_c4_0_50 ?a) (not (not_blocked seg_c3_c4_0_50 ?a))
       (at-segment ?a seg_c3_c4_0_50) (not (blocked seg_c5_c6_0_50 ?a))
       (not_blocked seg_c5_c6_0_50 ?a) (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly680ugly611ugly630ugly594ugly621ugly124ugly84ugly88ugly21startup_seg_c4_c5_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly681ugly678ugly702ugly695ugly579ugly55ugly52ugly40ugly66move_seg_c_c2_0_100_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_dfboy)
       (not_blocked seg_n_c_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_n_c_0_100) (not (not_occupied seg_n_c_0_100))
       (blocked seg_n_c_0_100 ?a) (not (not_blocked seg_n_c_0_100 ?a))
       (at-segment ?a seg_n_c_0_100) (not (blocked seg_c2_c3_0_100 ?a))
       (not_blocked seg_c2_c3_0_100 ?a)))
 (:action
  ugly682ugly629ugly609ugly663ugly650ugly136ugly105ugly120ugly36startup_seg_n4_n5_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly683ugly587ugly627ugly689ugly626ugly4ugly86ugly124ugly84startup_seg_c_c2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_c2_c3_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a))))
 (:action
  ugly684ugly665ugly586ugly688ugly619ugly110ugly32ugly80ugly126startup_seg_n2_n3_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly685ugly605ugly659ugly673ugly669ugly90ugly137ugly69ugly131move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c6_c7_0_100))
       (not_occupied seg_c6_c7_0_100) (not (at-segment ?a seg_c6_c7_0_100))
       (occupied seg_c5_c6_0_50) (not (not_occupied seg_c5_c6_0_50))
       (blocked seg_c5_c6_0_50 ?a) (not (not_blocked seg_c5_c6_0_50 ?a))
       (at-segment ?a seg_c5_c6_0_50)))
 (:action
  ugly686ugly690ugly604ugly685ugly605ugly97ugly83ugly85ugly78startup_seg_n2_n3_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly687ugly660ugly598ugly569ugly653ugly16ugly125ugly34ugly100startup_seg_n6_b_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly688ugly619ugly672ugly664ugly649ugly9ugly3ugly58ugly27move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_cfbeg)
       (not_blocked seg_a02_0_100 airplane_dfboy)
       (not_blocked seg_a02_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c_a02_0_100))
       (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_a02_0_100)
       (not (not_occupied seg_a02_0_100)) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a)) (at-segment ?a seg_a02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly689ugly626ugly566ugly588ugly676ugly12ugly117ugly51ugly60startup_seg_c5_c_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action
  ugly690ugly604ugly685ugly605ugly659ugly111ugly17ugly55ugly52move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy)
       (not_blocked seg_c6_c7_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c5_c6_0_50))
       (not_occupied seg_c5_c6_0_50) (not (at-segment ?a seg_c5_c6_0_50))
       (occupied seg_c6_c7_0_100) (not (not_occupied seg_c6_c7_0_100))
       (blocked seg_c6_c7_0_100 ?a) (not (not_blocked seg_c6_c7_0_100 ?a))
       (at-segment ?a seg_c6_c7_0_100) (not (blocked seg_c4_c5_0_50 ?a))
       (not_blocked seg_c4_c5_0_50 ?a) (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly691ugly680ugly611ugly630ugly594ugly59ugly76ugly48ugly15startup_seg_c2_c3_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly692ugly643ugly564ugly607ugly589ugly89ugly16ugly125ugly34startup_seg_c5_c6_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action
  ugly693ugly593ugly612ugly671ugly597ugly60ugly102ugly64ugly23startup_seg_n2_n3_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly694ugly687ugly660ugly598ugly569ugly91ugly54ugly62ugly101startup_seg_n2_n3_1_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly695ugly579ugly617ugly655ugly646ugly71ugly106ugly28ugly1startup_seg_c2_c3_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_a01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly696ugly697ugly637ugly610ugly694ugly125ugly34ugly100ugly87move_seg_n3_n_0_100_seg_n2_n3_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n3_n_0_100) (not_occupied seg_n2_n3_0_85)
       (not_blocked seg_n2_n3_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_0_85 airplane_dfboy)
       (not_blocked seg_n2_n3_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n3_n_0_100))
       (not_occupied seg_n3_n_0_100) (not (at-segment ?a seg_n3_n_0_100))
       (occupied seg_n2_n3_0_85) (not (not_occupied seg_n2_n3_0_85))
       (blocked seg_n2_n3_0_85 ?a) (not (not_blocked seg_n2_n3_0_85 ?a))
       (at-segment ?a seg_n2_n3_0_85) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly697ugly637ugly610ugly694ugly687ugly98ugly8ugly67ugly75startup_seg_n4_n5_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly698ugly657ugly632ugly681ugly678ugly140ugly122ugly123ugly73startup_seg_n4_n5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly699ugly596ugly570ugly638ugly591ugly77ugly30ugly119ugly121startup_seg_c5_c_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action
  ugly700ugly668ugly631ugly696ugly697ugly75ugly140ugly122ugly123startup_seg_n2_n3_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly701ugly642ugly618ugly703ugly662ugly23ugly133ugly2ugly19move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_3_0_86 airplane_dfboy)
       (not_blocked seg_n2_n3_3_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_4_0_85))
       (not_occupied seg_n2_n3_4_0_85) (not (at-segment ?a seg_n2_n3_4_0_85))
       (occupied seg_n2_n3_3_0_86) (not (not_occupied seg_n2_n3_3_0_86))
       (blocked seg_n2_n3_3_0_86 ?a) (not (not_blocked seg_n2_n3_3_0_86 ?a))
       (at-segment ?a seg_n2_n3_3_0_86) (not (blocked seg_n2_n3_5_0_86 ?a))
       (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action
  ugly702ugly695ugly579ugly617ugly655ugly84ugly88ugly21ugly98move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_cfbeg)
       (not_blocked seg_n3_n_0_100 airplane_dfboy)
       (not_blocked seg_n3_n_0_100 airplane_wurst)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_c_0_100))
       (not_occupied seg_n_c_0_100) (not (at-segment ?a seg_n_c_0_100))
       (occupied seg_n3_n_0_100) (not (not_occupied seg_n3_n_0_100))
       (blocked seg_n3_n_0_100 ?a) (not (not_blocked seg_n3_n_0_100 ?a))
       (at-segment ?a seg_n3_n_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly703ugly662ugly585ugly615ugly666ugly96ugly46ugly20ugly4startup_seg_n6_b_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action
  ugly704ugly701ugly642ugly618ugly703ugly100ugly87ugly9ugly3pushback_seg_c5_c_b02_0_100_seg_c5_c6_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_blocked seg_c5_c6_0_50 airplane_wurst))
  :effect
  (and (not (occupied seg_c5_c_b02_0_100)) (not_occupied seg_c5_c_b02_0_100)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly705ugly616ugly682ugly629ugly609ugly101ugly71ugly106ugly28move_seg_a01_0_100_seg_c3_c_a01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a01_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_dfboy)
       (not_blocked seg_c3_c_a01_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a01_0_100))
       (not_occupied seg_a01_0_100) (not (at-segment ?a seg_a01_0_100))
       (occupied seg_c3_c_a01_0_100) (not (not_occupied seg_c3_c_a01_0_100))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100)))) 