
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
  seg_c_c2_2_0_83 - segment airplane_cfbeg - airplane)
 (:action ugly1ugly101move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n2_n3_5_0_86)) (not_occupied seg_n2_n3_5_0_86)
       (not (at-segment ?a seg_n2_n3_5_0_86)) (occupied seg_n2_n3_4_0_85)
       (not (not_occupied seg_n2_n3_4_0_85)) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a)) (at-segment ?a seg_n2_n3_4_0_85)
       (not (blocked seg_n2_n3_6_0_86 ?a)) (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action ugly2ugly91startup_seg_c4_c5_0_50_north_medium :parameters
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
 (:action ugly3ugly36startup_seg_c_c2_1_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_1_0_83)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly4ugly21startup_seg_n2_n3_2_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action ugly5ugly56startup_seg_n4_n5_1_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action ugly6ugly61move_seg_c_c2_1_0_83_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_1_0_83) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c_c2_1_0_83)) (not_occupied seg_c_c2_1_0_83)
       (not (at-segment ?a seg_c_c2_1_0_83)) (occupied seg_n_c_0_100)
       (not (not_occupied seg_n_c_0_100)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a)) (at-segment ?a seg_n_c_0_100)
       (not (blocked seg_c_c2_2_0_83 ?a)) (not_blocked seg_c_c2_2_0_83 ?a)))
 (:action ugly7ugly49move_seg_c4_c5_0_50_seg_c_c2_0_84_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c_c2_0_84)
       (not_blocked seg_c_c2_0_84 airplane_cfbeg))
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
 (:action ugly8ugly90startup_seg_n2_n3_6_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action ugly9ugly33move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
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
 (:action ugly10ugly99move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c5_c_a02_0_100)) (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_a02_0_100)
       (not (not_occupied seg_a02_0_100)) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a)) (at-segment ?a seg_a02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action ugly11ugly103startup_seg_n1_a_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action ugly12ugly71startup_seg_c_c2_0_84_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_84)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))
 (:action ugly13ugly105move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_cfbeg)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_n3_n_0_100)
       (not (not_occupied seg_n3_n_0_100)) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (at-segment ?a seg_n3_n_0_100)
       (not (blocked seg_c_c2_1_0_83 ?a)) (not_blocked seg_c_c2_1_0_83 ?a)
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action ugly14ugly27startup_seg_n_c_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action ugly15ugly64startup_seg_n1_a_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action ugly16ugly62move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
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
 (:action ugly17ugly24move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_cfbeg))
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
       (not_blocked seg_n2_n3_0_85 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n3_n_0_100)) (not_occupied seg_n3_n_0_100)
       (not (at-segment ?a seg_n3_n_0_100)) (occupied seg_n2_n3_0_85)
       (not (not_occupied seg_n2_n3_0_85)) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a)) (at-segment ?a seg_n2_n3_0_85)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))
 (:action ugly19ugly16startup_seg_n_n4_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action ugly20ugly28startup_seg_n2_n3_3_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action ugly21ugly97move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n4_n5_1_0_85)) (not_occupied seg_n4_n5_1_0_85)
       (not (at-segment ?a seg_n4_n5_1_0_85)) (occupied seg_n_n4_0_100)
       (not (not_occupied seg_n_n4_0_100)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (at-segment ?a seg_n_n4_0_100)
       (not (blocked seg_n4_n5_2_0_86 ?a)) (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action ugly22ugly80move_seg_c_c2_0_84_seg_c_c2_2_0_83_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_84) (not_occupied seg_c_c2_2_0_83)
       (not_blocked seg_c_c2_2_0_83 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c_c2_0_84)) (not_occupied seg_c_c2_0_84)
       (not (at-segment ?a seg_c_c2_0_84)) (occupied seg_c_c2_2_0_83)
       (not (not_occupied seg_c_c2_2_0_83)) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a)) (at-segment ?a seg_c_c2_2_0_83)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)))
 (:action ugly23ugly38startup_seg_c6_c7_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly24ugly17move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_cfbeg)
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
 (:action ugly25ugly94move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n2_n3_0_85)) (not_occupied seg_n2_n3_0_85)
       (not (at-segment ?a seg_n2_n3_0_85)) (occupied seg_n2_n3_6_0_86)
       (not (not_occupied seg_n2_n3_6_0_86)) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a)) (at-segment ?a seg_n2_n3_6_0_86)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)))
 (:action ugly26ugly102takeoff_seg_09_0_150_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action ugly27ugly65move_seg_c_c2_2_0_83_seg_c_c2_1_0_83_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_2_0_83) (not_occupied seg_c_c2_1_0_83)
       (not_blocked seg_c_c2_1_0_83 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c_c2_2_0_83)) (not_occupied seg_c_c2_2_0_83)
       (not (at-segment ?a seg_c_c2_2_0_83)) (occupied seg_c_c2_1_0_83)
       (not (not_occupied seg_c_c2_1_0_83)) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a)) (at-segment ?a seg_c_c2_1_0_83)
       (not (blocked seg_c_c2_0_84 ?a)) (not_blocked seg_c_c2_0_84 ?a)))
 (:action ugly28ugly98move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n6_b_0_100)) (not_occupied seg_n6_b_0_100)
       (not (at-segment ?a seg_n6_b_0_100)) (occupied seg_n5_n6_0_100)
       (not (not_occupied seg_n5_n6_0_100)) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a)) (at-segment ?a seg_n5_n6_0_100)
       (not (blocked seg_b_27_0_100 ?a)) (not_blocked seg_b_27_0_100 ?a)))
 (:action ugly29ugly95startup_seg_a_09_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action ugly30ugly107startup_seg_c5_c_a02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action ugly31ugly81startup_seg_n5_n6_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action ugly32ugly84startup_seg_c5_c_b02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly33ugly44move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action ugly34ugly52startup_seg_n4_n5_1_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action ugly35ugly4move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_cfbeg))
  :effect
  (and (not (occupied seg_a_09_0_100)) (not_occupied seg_a_09_0_100)
       (not (at-segment ?a seg_a_09_0_100)) (occupied seg_09_0_150)
       (not (not_occupied seg_09_0_150)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a)) (at-segment ?a seg_09_0_150)
       (not (blocked seg_n1_a_0_100 ?a)) (not_blocked seg_n1_a_0_100 ?a)))
 (:action ugly36ugly75startup_seg_n6_b_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action ugly37ugly39startup_seg_c6_c7_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action ugly38ugly86move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_a02_0_100)) (not_occupied seg_a02_0_100)
       (not (at-segment ?a seg_a02_0_100)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action ugly39ugly87startup_seg_n6_b_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action ugly40ugly106park_seg_b02_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action ugly41ugly114startup_seg_n2_n3_2_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action ugly42ugly115move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg))
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
 (:action ugly43ugly69startup_seg_n4_n5_3_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action ugly44ugly42startup_seg_n4_n5_6_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action ugly45ugly46move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_cfbeg) (not_occupied seg_09_0_150))
  :effect
  (and (not (occupied seg_rwy_0_1300)) (not_occupied seg_rwy_0_1300)
       (not (at-segment ?a seg_rwy_0_1300)) (occupied seg_27_0_150)
       (not (not_occupied seg_27_0_150)) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (at-segment ?a seg_27_0_150)))
 (:action ugly46ugly23move_seg_c_c2_2_0_83_seg_c_c2_0_84_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_2_0_83) (not_occupied seg_c_c2_0_84)
       (not_blocked seg_c_c2_0_84 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c_c2_2_0_83)) (not_occupied seg_c_c2_2_0_83)
       (not (at-segment ?a seg_c_c2_2_0_83)) (occupied seg_c_c2_0_84)
       (not (not_occupied seg_c_c2_0_84)) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a)) (at-segment ?a seg_c_c2_0_84)
       (not (blocked seg_c_c2_1_0_83 ?a)) (not_blocked seg_c_c2_1_0_83 ?a)))
 (:action ugly47ugly50startup_seg_n4_n5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action ugly48ugly2startup_seg_a02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action ugly49ugly6startup_seg_n3_n_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action ugly50ugly68move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n2_n3_4_0_85)) (not_occupied seg_n2_n3_4_0_85)
       (not (at-segment ?a seg_n2_n3_4_0_85)) (occupied seg_n2_n3_3_0_86)
       (not (not_occupied seg_n2_n3_3_0_86)) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a)) (at-segment ?a seg_n2_n3_3_0_86)
       (not (blocked seg_n2_n3_5_0_86 ?a)) (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action ugly51ugly60move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n4_n5_3_0_86)) (not_occupied seg_n4_n5_3_0_86)
       (not (at-segment ?a seg_n4_n5_3_0_86)) (occupied seg_n4_n5_2_0_86)
       (not (not_occupied seg_n4_n5_2_0_86)) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a)) (at-segment ?a seg_n4_n5_2_0_86)
       (not (blocked seg_n4_n5_4_0_85 ?a)) (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action ugly52ugly66startup_seg_c5_c_a02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_c4_c5_0_50) (not_occupied seg_c5_c6_0_50)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly53ugly116move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_cfbeg))
  :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (at-segment ?a seg_09_0_150)) (occupied seg_rwy_0_1300)
       (not (not_occupied seg_rwy_0_1300)) (blocked seg_rwy_0_1300 ?a)
       (not (not_blocked seg_rwy_0_1300 ?a)) (at-segment ?a seg_rwy_0_1300)
       (not (blocked seg_a_09_0_100 ?a)) (not_blocked seg_a_09_0_100 ?a)))
 (:action ugly54ugly19move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n2_n3_3_0_86)) (not_occupied seg_n2_n3_3_0_86)
       (not (at-segment ?a seg_n2_n3_3_0_86)) (occupied seg_n2_n3_2_0_86)
       (not (not_occupied seg_n2_n3_2_0_86)) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a)) (at-segment ?a seg_n2_n3_2_0_86)
       (not (blocked seg_n2_n3_4_0_85 ?a)) (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action ugly55ugly112move_seg_c_c2_1_0_83_seg_c_c2_2_0_83_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_1_0_83) (not_occupied seg_c_c2_2_0_83)
       (not_blocked seg_c_c2_2_0_83 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c_c2_1_0_83)) (not_occupied seg_c_c2_1_0_83)
       (not (at-segment ?a seg_c_c2_1_0_83)) (occupied seg_c_c2_2_0_83)
       (not (not_occupied seg_c_c2_2_0_83)) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a)) (at-segment ?a seg_c_c2_2_0_83)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))
 (:action ugly56ugly67startup_seg_n4_n5_3_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly57ugly117move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n2_n3_6_0_86)) (not_occupied seg_n2_n3_6_0_86)
       (not (at-segment ?a seg_n2_n3_6_0_86)) (occupied seg_n2_n3_5_0_86)
       (not (not_occupied seg_n2_n3_5_0_86)) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a)) (at-segment ?a seg_n2_n3_5_0_86)
       (not (blocked seg_n2_n3_0_85 ?a)) (not_blocked seg_n2_n3_0_85 ?a)))
 (:action ugly58ugly100startup_seg_n2_n3_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action ugly59ugly110move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n2_n3_1_0_86)) (not_occupied seg_n2_n3_1_0_86)
       (not (at-segment ?a seg_n2_n3_1_0_86)) (occupied seg_n1_n2_0_100)
       (not (not_occupied seg_n1_n2_0_100)) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a)) (at-segment ?a seg_n1_n2_0_100)
       (not (blocked seg_n2_n3_2_0_86 ?a)) (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action ugly60ugly32startup_seg_c5_c_b02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action ugly61ugly9move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n4_n5_2_0_86)) (not_occupied seg_n4_n5_2_0_86)
       (not (at-segment ?a seg_n4_n5_2_0_86)) (occupied seg_n4_n5_1_0_85)
       (not (not_occupied seg_n4_n5_1_0_85)) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a)) (at-segment ?a seg_n4_n5_1_0_85)
       (not (blocked seg_n4_n5_3_0_86 ?a)) (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action ugly62ugly43startup_seg_n4_n5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action ugly63ugly11startup_seg_n2_n3_5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action ugly64ugly55startup_seg_n4_n5_5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action ugly65ugly8startup_seg_a02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly66ugly83park_seg_b02_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action ugly67ugly109startup_seg_n1_n2_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action ugly68ugly15startup_seg_n_c_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a))))
 (:action ugly69ugly108startup_seg_n4_n5_5_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action ugly70ugly45takeoff_seg_27_0_150_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action ugly71ugly76startup_seg_b_27_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action ugly72ugly88move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n1_a_0_100)) (not_occupied seg_n1_a_0_100)
       (not (at-segment ?a seg_n1_a_0_100)) (occupied seg_a_09_0_100)
       (not (not_occupied seg_a_09_0_100)) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a)) (at-segment ?a seg_a_09_0_100)
       (not (blocked seg_n1_n2_0_100 ?a)) (not_blocked seg_n1_n2_0_100 ?a)))
 (:action ugly73ugly29startup_seg_b02_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action ugly74ugly30startup_seg_n4_n5_2_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action ugly75ugly73move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n4_n5_6_0_86)) (not_occupied seg_n4_n5_6_0_86)
       (not (at-segment ?a seg_n4_n5_6_0_86)) (occupied seg_n4_n5_5_0_86)
       (not (not_occupied seg_n4_n5_5_0_86)) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a)) (at-segment ?a seg_n4_n5_5_0_86)
       (not (blocked seg_n4_n5_0_86 ?a)) (not_blocked seg_n4_n5_0_86 ?a)))
 (:action ugly76ugly51startup_seg_n3_n_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly77ugly57startup_seg_c_c2_2_0_83_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_2_0_83)
       (not_occupied seg_c_c2_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a))))
 (:action ugly78ugly31startup_seg_c5_c6_0_50_south_medium :parameters
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
 (:action ugly79ugly35move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c6_c7_0_100)) (not_occupied seg_c6_c7_0_100)
       (not (at-segment ?a seg_c6_c7_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)))
 (:action ugly80ugly7startup_seg_a_09_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action ugly81ugly70move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c5_c_b02_0_100)) (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_b02_0_100)
       (not (not_occupied seg_b02_0_100)) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a)) (at-segment ?a seg_b02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action ugly82ugly77startup_seg_n2_n3_1_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action ugly83ugly92move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_b_27_0_100)) (not_occupied seg_b_27_0_100)
       (not (at-segment ?a seg_b_27_0_100)) (occupied seg_n6_b_0_100)
       (not (not_occupied seg_n6_b_0_100)) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a)) (at-segment ?a seg_n6_b_0_100)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (blocked seg_27help_0_100 ?a)) (not_blocked seg_27help_0_100 ?a)))
 (:action ugly84ugly85startup_seg_c_c2_1_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_1_0_83)
       (not_occupied seg_c_c2_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a))))
 (:action ugly85ugly74move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n4_n5_5_0_86)) (not_occupied seg_n4_n5_5_0_86)
       (not (at-segment ?a seg_n4_n5_5_0_86)) (occupied seg_n4_n5_4_0_85)
       (not (not_occupied seg_n4_n5_4_0_85)) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a)) (at-segment ?a seg_n4_n5_4_0_85)
       (not (blocked seg_n4_n5_6_0_86 ?a)) (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action ugly86ugly1startup_seg_n2_n3_4_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action ugly87ugly72park_seg_a02_0_100_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action ugly88ugly20move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n4_n5_0_86)) (not_occupied seg_n4_n5_0_86)
       (not (at-segment ?a seg_n4_n5_0_86)) (occupied seg_n4_n5_6_0_86)
       (not (not_occupied seg_n4_n5_6_0_86)) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a)) (at-segment ?a seg_n4_n5_6_0_86)
       (not (blocked seg_n5_n6_0_100 ?a)) (not_blocked seg_n5_n6_0_100 ?a)))
 (:action ugly89ugly5startup_seg_n2_n3_1_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action ugly90ugly104startup_seg_n4_n5_4_0_85_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action ugly91ugly78move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n4_n5_4_0_85)) (not_occupied seg_n4_n5_4_0_85)
       (not (at-segment ?a seg_n4_n5_4_0_85)) (occupied seg_n4_n5_3_0_86)
       (not (not_occupied seg_n4_n5_3_0_86)) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a)) (at-segment ?a seg_n4_n5_3_0_86)
       (not (blocked seg_n4_n5_5_0_86 ?a)) (not_blocked seg_n4_n5_5_0_86 ?a)))
 (:action ugly92ugly25startup_seg_b02_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly93ugly79move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (occupied seg_n_n4_0_100)) (not_occupied seg_n_n4_0_100)
       (not (at-segment ?a seg_n_n4_0_100)) (occupied seg_n_c_0_100)
       (not (not_occupied seg_n_c_0_100)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a)) (at-segment ?a seg_n_c_0_100)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n4_n5_1_0_85 ?a)) (not_blocked seg_n4_n5_1_0_85 ?a)
       (blocked seg_n3_n_0_100 ?a) (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action ugly94ugly12startup_seg_n5_n6_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action ugly95ugly48move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
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
 (:action ugly96ugly40startup_seg_n4_n5_2_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action ugly97ugly34startup_seg_n1_n2_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action ugly98ugly26startup_seg_n2_n3_5_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action ugly99ugly41startup_seg_n4_n5_6_0_86_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action ugly100ugly59startup_seg_n4_n5_4_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action ugly101ugly14move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n5_n6_0_100)) (not_occupied seg_n5_n6_0_100)
       (not (at-segment ?a seg_n5_n6_0_100)) (occupied seg_n4_n5_0_86)
       (not (not_occupied seg_n4_n5_0_86)) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a)) (at-segment ?a seg_n4_n5_0_86)
       (not (blocked seg_n6_b_0_100 ?a)) (not_blocked seg_n6_b_0_100 ?a)))
 (:action ugly102ugly47startup_seg_b_27_0_100_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action ugly103ugly54move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n1_n2_0_100)) (not_occupied seg_n1_n2_0_100)
       (not (at-segment ?a seg_n1_n2_0_100)) (occupied seg_n1_a_0_100)
       (not (not_occupied seg_n1_a_0_100)) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a)) (at-segment ?a seg_n1_a_0_100)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action ugly104ugly111startup_seg_n2_n3_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action ugly105ugly10startup_seg_n2_n3_3_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action ugly106ugly93startup_seg_c4_c5_0_50_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c_c2_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a))))
 (:action ugly107ugly82startup_seg_c_c2_0_84_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_84)
       (not_occupied seg_c_c2_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a))))
 (:action ugly108ugly113park_seg_a02_0_100_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action ugly109ugly53startup_seg_c_c2_2_0_83_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_2_0_83)
       (not_occupied seg_c_c2_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a))))
 (:action ugly110ugly18startup_seg_n_n4_0_100_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action ugly111ugly58startup_seg_n2_n3_4_0_85_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action ugly112ugly37move_seg_c_c2_0_84_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_84) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg))
  :effect
  (and (not (occupied seg_c_c2_0_84)) (not_occupied seg_c_c2_0_84)
       (not (at-segment ?a seg_c_c2_0_84)) (occupied seg_c4_c5_0_50)
       (not (not_occupied seg_c4_c5_0_50)) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (at-segment ?a seg_c4_c5_0_50)
       (not (blocked seg_c_c2_2_0_83 ?a)) (not_blocked seg_c_c2_2_0_83 ?a)))
 (:action ugly113ugly89move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
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
 (:action
  ugly114ugly96move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
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
 (:action ugly115ugly3move_seg_n_c_0_100_seg_c_c2_1_0_83_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_1_0_83)
       (not_blocked seg_c_c2_1_0_83 airplane_cfbeg))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_c_c2_1_0_83)
       (not (not_occupied seg_c_c2_1_0_83)) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a)) (at-segment ?a seg_c_c2_1_0_83)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)))
 (:action ugly116ugly22startup_seg_c5_c6_0_50_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action ugly117ugly13startup_seg_n2_n3_6_0_86_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))) 