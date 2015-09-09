
(define (domain airport_fixed_structure) (:requirements :typing)
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
  seg_n5_n6_0_100 seg_n6_b_0_100 seg_c_c2_1_0_83 seg_c_c2_0_84 seg_c4_c5_0_50
  seg_c5_c6_0_50 seg_c5_c_a02_0_100 seg_c5_c_b02_0_100 seg_c6_c7_0_100
  seg_a02_0_100 seg_b02_0_100 seg_n2_n3_2_0_86 seg_n2_n3_3_0_86
  seg_n2_n3_4_0_85 seg_n2_n3_5_0_86 seg_n2_n3_6_0_86 seg_n4_n5_2_0_86
  seg_n4_n5_3_0_86 seg_n4_n5_4_0_85 seg_n4_n5_5_0_86 seg_n4_n5_6_0_86
  seg_c_c2_2_0_83 - segment airplane_cfbeg airplane_daewh airplane_dfboy -
  airplane)
 (:action ugly1ugly101startup_seg_n2_n3_3_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action ugly2ugly91move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_a02_0_100)) (not_occupied seg_a02_0_100)
       (not (at-segment ?a seg_a02_0_100)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action ugly3ugly36park_seg_b02_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action ugly4ugly21park_seg_b02_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action ugly5ugly56move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_3_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_3_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_4_0_85)) (not_occupied seg_n2_n3_4_0_85)
       (not (at-segment ?a seg_n2_n3_4_0_85)) (occupied seg_n2_n3_3_0_86)
       (not (not_occupied seg_n2_n3_3_0_86)) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a)) (at-segment ?a seg_n2_n3_3_0_86)
       (not (blocked seg_n2_n3_5_0_86 ?a)) (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action ugly6ugly61move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action ugly7ugly49takeoff_seg_09_0_150_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action ugly8ugly90startup_seg_n4_n5_5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action ugly9ugly33startup_seg_c5_c6_0_50_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action ugly10ugly99startup_seg_n4_n5_3_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action ugly11ugly103startup_seg_a02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly12ugly71move_seg_c_c2_0_84_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_84) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_daewh)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_0_84)) (not_occupied seg_c_c2_0_84)
       (not (at-segment ?a seg_c_c2_0_84)) (occupied seg_c4_c5_0_50)
       (not (not_occupied seg_c4_c5_0_50)) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (at-segment ?a seg_c4_c5_0_50)
       (not (blocked seg_c_c2_2_0_83 ?a)) (not_blocked seg_c_c2_2_0_83 ?a)))
 (:action ugly13ugly105move_seg_c4_c5_0_50_seg_c_c2_0_84_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c_c2_0_84)
       (not_blocked seg_c_c2_0_84 airplane_cfbeg)
       (not_blocked seg_c_c2_0_84 airplane_daewh)
       (not_blocked seg_c_c2_0_84 airplane_dfboy))
  :effect
  (and (not (occupied seg_c4_c5_0_50)) (not_occupied seg_c4_c5_0_50)
       (not (at-segment ?a seg_c4_c5_0_50)) (occupied seg_c_c2_0_84)
       (not (not_occupied seg_c_c2_0_84)) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a)) (at-segment ?a seg_c_c2_0_84)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action ugly14ugly27startup_seg_n3_n_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly15ugly64startup_seg_n4_n5_2_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action ugly16ugly62startup_seg_n_c_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a))))
 (:action ugly17ugly24move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_1_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_1_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_2_0_86)) (not_occupied seg_n2_n3_2_0_86)
       (not (at-segment ?a seg_n2_n3_2_0_86)) (occupied seg_n2_n3_1_0_86)
       (not (not_occupied seg_n2_n3_1_0_86)) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a)) (at-segment ?a seg_n2_n3_1_0_86)
       (not (blocked seg_n2_n3_3_0_86 ?a)) (not_blocked seg_n2_n3_3_0_86 ?a)))
 (:action ugly18ugly63move_seg_n3_n_0_100_seg_n2_n3_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n3_n_0_100) (not_occupied seg_n2_n3_0_85)
       (not_blocked seg_n2_n3_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_0_85 airplane_daewh)
       (not_blocked seg_n2_n3_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n3_n_0_100)) (not_occupied seg_n3_n_0_100)
       (not (at-segment ?a seg_n3_n_0_100)) (occupied seg_n2_n3_0_85)
       (not (not_occupied seg_n2_n3_0_85)) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a)) (at-segment ?a seg_n2_n3_0_85)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))
 (:action ugly19ugly16startup_seg_n2_n3_1_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action ugly20ugly28startup_seg_n4_n5_6_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action ugly21ugly97startup_seg_c6_c7_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action ugly22ugly80move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_daewh)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_c5_c6_0_50)) (not_occupied seg_c5_c6_0_50)
       (not (at-segment ?a seg_c5_c6_0_50)) (occupied seg_c6_c7_0_100)
       (not (not_occupied seg_c6_c7_0_100)) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a)) (at-segment ?a seg_c6_c7_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action ugly23ugly38move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (occupied seg_c4_c5_0_50)) (not_occupied seg_c4_c5_0_50)
       (not (at-segment ?a seg_c4_c5_0_50)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100) (not (blocked seg_c_c2_0_84 ?a))
       (not_blocked seg_c_c2_0_84 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly24ugly17move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_cfbeg)
       (not_blocked seg_b_27_0_100 airplane_daewh)
       (not_blocked seg_b_27_0_100 airplane_dfboy)
       (not_occupied seg_27help_0_100))
  :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (at-segment ?a seg_27_0_150)) (occupied seg_b_27_0_100)
       (not (not_occupied seg_b_27_0_100)) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a)) (at-segment ?a seg_b_27_0_100)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (blocked seg_rwy_0_1300 ?a)) (not_blocked seg_rwy_0_1300 ?a)
       (blocked seg_27help_0_100 ?a) (not (not_blocked seg_27help_0_100 ?a))))
 (:action ugly25ugly94move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_cfbeg)
       (not_blocked seg_a02_0_100 airplane_daewh)
       (not_blocked seg_a02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_c5_c_a02_0_100)) (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_a02_0_100)
       (not (not_occupied seg_a02_0_100)) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a)) (at-segment ?a seg_a02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action ugly26ugly102startup_seg_c5_c6_0_50_south_medium :parameters
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
 (:action ugly27ugly65move_seg_c_c2_2_0_83_seg_c_c2_1_0_83_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_2_0_83) (not_occupied seg_c_c2_1_0_83)
       (not_blocked seg_c_c2_1_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_1_0_83 airplane_daewh)
       (not_blocked seg_c_c2_1_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_2_0_83)) (not_occupied seg_c_c2_2_0_83)
       (not (at-segment ?a seg_c_c2_2_0_83)) (occupied seg_c_c2_1_0_83)
       (not (not_occupied seg_c_c2_1_0_83)) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a)) (at-segment ?a seg_c_c2_1_0_83)
       (not (blocked seg_c_c2_0_84 ?a)) (not_blocked seg_c_c2_0_84 ?a)))
 (:action ugly28ugly119move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_cfbeg)
       (not_blocked seg_rwy_0_1300 airplane_daewh)
       (not_blocked seg_rwy_0_1300 airplane_dfboy))
  :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (at-segment ?a seg_09_0_150)) (occupied seg_rwy_0_1300)
       (not (not_occupied seg_rwy_0_1300)) (blocked seg_rwy_0_1300 ?a)
       (not (not_blocked seg_rwy_0_1300 ?a)) (at-segment ?a seg_rwy_0_1300)
       (not (blocked seg_a_09_0_100 ?a)) (not_blocked seg_a_09_0_100 ?a)))
 (:action ugly29ugly10startup_seg_b02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly30ugly96startup_seg_n2_n3_4_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly31ugly108move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_5_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_5_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_6_0_86)) (not_occupied seg_n2_n3_6_0_86)
       (not (at-segment ?a seg_n2_n3_6_0_86)) (occupied seg_n2_n3_5_0_86)
       (not (not_occupied seg_n2_n3_5_0_86)) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a)) (at-segment ?a seg_n2_n3_5_0_86)
       (not (blocked seg_n2_n3_0_85 ?a)) (not_blocked seg_n2_n3_0_85 ?a)))
 (:action ugly32ugly82move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_6_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_6_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_0_85)) (not_occupied seg_n2_n3_0_85)
       (not (at-segment ?a seg_n2_n3_0_85)) (occupied seg_n2_n3_6_0_86)
       (not (not_occupied seg_n2_n3_6_0_86)) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a)) (at-segment ?a seg_n2_n3_6_0_86)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)))
 (:action ugly33ugly85move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_cfbeg)
       (not_blocked seg_n6_b_0_100 airplane_daewh)
       (not_blocked seg_n6_b_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_b_27_0_100)) (not_occupied seg_b_27_0_100)
       (not (at-segment ?a seg_b_27_0_100)) (occupied seg_n6_b_0_100)
       (not (not_occupied seg_n6_b_0_100)) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a)) (at-segment ?a seg_n6_b_0_100)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (blocked seg_27help_0_100 ?a)) (not_blocked seg_27help_0_100 ?a)))
 (:action ugly34ugly45move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (occupied seg_c5_c_b02_0_100)) (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b02_0_100 ?a)) (not_blocked seg_b02_0_100 ?a)
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly35ugly53move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_cfbeg)
       (not_blocked seg_n1_a_0_100 airplane_daewh)
       (not_blocked seg_n1_a_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n1_n2_0_100)) (not_occupied seg_n1_n2_0_100)
       (not (at-segment ?a seg_n1_n2_0_100)) (occupied seg_n1_a_0_100)
       (not (not_occupied seg_n1_a_0_100)) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a)) (at-segment ?a seg_n1_a_0_100)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action ugly36ugly98move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_cfbeg)
       (not_blocked seg_n5_n6_0_100 airplane_daewh)
       (not_blocked seg_n5_n6_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n6_b_0_100)) (not_occupied seg_n6_b_0_100)
       (not (at-segment ?a seg_n6_b_0_100)) (occupied seg_n5_n6_0_100)
       (not (not_occupied seg_n5_n6_0_100)) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a)) (at-segment ?a seg_n5_n6_0_100)
       (not (blocked seg_b_27_0_100 ?a)) (not_blocked seg_b_27_0_100 ?a)))
 (:action ugly37ugly76startup_seg_n4_n5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action ugly38ugly40startup_seg_c5_c_a02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly39ugly87move_seg_c_c2_0_84_seg_c_c2_2_0_83_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_84) (not_occupied seg_c_c2_2_0_83)
       (not_blocked seg_c_c2_2_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_2_0_83 airplane_daewh)
       (not_blocked seg_c_c2_2_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_0_84)) (not_occupied seg_c_c2_0_84)
       (not (at-segment ?a seg_c_c2_0_84)) (occupied seg_c_c2_2_0_83)
       (not (not_occupied seg_c_c2_2_0_83)) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a)) (at-segment ?a seg_c_c2_2_0_83)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)))
 (:action ugly40ugly88takeoff_seg_27_0_150_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action ugly41ugly107startup_seg_n4_n5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly42ugly115pushback_seg_c5_c_b02_0_100_seg_c5_c6_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy))
  :effect
  (and (not (occupied seg_c5_c_b02_0_100)) (not_occupied seg_c5_c_b02_0_100)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly43ugly116pushback_seg_c5_c6_0_50_seg_c6_c7_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_daewh)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_c5_c6_0_50)) (not_occupied seg_c5_c6_0_50)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (at-segment ?a seg_c5_c6_0_50)) (occupied seg_c6_c7_0_100)
       (not (not_occupied seg_c6_c7_0_100)) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a)) (at-segment ?a seg_c6_c7_0_100)))
 (:action ugly44ugly70startup_seg_n_n4_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action ugly45ugly43startup_seg_n4_n5_4_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action ugly46ugly47move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_cfbeg)
       (not_blocked seg_a_09_0_100 airplane_daewh)
       (not_blocked seg_a_09_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n1_a_0_100)) (not_occupied seg_n1_a_0_100)
       (not (at-segment ?a seg_n1_a_0_100)) (occupied seg_a_09_0_100)
       (not (not_occupied seg_a_09_0_100)) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a)) (at-segment ?a seg_a_09_0_100)
       (not (blocked seg_n1_n2_0_100 ?a)) (not_blocked seg_n1_n2_0_100 ?a)))
 (:action ugly47ugly20move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_6_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_6_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_0_86)) (not_occupied seg_n4_n5_0_86)
       (not (at-segment ?a seg_n4_n5_0_86)) (occupied seg_n4_n5_6_0_86)
       (not (not_occupied seg_n4_n5_6_0_86)) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a)) (at-segment ?a seg_n4_n5_6_0_86)
       (not (blocked seg_n5_n6_0_100 ?a)) (not_blocked seg_n5_n6_0_100 ?a)))
 (:action ugly48ugly23move_seg_c_c2_2_0_83_seg_c_c2_0_84_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_2_0_83) (not_occupied seg_c_c2_0_84)
       (not_blocked seg_c_c2_0_84 airplane_cfbeg)
       (not_blocked seg_c_c2_0_84 airplane_daewh)
       (not_blocked seg_c_c2_0_84 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_2_0_83)) (not_occupied seg_c_c2_2_0_83)
       (not (at-segment ?a seg_c_c2_2_0_83)) (occupied seg_c_c2_0_84)
       (not (not_occupied seg_c_c2_0_84)) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a)) (at-segment ?a seg_c_c2_0_84)
       (not (blocked seg_c_c2_1_0_83 ?a)) (not_blocked seg_c_c2_1_0_83 ?a)))
 (:action ugly49ugly52move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (occupied seg_c4_c5_0_50)) (not_occupied seg_c4_c5_0_50)
       (not (at-segment ?a seg_c4_c5_0_50)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100) (not (blocked seg_c_c2_0_84 ?a))
       (not_blocked seg_c_c2_0_84 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly50ugly93move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy))
  :effect
  (and (not (occupied seg_c6_c7_0_100)) (not_occupied seg_c6_c7_0_100)
       (not (at-segment ?a seg_c6_c7_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)))
 (:action ugly51ugly18startup_seg_n2_n3_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action ugly52ugly44startup_seg_n_c_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action ugly53ugly19move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_2_0_86 airplane_daewh)
       (not_blocked seg_n2_n3_2_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_3_0_86)) (not_occupied seg_n2_n3_3_0_86)
       (not (at-segment ?a seg_n2_n3_3_0_86)) (occupied seg_n2_n3_2_0_86)
       (not (not_occupied seg_n2_n3_2_0_86)) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a)) (at-segment ?a seg_n2_n3_2_0_86)
       (not (blocked seg_n2_n3_4_0_85 ?a)) (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action
  ugly54ugly68pushback_seg_a02_0_100_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_a02_0_100)) (not_occupied seg_a02_0_100)
       (not (blocked seg_a02_0_100 ?a)) (not_blocked seg_a02_0_100 ?a)
       (not (at-segment ?a seg_a02_0_100)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action ugly55ugly118startup_seg_c_c2_0_84_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_84)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))
 (:action ugly56ugly15startup_seg_n2_n3_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action ugly57ugly54startup_seg_n_n4_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly58ugly109move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_daewh)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy)
       (not_occupied seg_c5_c_a02_0_100) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (occupied seg_c5_c6_0_50)) (not_occupied seg_c5_c6_0_50)
       (not (at-segment ?a seg_c5_c6_0_50)) (occupied seg_c4_c5_0_50)
       (not (not_occupied seg_c4_c5_0_50)) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (at-segment ?a seg_c4_c5_0_50)
       (not (blocked seg_c6_c7_0_100 ?a)) (not_blocked seg_c6_c7_0_100 ?a)
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly59ugly122startup_seg_n5_n6_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action ugly60ugly84startup_seg_n1_n2_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action ugly61ugly42startup_seg_n4_n5_4_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action ugly62ugly69startup_seg_n4_n5_3_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action ugly63ugly11startup_seg_n2_n3_3_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action ugly64ugly112startup_seg_n3_n_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action ugly65ugly8startup_seg_c5_c_b02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly66ugly83startup_seg_n6_b_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action ugly67ugly58startup_seg_n2_n3_6_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly68ugly46pushback_seg_c5_c_a02_0_100_seg_c5_c6_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy))
  :effect
  (and (not (occupied seg_c5_c_a02_0_100)) (not_occupied seg_c5_c_a02_0_100)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly69ugly113move_seg_c_c2_1_0_83_seg_c_c2_2_0_83_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_1_0_83) (not_occupied seg_c_c2_2_0_83)
       (not_blocked seg_c_c2_2_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_2_0_83 airplane_daewh)
       (not_blocked seg_c_c2_2_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_1_0_83)) (not_occupied seg_c_c2_1_0_83)
       (not (at-segment ?a seg_c_c2_1_0_83)) (occupied seg_c_c2_2_0_83)
       (not (not_occupied seg_c_c2_2_0_83)) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a)) (at-segment ?a seg_c_c2_2_0_83)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))
 (:action ugly70ugly67startup_seg_n1_n2_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action ugly71ugly39startup_seg_c5_c_a02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action ugly72ugly77move_seg_c_c2_1_0_83_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_1_0_83) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_daewh)
       (not_blocked seg_n_c_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_1_0_83)) (not_occupied seg_c_c2_1_0_83)
       (not (at-segment ?a seg_c_c2_1_0_83)) (occupied seg_n_c_0_100)
       (not (not_occupied seg_n_c_0_100)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a)) (at-segment ?a seg_n_c_0_100)
       (not (blocked seg_c_c2_2_0_83 ?a)) (not_blocked seg_c_c2_2_0_83 ?a)))
 (:action ugly73ugly89startup_seg_n1_a_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action ugly74ugly30startup_seg_a02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly75ugly31startup_seg_n2_n3_5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action ugly76ugly74move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_4_0_85 airplane_daewh)
       (not_blocked seg_n4_n5_4_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_5_0_86)) (not_occupied seg_n4_n5_5_0_86)
       (not (at-segment ?a seg_n4_n5_5_0_86)) (occupied seg_n4_n5_4_0_85)
       (not (not_occupied seg_n4_n5_4_0_85)) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a)) (at-segment ?a seg_n4_n5_4_0_85)
       (not (blocked seg_n4_n5_6_0_86 ?a)) (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action ugly77ugly9move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_1_0_85 airplane_daewh)
       (not_blocked seg_n4_n5_1_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_2_0_86)) (not_occupied seg_n4_n5_2_0_86)
       (not (at-segment ?a seg_n4_n5_2_0_86)) (occupied seg_n4_n5_1_0_85)
       (not (not_occupied seg_n4_n5_1_0_85)) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a)) (at-segment ?a seg_n4_n5_1_0_85)
       (not (blocked seg_n4_n5_3_0_86 ?a)) (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action ugly78ugly55startup_seg_n4_n5_5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action ugly79ugly32startup_seg_c_c2_0_84_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_84)
       (not_occupied seg_c_c2_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a))))
 (:action ugly80ugly3move_seg_n_c_0_100_seg_c_c2_1_0_83_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_1_0_83)
       (not_blocked seg_c_c2_1_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_1_0_83 airplane_daewh)
       (not_blocked seg_c_c2_1_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_c_c2_1_0_83)
       (not (not_occupied seg_c_c2_1_0_83)) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a)) (at-segment ?a seg_c_c2_1_0_83)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)))
 (:action ugly81ugly34move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_cfbeg)
       (not_blocked seg_b02_0_100 airplane_daewh)
       (not_blocked seg_b02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_c5_c_b02_0_100)) (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_b02_0_100)
       (not (not_occupied seg_b02_0_100)) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a)) (at-segment ?a seg_b02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action ugly82ugly12startup_seg_n4_n5_1_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action ugly83ugly78startup_seg_b_27_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action ugly84ugly57startup_seg_a_09_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action ugly85ugly25park_seg_a02_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action ugly86ugly79move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_2_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_2_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_3_0_86)) (not_occupied seg_n4_n5_3_0_86)
       (not (at-segment ?a seg_n4_n5_3_0_86)) (occupied seg_n4_n5_2_0_86)
       (not (not_occupied seg_n4_n5_2_0_86)) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a)) (at-segment ?a seg_n4_n5_2_0_86)
       (not (blocked seg_n4_n5_4_0_85 ?a)) (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action
  ugly87ugly7pushback_seg_b02_0_100_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (blocked seg_b02_0_100 ?a)) (not_blocked seg_b02_0_100 ?a)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action ugly88ugly51move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_cfbeg)
       (not_blocked seg_n1_n2_0_100 airplane_daewh)
       (not_blocked seg_n1_n2_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_1_0_86)) (not_occupied seg_n2_n3_1_0_86)
       (not (at-segment ?a seg_n2_n3_1_0_86)) (occupied seg_n1_n2_0_100)
       (not (not_occupied seg_n1_n2_0_100)) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a)) (at-segment ?a seg_n1_n2_0_100)
       (not (blocked seg_n2_n3_2_0_86 ?a)) (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action ugly89ugly59startup_seg_c_c2_2_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_2_0_83)
       (not_occupied seg_c_c2_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a))))
 (:action ugly90ugly117startup_seg_n1_a_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action ugly91ugly1startup_seg_n2_n3_2_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action ugly92ugly72startup_seg_n6_b_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action ugly93ugly4move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_cfbeg)
       (not_blocked seg_09_0_150 airplane_daewh)
       (not_blocked seg_09_0_150 airplane_dfboy))
  :effect
  (and (not (occupied seg_a_09_0_100)) (not_occupied seg_a_09_0_100)
       (not (at-segment ?a seg_a_09_0_100)) (occupied seg_09_0_150)
       (not (not_occupied seg_09_0_150)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a)) (at-segment ?a seg_09_0_150)
       (not (blocked seg_n1_a_0_100 ?a)) (not_blocked seg_n1_a_0_100 ?a)))
 (:action ugly94ugly41startup_seg_n2_n3_5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action ugly95ugly2startup_seg_c6_c7_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly96ugly106startup_seg_n4_n5_2_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action ugly97ugly92startup_seg_n4_n5_1_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action ugly98ugly26startup_seg_n2_n3_2_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action ugly99ugly114startup_seg_b02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly100ugly110move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_4_0_85 airplane_daewh)
       (not_blocked seg_n2_n3_4_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_5_0_86)) (not_occupied seg_n2_n3_5_0_86)
       (not (at-segment ?a seg_n2_n3_5_0_86)) (occupied seg_n2_n3_4_0_85)
       (not (not_occupied seg_n2_n3_4_0_85)) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a)) (at-segment ?a seg_n2_n3_4_0_85)
       (not (blocked seg_n2_n3_6_0_86 ?a)) (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action
  ugly101ugly104move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_5_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_5_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_6_0_86)) (not_occupied seg_n4_n5_6_0_86)
       (not (at-segment ?a seg_n4_n5_6_0_86)) (occupied seg_n4_n5_5_0_86)
       (not (not_occupied seg_n4_n5_5_0_86)) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a)) (at-segment ?a seg_n4_n5_5_0_86)
       (not (blocked seg_n4_n5_0_86 ?a)) (not_blocked seg_n4_n5_0_86 ?a)))
 (:action ugly102ugly86startup_seg_c_c2_1_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_1_0_83)
       (not_occupied seg_c_c2_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a))))
 (:action
  ugly103ugly95move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (occupied seg_c5_c_a02_0_100)) (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a02_0_100 ?a)) (not_blocked seg_a02_0_100 ?a)
       (blocked seg_c4_c5_0_50 ?a) (not (not_blocked seg_c4_c5_0_50 ?a))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly104ugly29move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_cfbeg)
       (not_blocked seg_n3_n_0_100 airplane_daewh)
       (not_blocked seg_n3_n_0_100 airplane_dfboy)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_n3_n_0_100)
       (not (not_occupied seg_n3_n_0_100)) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (at-segment ?a seg_n3_n_0_100)
       (not (blocked seg_c_c2_1_0_83 ?a)) (not_blocked seg_c_c2_1_0_83 ?a)
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action ugly105ugly6startup_seg_n2_n3_1_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action ugly106ugly111startup_seg_c_c2_2_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_2_0_83)
       (not_occupied seg_c_c2_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a))))
 (:action ugly107ugly73startup_seg_c5_c_b02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action ugly108ugly13startup_seg_n2_n3_4_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action ugly109ugly5startup_seg_b_27_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action ugly110ugly14move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n5_n6_0_100)) (not_occupied seg_n5_n6_0_100)
       (not (at-segment ?a seg_n5_n6_0_100)) (occupied seg_n4_n5_0_86)
       (not (not_occupied seg_n4_n5_0_86)) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a)) (at-segment ?a seg_n4_n5_0_86)
       (not (blocked seg_n6_b_0_100 ?a)) (not_blocked seg_n6_b_0_100 ?a)))
 (:action ugly111ugly121move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_daewh)
       (not_blocked seg_n_c_0_100 airplane_dfboy)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (occupied seg_n_n4_0_100)) (not_occupied seg_n_n4_0_100)
       (not (at-segment ?a seg_n_n4_0_100)) (occupied seg_n_c_0_100)
       (not (not_occupied seg_n_c_0_100)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a)) (at-segment ?a seg_n_c_0_100)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n4_n5_1_0_85 ?a)) (not_blocked seg_n4_n5_1_0_85 ?a)
       (blocked seg_n3_n_0_100 ?a) (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action ugly112ugly66startup_seg_c4_c5_0_50_north_medium :parameters
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
 (:action ugly113ugly37startup_seg_n5_n6_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action ugly114ugly100startup_seg_n2_n3_6_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action ugly115ugly50park_seg_a02_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action ugly116ugly48move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_cfbeg)
       (not_blocked seg_27_0_150 airplane_daewh)
       (not_blocked seg_27_0_150 airplane_dfboy) (not_occupied seg_09_0_150))
  :effect
  (and (not (occupied seg_rwy_0_1300)) (not_occupied seg_rwy_0_1300)
       (not (at-segment ?a seg_rwy_0_1300)) (occupied seg_27_0_150)
       (not (not_occupied seg_27_0_150)) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (at-segment ?a seg_27_0_150)))
 (:action ugly117ugly60startup_seg_c4_c5_0_50_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c_c2_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a))))
 (:action ugly118ugly81move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_cfbeg)
       (not_blocked seg_n_n4_0_100 airplane_daewh)
       (not_blocked seg_n_n4_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_1_0_85)) (not_occupied seg_n4_n5_1_0_85)
       (not (at-segment ?a seg_n4_n5_1_0_85)) (occupied seg_n_n4_0_100)
       (not (not_occupied seg_n_n4_0_100)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (at-segment ?a seg_n_n4_0_100)
       (not (blocked seg_n4_n5_2_0_86 ?a)) (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action ugly119ugly22startup_seg_c_c2_1_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_1_0_83)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly120ugly120startup_seg_n4_n5_6_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action ugly121ugly35startup_seg_a_09_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action
  ugly122ugly75move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_3_0_86 airplane_daewh)
       (not_blocked seg_n4_n5_3_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_4_0_85)) (not_occupied seg_n4_n5_4_0_85)
       (not (at-segment ?a seg_n4_n5_4_0_85)) (occupied seg_n4_n5_3_0_86)
       (not (not_occupied seg_n4_n5_3_0_86)) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a)) (at-segment ?a seg_n4_n5_3_0_86)
       (not (blocked seg_n4_n5_5_0_86 ?a)) (not_blocked seg_n4_n5_5_0_86 ?a)))) 