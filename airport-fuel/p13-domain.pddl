
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (is-moving ?a - airplane) (facing ?a - airplane ?d - direction)
  (is-parked ?a - airplane ?s - segment)
  (has-type ?a - airplane ?t - airplanetype)
  (not_blocked ?s - segment ?a - airplane)
  (at-segment ?a - airplane ?s - segment) (occupied ?s - segment)
  (blocked ?s - segment ?a - airplane) (is-pushing ?a - airplane)
  (not_occupied ?s - segment) (is-start-runway ?s - segment ?d - direction)
  (airborne ?a - airplane ?s - segment))
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
  airplane_cfbeg airplane_wurst - airplane)
 (:functions (total-cost) - number)
 (:action ugly1ugly90move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_1_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_2_0_86))
       (not_occupied seg_n2_n3_2_0_86) (not (at-segment ?a seg_n2_n3_2_0_86))
       (occupied seg_n2_n3_1_0_86) (not (not_occupied seg_n2_n3_1_0_86))
       (blocked seg_n2_n3_1_0_86 ?a) (not (not_blocked seg_n2_n3_1_0_86 ?a))
       (at-segment ?a seg_n2_n3_1_0_86) (not (blocked seg_n2_n3_3_0_86 ?a))
       (not_blocked seg_n2_n3_3_0_86 ?a)))
 (:action ugly2ugly19move_seg_c3_c_a01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
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
  ugly3ugly58pushback_seg_c3_c_a01_0_100_seg_c3_c4_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_wurst))
  :effect
  (and (not (occupied seg_c3_c_a01_0_100)) (not_occupied seg_c3_c_a01_0_100)
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly4ugly86startup_seg_c2_c3_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action ugly5ugly29startup_seg_n4_n5_6_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action ugly6ugly95startup_seg_c5_c6_0_50_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly7ugly99move_seg_c3_c_b01_0_100_seg_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_b01_0_100)
       (not_blocked seg_b01_0_100 airplane_cfbeg)
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
 (:action ugly8ugly67startup_seg_n4_n5_4_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action ugly9ugly3takeoff_seg_09_0_150_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action ugly10ugly132move_seg_c3_c_a01_0_100_seg_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_a01_0_100)
       (not_blocked seg_a01_0_100 airplane_cfbeg)
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
 (:action ugly11ugly18move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
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
  ugly12ugly117move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_4_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_5_0_86))
       (not_occupied seg_n2_n3_5_0_86) (not (at-segment ?a seg_n2_n3_5_0_86))
       (occupied seg_n2_n3_4_0_85) (not (not_occupied seg_n2_n3_4_0_85))
       (blocked seg_n2_n3_4_0_85 ?a) (not (not_blocked seg_n2_n3_4_0_85 ?a))
       (at-segment ?a seg_n2_n3_4_0_85) (not (blocked seg_n2_n3_6_0_86 ?a))
       (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action ugly13ugly9move_seg_c3_c4_0_50_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
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
 (:action ugly14ugly57startup_seg_n1_a_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action ugly15ugly23startup_seg_b_27_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action ugly16ugly92startup_seg_n2_n3_5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action ugly17ugly75startup_seg_a_09_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action ugly18ugly33move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
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
 (:action ugly19ugly2move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_cfbeg)
       (not_blocked seg_09_0_150 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a_09_0_100))
       (not_occupied seg_a_09_0_100) (not (at-segment ?a seg_a_09_0_100))
       (occupied seg_09_0_150) (not (not_occupied seg_09_0_150))
       (blocked seg_09_0_150 ?a) (not (not_blocked seg_09_0_150 ?a))
       (at-segment ?a seg_09_0_150) (not (blocked seg_n1_a_0_100 ?a))
       (not_blocked seg_n1_a_0_100 ?a)))
 (:action ugly20ugly89startup_seg_n2_n3_5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action ugly21ugly97move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
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
 (:action ugly22ugly131startup_seg_n2_n3_3_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly23ugly61move_seg_c2_c3_0_100_seg_c3_c_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
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
 (:action ugly24ugly115move_seg_c3_c4_0_50_seg_c2_c3_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
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
 (:action ugly25ugly6startup_seg_c4_c5_0_50_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly26ugly16startup_seg_c3_c_a01_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action ugly27ugly104startup_seg_n4_n5_4_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action ugly28ugly138startup_seg_a02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly29ugly139move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c6_c7_0_100))
       (not_occupied seg_c6_c7_0_100) (not (at-segment ?a seg_c6_c7_0_100))
       (occupied seg_c5_c6_0_50) (not (not_occupied seg_c5_c6_0_50))
       (blocked seg_c5_c6_0_50 ?a) (not (not_blocked seg_c5_c6_0_50 ?a))
       (at-segment ?a seg_c5_c6_0_50)))
 (:action ugly30ugly80park_seg_b01_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))))
 (:action ugly31ugly83startup_seg_n2_n3_6_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action ugly32ugly43startup_seg_b01_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action ugly33ugly51startup_seg_c3_c_b01_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action ugly34ugly96startup_seg_n2_n3_2_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action ugly35ugly74park_seg_a02_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action ugly36ugly125startup_seg_b_27_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action ugly37ugly39startup_seg_c2_c3_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_a01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action ugly38ugly4startup_seg_c_c2_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly39ugly87startup_seg_c3_c_a01_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a))))
 (:action ugly40ugly106startup_seg_n2_n3_2_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action ugly41ugly114move_seg_c_c2_0_100_seg_c2_c3_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
       (not_blocked seg_c2_c3_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_c2_c3_0_100) (not (not_occupied seg_c2_c3_0_100))
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (at-segment ?a seg_c2_c3_0_100) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action ugly42ugly22startup_seg_n4_n5_2_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action ugly43ugly116move_seg_a01_0_100_seg_c3_c_a01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a01_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a01_0_100))
       (not_occupied seg_a01_0_100) (not (at-segment ?a seg_a01_0_100))
       (occupied seg_c3_c_a01_0_100) (not (not_occupied seg_c3_c_a01_0_100))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100)))
 (:action ugly44ugly70startup_seg_n4_n5_1_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action ugly45ugly32move_seg_c2_c3_0_100_seg_c3_c4_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
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
 (:action ugly46ugly47startup_seg_b02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly47ugly119startup_seg_b02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly48ugly10startup_seg_n4_n5_2_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action ugly49ugly20startup_seg_c3_c4_0_50_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))
 (:action ugly50ugly53startup_seg_n3_n_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly51ugly94move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_2_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_3_0_86))
       (not_occupied seg_n2_n3_3_0_86) (not (at-segment ?a seg_n2_n3_3_0_86))
       (occupied seg_n2_n3_2_0_86) (not (not_occupied seg_n2_n3_2_0_86))
       (blocked seg_n2_n3_2_0_86 ?a) (not (not_blocked seg_n2_n3_2_0_86 ?a))
       (at-segment ?a seg_n2_n3_2_0_86) (not (blocked seg_n2_n3_4_0_85 ?a))
       (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action ugly52ugly64park_seg_b02_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action ugly53ugly71move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_4_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_5_0_86))
       (not_occupied seg_n4_n5_5_0_86) (not (at-segment ?a seg_n4_n5_5_0_86))
       (occupied seg_n4_n5_4_0_85) (not (not_occupied seg_n4_n5_4_0_85))
       (blocked seg_n4_n5_4_0_85 ?a) (not (not_blocked seg_n4_n5_4_0_85 ?a))
       (at-segment ?a seg_n4_n5_4_0_85) (not (blocked seg_n4_n5_6_0_86 ?a))
       (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action ugly54ugly63park_seg_a01_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))))
 (:action ugly55ugly69startup_seg_c5_c_b02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly56ugly46move_seg_c3_c_b01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
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
 (:action ugly57ugly65move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_5_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_6_0_86))
       (not_occupied seg_n4_n5_6_0_86) (not (at-segment ?a seg_n4_n5_6_0_86))
       (occupied seg_n4_n5_5_0_86) (not (not_occupied seg_n4_n5_5_0_86))
       (blocked seg_n4_n5_5_0_86 ?a) (not (not_blocked seg_n4_n5_5_0_86 ?a))
       (at-segment ?a seg_n4_n5_5_0_86) (not (blocked seg_n4_n5_0_86 ?a))
       (not_blocked seg_n4_n5_0_86 ?a)))
 (:action ugly58ugly55startup_seg_n2_n3_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action ugly59ugly110startup_seg_c6_c7_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly60ugly84startup_seg_a02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly61ugly48move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_6_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_0_85))
       (not_occupied seg_n2_n3_0_85) (not (at-segment ?a seg_n2_n3_0_85))
       (occupied seg_n2_n3_6_0_86) (not (not_occupied seg_n2_n3_6_0_86))
       (blocked seg_n2_n3_6_0_86 ?a) (not (not_blocked seg_n2_n3_6_0_86 ?a))
       (at-segment ?a seg_n2_n3_6_0_86) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a)))
 (:action ugly62ugly79move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_5_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_6_0_86))
       (not_occupied seg_n2_n3_6_0_86) (not (at-segment ?a seg_n2_n3_6_0_86))
       (occupied seg_n2_n3_5_0_86) (not (not_occupied seg_n2_n3_5_0_86))
       (blocked seg_n2_n3_5_0_86 ?a) (not (not_blocked seg_n2_n3_5_0_86 ?a))
       (at-segment ?a seg_n2_n3_5_0_86) (not (blocked seg_n2_n3_0_85 ?a))
       (not_blocked seg_n2_n3_0_85 ?a)))
 (:action ugly63ugly105move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_6_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_0_86))
       (not_occupied seg_n4_n5_0_86) (not (at-segment ?a seg_n4_n5_0_86))
       (occupied seg_n4_n5_6_0_86) (not (not_occupied seg_n4_n5_6_0_86))
       (blocked seg_n4_n5_6_0_86 ?a) (not (not_blocked seg_n4_n5_6_0_86 ?a))
       (at-segment ?a seg_n4_n5_6_0_86) (not (blocked seg_n5_n6_0_100 ?a))
       (not_blocked seg_n5_n6_0_100 ?a)))
 (:action ugly64ugly118move_seg_n_c_0_100_seg_c_c2_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
       (not_blocked seg_c_c2_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_c_0_100))
       (not_occupied seg_n_c_0_100) (not (at-segment ?a seg_n_c_0_100))
       (occupied seg_c_c2_0_100) (not (not_occupied seg_c_c2_0_100))
       (blocked seg_c_c2_0_100 ?a) (not (not_blocked seg_c_c2_0_100 ?a))
       (at-segment ?a seg_c_c2_0_100) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a)))
 (:action ugly65ugly27startup_seg_c6_c7_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action ugly66ugly82startup_seg_n3_n_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action ugly67ugly136move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_cfbeg)
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
 (:action ugly68ugly56move_seg_b01_0_100_seg_c3_c_b01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b01_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_b01_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b01_0_100))
       (not_occupied seg_b01_0_100) (not (at-segment ?a seg_b01_0_100))
       (occupied seg_c3_c_b01_0_100) (not (not_occupied seg_c3_c_b01_0_100))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100)))
 (:action ugly69ugly102move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
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
 (:action ugly70ugly78startup_seg_c5_c_a02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly71ugly28startup_seg_n4_n5_5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action ugly72ugly134startup_seg_n2_n3_1_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action ugly73ugly108move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_cfbeg)
       (not_blocked seg_27_0_150 airplane_wurst) (not_occupied seg_09_0_150))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_rwy_0_1300))
       (not_occupied seg_rwy_0_1300) (not (at-segment ?a seg_rwy_0_1300))
       (occupied seg_27_0_150) (not (not_occupied seg_27_0_150))
       (blocked seg_27_0_150 ?a) (not (not_blocked seg_27_0_150 ?a))
       (at-segment ?a seg_27_0_150)))
 (:action
  ugly74ugly109move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_3_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_4_0_85))
       (not_occupied seg_n2_n3_4_0_85) (not (at-segment ?a seg_n2_n3_4_0_85))
       (occupied seg_n2_n3_3_0_86) (not (not_occupied seg_n2_n3_3_0_86))
       (blocked seg_n2_n3_3_0_86 ?a) (not (not_blocked seg_n2_n3_3_0_86 ?a))
       (at-segment ?a seg_n2_n3_3_0_86) (not (blocked seg_n2_n3_5_0_86 ?a))
       (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action ugly75ugly60startup_seg_n6_b_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action ugly76ugly24startup_seg_b01_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly77ugly44startup_seg_n2_n3_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action ugly78ugly100move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a02_0_100))
       (not_occupied seg_a02_0_100) (not (at-segment ?a seg_a02_0_100))
       (occupied seg_c5_c_a02_0_100) (not (not_occupied seg_c5_c_a02_0_100))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action ugly79ugly11move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_cfbeg)
       (not_blocked seg_a_09_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_a_0_100))
       (not_occupied seg_n1_a_0_100) (not (at-segment ?a seg_n1_a_0_100))
       (occupied seg_a_09_0_100) (not (not_occupied seg_a_09_0_100))
       (blocked seg_a_09_0_100 ?a) (not (not_blocked seg_a_09_0_100 ?a))
       (at-segment ?a seg_a_09_0_100) (not (blocked seg_n1_n2_0_100 ?a))
       (not_blocked seg_n1_n2_0_100 ?a)))
 (:action ugly80ugly113startup_seg_n_c_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly81ugly123move_seg_c2_c3_0_100_seg_c3_c_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
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
 (:action ugly82ugly72startup_seg_n4_n5_3_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly83ugly129move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_1_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_2_0_86))
       (not_occupied seg_n4_n5_2_0_86) (not (at-segment ?a seg_n4_n5_2_0_86))
       (occupied seg_n4_n5_1_0_85) (not (not_occupied seg_n4_n5_1_0_85))
       (blocked seg_n4_n5_1_0_85 ?a) (not (not_blocked seg_n4_n5_1_0_85 ?a))
       (at-segment ?a seg_n4_n5_1_0_85) (not (blocked seg_n4_n5_3_0_86 ?a))
       (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action ugly84ugly111startup_seg_n2_n3_6_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action ugly85ugly25move_seg_c2_c3_0_100_seg_c_c2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
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
 (:action ugly86ugly88startup_seg_n4_n5_3_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action ugly87ugly91startup_seg_c5_c_b02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action ugly88ugly133move_seg_c_c2_0_100_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_n_c_0_100) (not (not_occupied seg_n_c_0_100))
       (blocked seg_n_c_0_100 ?a) (not (not_blocked seg_n_c_0_100 ?a))
       (at-segment ?a seg_n_c_0_100) (not (blocked seg_c2_c3_0_100 ?a))
       (not_blocked seg_c2_c3_0_100 ?a)))
 (:action
  ugly89ugly127pushback_seg_a01_0_100_seg_c3_c_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_a01_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_wurst))
  :effect
  (and (not (occupied seg_a01_0_100)) (not_occupied seg_a01_0_100)
       (not (blocked seg_a01_0_100 ?a)) (not_blocked seg_a01_0_100 ?a)
       (not (at-segment ?a seg_a01_0_100)) (occupied seg_c3_c_a01_0_100)
       (not (not_occupied seg_c3_c_a01_0_100)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100)))
 (:action ugly90ugly15move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_cfbeg)
       (not_blocked seg_n6_b_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b_27_0_100))
       (not_occupied seg_b_27_0_100) (not (at-segment ?a seg_b_27_0_100))
       (occupied seg_n6_b_0_100) (not (not_occupied seg_n6_b_0_100))
       (blocked seg_n6_b_0_100 ?a) (not (not_blocked seg_n6_b_0_100 ?a))
       (at-segment ?a seg_n6_b_0_100) (not (blocked seg_27_0_150 ?a))
       (not_blocked seg_27_0_150 ?a) (not (blocked seg_27help_0_100 ?a))
       (not_blocked seg_27help_0_100 ?a)))
 (:action ugly91ugly101move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_cfbeg)
       (not_blocked seg_n1_a_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_n2_0_100))
       (not_occupied seg_n1_n2_0_100) (not (at-segment ?a seg_n1_n2_0_100))
       (occupied seg_n1_a_0_100) (not (not_occupied seg_n1_a_0_100))
       (blocked seg_n1_a_0_100 ?a) (not (not_blocked seg_n1_a_0_100 ?a))
       (at-segment ?a seg_n1_a_0_100) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action
  ugly92ugly128move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_2_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_3_0_86))
       (not_occupied seg_n4_n5_3_0_86) (not (at-segment ?a seg_n4_n5_3_0_86))
       (occupied seg_n4_n5_2_0_86) (not (not_occupied seg_n4_n5_2_0_86))
       (blocked seg_n4_n5_2_0_86 ?a) (not (not_blocked seg_n4_n5_2_0_86 ?a))
       (at-segment ?a seg_n4_n5_2_0_86) (not (blocked seg_n4_n5_4_0_85 ?a))
       (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action ugly93ugly140startup_seg_n4_n5_1_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action ugly94ugly14takeoff_seg_27_0_150_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action ugly95ugly98startup_seg_n4_n5_5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action ugly96ugly122startup_seg_a01_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly97ugly52startup_seg_n1_n2_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action ugly98ugly137startup_seg_n2_n3_4_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action ugly99ugly49move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_cfbeg)
       (not_blocked seg_rwy_0_1300 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_09_0_150))
       (not_occupied seg_09_0_150) (not (at-segment ?a seg_09_0_150))
       (occupied seg_rwy_0_1300) (not (not_occupied seg_rwy_0_1300))
       (blocked seg_rwy_0_1300 ?a) (not (not_blocked seg_rwy_0_1300 ?a))
       (at-segment ?a seg_rwy_0_1300) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action ugly100ugly38move_seg_c4_c5_0_50_seg_c3_c4_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
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
 (:action ugly101ugly17startup_seg_n_c_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action ugly102ugly42move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_cfbeg)
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
 (:action ugly103ugly73startup_seg_a01_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action ugly104ugly135startup_seg_a_09_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action ugly105ugly26move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_cfbeg)
       (not_blocked seg_n1_n2_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_1_0_86))
       (not_occupied seg_n2_n3_1_0_86) (not (at-segment ?a seg_n2_n3_1_0_86))
       (occupied seg_n1_n2_0_100) (not (not_occupied seg_n1_n2_0_100))
       (blocked seg_n1_n2_0_100 ?a) (not (not_blocked seg_n1_n2_0_100 ?a))
       (at-segment ?a seg_n1_n2_0_100) (not (blocked seg_n2_n3_2_0_86 ?a))
       (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action ugly106ugly121startup_seg_c3_c_b01_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a))))
 (:action ugly107ugly50move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_cfbeg)
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
 (:action ugly108ugly21startup_seg_c5_c6_0_50_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action ugly109ugly13move_seg_n3_n_0_100_seg_n2_n3_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n3_n_0_100) (not_occupied seg_n2_n3_0_85)
       (not_blocked seg_n2_n3_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_0_85 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n3_n_0_100))
       (not_occupied seg_n3_n_0_100) (not (at-segment ?a seg_n3_n_0_100))
       (occupied seg_n2_n3_0_85) (not (not_occupied seg_n2_n3_0_85))
       (blocked seg_n2_n3_0_85 ?a) (not (not_blocked seg_n2_n3_0_85 ?a))
       (at-segment ?a seg_n2_n3_0_85) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action ugly110ugly103startup_seg_n_n4_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action ugly111ugly130startup_seg_n1_a_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action ugly112ugly85move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n5_n6_0_100))
       (not_occupied seg_n5_n6_0_100) (not (at-segment ?a seg_n5_n6_0_100))
       (occupied seg_n4_n5_0_86) (not (not_occupied seg_n4_n5_0_86))
       (blocked seg_n4_n5_0_86 ?a) (not (not_blocked seg_n4_n5_0_86 ?a))
       (at-segment ?a seg_n4_n5_0_86) (not (blocked seg_n6_b_0_100 ?a))
       (not_blocked seg_n6_b_0_100 ?a)))
 (:action ugly113ugly76move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_cfbeg)
       (not_blocked seg_n5_n6_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n6_b_0_100))
       (not_occupied seg_n6_b_0_100) (not (at-segment ?a seg_n6_b_0_100))
       (occupied seg_n5_n6_0_100) (not (not_occupied seg_n5_n6_0_100))
       (blocked seg_n5_n6_0_100 ?a) (not (not_blocked seg_n5_n6_0_100 ?a))
       (at-segment ?a seg_n5_n6_0_100) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action ugly114ugly35startup_seg_n_n4_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly115ugly5move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_3_0_86 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_4_0_85))
       (not_occupied seg_n4_n5_4_0_85) (not (at-segment ?a seg_n4_n5_4_0_85))
       (occupied seg_n4_n5_3_0_86) (not (not_occupied seg_n4_n5_3_0_86))
       (blocked seg_n4_n5_3_0_86 ?a) (not (not_blocked seg_n4_n5_3_0_86 ?a))
       (at-segment ?a seg_n4_n5_3_0_86) (not (blocked seg_n4_n5_5_0_86 ?a))
       (not_blocked seg_n4_n5_5_0_86 ?a)))
 (:action ugly116ugly1startup_seg_c3_c4_0_50_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action ugly117ugly12park_seg_b02_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action ugly118ugly34startup_seg_c4_c5_0_50_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c3_c4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a))))
 (:action ugly119ugly120startup_seg_n5_n6_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action ugly120ugly81startup_seg_n2_n3_3_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action ugly121ugly93startup_seg_n4_n5_6_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly122ugly107move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b02_0_100))
       (not_occupied seg_b02_0_100) (not (at-segment ?a seg_b02_0_100))
       (occupied seg_c5_c_b02_0_100) (not (not_occupied seg_c5_c_b02_0_100))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action ugly123ugly36startup_seg_n2_n3_4_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action ugly124ugly40park_seg_a01_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action ugly125ugly62startup_seg_n4_n5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action ugly126ugly45move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_cfbeg)
       (not_blocked seg_n_n4_0_100 airplane_wurst))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_1_0_85))
       (not_occupied seg_n4_n5_1_0_85) (not (at-segment ?a seg_n4_n5_1_0_85))
       (occupied seg_n_n4_0_100) (not (not_occupied seg_n_n4_0_100))
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))
       (at-segment ?a seg_n_n4_0_100) (not (blocked seg_n4_n5_2_0_86 ?a))
       (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action ugly127ugly54startup_seg_n1_n2_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action ugly128ugly30startup_seg_n4_n5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action ugly129ugly31startup_seg_n6_b_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action ugly130ugly66startup_seg_n5_n6_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action ugly131ugly124move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
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
  ugly132ugly37move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
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
 (:action ugly133ugly7startup_seg_c5_c_a02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action
  ugly134ugly68pushback_seg_c3_c4_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_wurst))
  :effect
  (and (not (occupied seg_c3_c4_0_50)) (not_occupied seg_c3_c4_0_50)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (at-segment ?a seg_c3_c4_0_50)) (occupied seg_c4_c5_0_50)
       (not (not_occupied seg_c4_c5_0_50)) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (at-segment ?a seg_c4_c5_0_50)))
 (:action ugly135ugly59park_seg_a02_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action ugly136ugly8startup_seg_n2_n3_1_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly137ugly126move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_cfbeg)
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
 (:action ugly138ugly112startup_seg_c_c2_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_c2_c3_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a))))
 (:action ugly139ugly41park_seg_b01_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly140ugly77move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
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
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))) 