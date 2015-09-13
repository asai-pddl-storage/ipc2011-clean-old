
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (is-parked ?a - airplane ?s - segment)
  (is-start-runway ?s - segment ?d - direction)
  (at-segment ?a - airplane ?s - segment) (airborne ?a - airplane ?s - segment)
  (blocked ?s - segment ?a - airplane) (is-pushing ?a - airplane)
  (occupied ?s - segment) (is-moving ?a - airplane) (not_occupied ?s - segment)
  (facing ?a - airplane ?d - direction)
  (has-type ?a - airplane ?t - airplanetype)
  (not_blocked ?s - segment ?a - airplane))
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
  airplane_daewh - airplane)
 (:action
  ugly980ugly1053ugly76ugly24ugly115ugly5move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n4_n5_4_0_85)) (not_occupied seg_n4_n5_4_0_85)
       (not (at-segment ?a seg_n4_n5_4_0_85)) (occupied seg_n4_n5_3_0_86)
       (not (not_occupied seg_n4_n5_3_0_86)) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a)) (at-segment ?a seg_n4_n5_3_0_86)
       (not (blocked seg_n4_n5_5_0_86 ?a)) (not_blocked seg_n4_n5_5_0_86 ?a)))
 (:action ugly981ugly1018ugly89ugly127ugly54ugly63park_seg_a01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))))
 (:action ugly982ugly1081ugly92ugly128ugly30ugly80park_seg_b01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))))
 (:action
  ugly983ugly1092ugly84ugly111ugly130ugly66startup_seg_n5_n6_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly984ugly1012ugly45ugly32ugly43ugly116move_seg_a01_0_100_seg_c3_c_a01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a01_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_a01_0_100)) (not_occupied seg_a01_0_100)
       (not (at-segment ?a seg_a01_0_100)) (occupied seg_c3_c_a01_0_100)
       (not (not_occupied seg_c3_c_a01_0_100)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100)))
 (:action
  ugly985ugly1033ugly138ugly112ugly85ugly25move_seg_c2_c3_0_100_seg_c_c2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c2_c3_0_100)) (not_occupied seg_c2_c3_0_100)
       (not (at-segment ?a seg_c2_c3_0_100)) (occupied seg_c_c2_0_100)
       (not (not_occupied seg_c_c2_0_100)) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a)) (at-segment ?a seg_c_c2_0_100)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly986ugly1014ugly4ugly86ugly88ugly133move_seg_c_c2_0_100_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c_c2_0_100)) (not_occupied seg_c_c2_0_100)
       (not (at-segment ?a seg_c_c2_0_100)) (occupied seg_n_c_0_100)
       (not (not_occupied seg_n_c_0_100)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a)) (at-segment ?a seg_n_c_0_100)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)))
 (:action
  ugly987ugly1016ugly42ugly22ugly131ugly124move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_daewh))
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
 (:action
  ugly988ugly1100ugly70ugly78ugly100ugly38move_seg_c4_c5_0_50_seg_c3_c4_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_c4_c5_0_50)) (not_occupied seg_c4_c5_0_50)
       (not (at-segment ?a seg_c4_c5_0_50)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly989ugly1010ugly127ugly54ugly63ugly105move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n4_n5_0_86)) (not_occupied seg_n4_n5_0_86)
       (not (at-segment ?a seg_n4_n5_0_86)) (occupied seg_n4_n5_6_0_86)
       (not (not_occupied seg_n4_n5_6_0_86)) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a)) (at-segment ?a seg_n4_n5_6_0_86)
       (not (blocked seg_n5_n6_0_100 ?a)) (not_blocked seg_n5_n6_0_100 ?a)))
 (:action ugly990ugly1072ugly21ugly97ugly52ugly64park_seg_b02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly991ugly1108ugly133ugly7ugly99ugly49move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_daewh))
  :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (at-segment ?a seg_09_0_150)) (occupied seg_rwy_0_1300)
       (not (not_occupied seg_rwy_0_1300)) (blocked seg_rwy_0_1300 ?a)
       (not (not_blocked seg_rwy_0_1300 ?a)) (at-segment ?a seg_rwy_0_1300)
       (not (blocked seg_a_09_0_100 ?a)) (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly992ugly1062ugly23ugly61ugly48ugly10startup_seg_n4_n5_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly993ugly998ugly34ugly96ugly122ugly107move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly994ugly1038ugly122ugly107ugly50ugly53startup_seg_n3_n_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly995ugly1074ugly139ugly41ugly114ugly35startup_seg_n_n4_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly996ugly1061ugly30ugly80ugly113ugly76move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_n6_b_0_100)) (not_occupied seg_n6_b_0_100)
       (not (at-segment ?a seg_n6_b_0_100)) (occupied seg_n5_n6_0_100)
       (not (not_occupied seg_n5_n6_0_100)) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a)) (at-segment ?a seg_n5_n6_0_100)
       (not (blocked seg_b_27_0_100 ?a)) (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly997ugly1019ugly69ugly102ugly42ugly22startup_seg_n4_n5_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly998ugly1013ugly103ugly73ugly108ugly21startup_seg_c5_c6_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action
  ugly999ugly1006ugly135ugly59ugly110ugly103startup_seg_n_n4_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly1000ugly1060ugly131ugly124ugly40ugly106startup_seg_n2_n3_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly1001ugly989ugly31ugly83ugly129ugly31startup_seg_n6_b_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action
  ugly1002ugly1076ugly110ugly103ugly73ugly108move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_daewh) (not_occupied seg_09_0_150))
  :effect
  (and (not (occupied seg_rwy_0_1300)) (not_occupied seg_rwy_0_1300)
       (not (at-segment ?a seg_rwy_0_1300)) (occupied seg_27_0_150)
       (not (not_occupied seg_27_0_150)) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (at-segment ?a seg_27_0_150)))
 (:action ugly1003ugly1087ugly41ugly114ugly35ugly74park_seg_a02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action
  ugly1004ugly1079ugly73ugly108ugly21ugly97move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_daewh)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (occupied seg_c4_c5_0_50)) (not_occupied seg_c4_c5_0_50)
       (not (at-segment ?a seg_c4_c5_0_50)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly1005ugly1080ugly44ugly70ugly78ugly100move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_a02_0_100)) (not_occupied seg_a02_0_100)
       (not (at-segment ?a seg_a02_0_100)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action
  ugly1006ugly1114ugly47ugly119ugly120ugly81startup_seg_n2_n3_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly1007ugly1030ugly90ugly15ugly23ugly61move_seg_c2_c3_0_100_seg_c3_c_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_daewh)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (occupied seg_c2_c3_0_100)) (not_occupied seg_c2_c3_0_100)
       (not (at-segment ?a seg_c2_c3_0_100)) (occupied seg_c3_c_b01_0_100)
       (not (not_occupied seg_c3_c_b01_0_100)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly1008ugly1115ugly96ugly122ugly107ugly50move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c5_c_b02_0_100)) (not_occupied seg_c5_c_b02_0_100)
       (not (at-segment ?a seg_c5_c_b02_0_100)) (occupied seg_b02_0_100)
       (not (not_occupied seg_b02_0_100)) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a)) (at-segment ?a seg_b02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly1009ugly1083ugly119ugly120ugly81ugly123move_seg_c2_c3_0_100_seg_c3_c_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_daewh)
       (not_occupied seg_c3_c4_0_50) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (occupied seg_c2_c3_0_100)) (not_occupied seg_c2_c3_0_100)
       (not (at-segment ?a seg_c2_c3_0_100)) (occupied seg_c3_c_a01_0_100)
       (not (not_occupied seg_c3_c_a01_0_100)) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100) (not (blocked seg_c_c2_0_100 ?a))
       (not_blocked seg_c_c2_0_100 ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1010ugly1106ugly15ugly23ugly61ugly48move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n2_n3_0_85)) (not_occupied seg_n2_n3_0_85)
       (not (at-segment ?a seg_n2_n3_0_85)) (occupied seg_n2_n3_6_0_86)
       (not (not_occupied seg_n2_n3_6_0_86)) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a)) (at-segment ?a seg_n2_n3_6_0_86)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)))
 (:action
  ugly1011ugly1064ugly112ugly85ugly25ugly6startup_seg_c4_c5_0_50_north_medium
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
  ugly1012ugly1024ugly17ugly75ugly60ugly84startup_seg_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1013ugly1082ugly36ugly125ugly62ugly79move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n2_n3_6_0_86)) (not_occupied seg_n2_n3_6_0_86)
       (not (at-segment ?a seg_n2_n3_6_0_86)) (occupied seg_n2_n3_5_0_86)
       (not (not_occupied seg_n2_n3_5_0_86)) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a)) (at-segment ?a seg_n2_n3_5_0_86)
       (not (blocked seg_n2_n3_0_85 ?a)) (not_blocked seg_n2_n3_0_85 ?a)))
 (:action
  ugly1014ugly983ugly113ugly76ugly24ugly115move_seg_c3_c4_0_50_seg_c2_c3_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_daewh)
       (not_occupied seg_c3_c_a01_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (occupied seg_c3_c4_0_50)) (not_occupied seg_c3_c4_0_50)
       (not (at-segment ?a seg_c3_c4_0_50)) (occupied seg_c2_c3_0_100)
       (not (not_occupied seg_c2_c3_0_100)) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (at-segment ?a seg_c2_c3_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1015ugly1007ugly51ugly94ugly14ugly57startup_seg_n1_a_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action
  ugly1016ugly1021ugly52ugly64ugly118ugly34startup_seg_c4_c5_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c3_c4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a))))
 (:action
  ugly1017ugly1070ugly114ugly35ugly74ugly109move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n2_n3_4_0_85)) (not_occupied seg_n2_n3_4_0_85)
       (not (at-segment ?a seg_n2_n3_4_0_85)) (occupied seg_n2_n3_3_0_86)
       (not (not_occupied seg_n2_n3_3_0_86)) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a)) (at-segment ?a seg_n2_n3_3_0_86)
       (not (blocked seg_n2_n3_5_0_86 ?a)) (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action
  ugly1018ugly1068ugly50ugly53ugly71ugly28startup_seg_n4_n5_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly1019ugly1048ugly38ugly4ugly86ugly88startup_seg_n4_n5_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly1020ugly1042ugly62ugly79ugly11ugly18move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_daewh)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (occupied seg_n_n4_0_100)) (not_occupied seg_n_n4_0_100)
       (not (at-segment ?a seg_n_n4_0_100)) (occupied seg_n_c_0_100)
       (not (not_occupied seg_n_c_0_100)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a)) (at-segment ?a seg_n_c_0_100)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n4_n5_1_0_85 ?a)) (not_blocked seg_n4_n5_1_0_85 ?a)
       (blocked seg_n3_n_0_100 ?a) (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly1021ugly1031ugly53ugly71ugly28ugly138startup_seg_a02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly1022ugly1051ugly26ugly16ugly92ugly128move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n4_n5_3_0_86)) (not_occupied seg_n4_n5_3_0_86)
       (not (at-segment ?a seg_n4_n5_3_0_86)) (occupied seg_n4_n5_2_0_86)
       (not (not_occupied seg_n4_n5_2_0_86)) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a)) (at-segment ?a seg_n4_n5_2_0_86)
       (not (blocked seg_n4_n5_4_0_85 ?a)) (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action
  ugly1023ugly1035ugly46ugly47ugly119ugly120startup_seg_n5_n6_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly1024ugly996ugly82ugly72ugly134ugly68pushback_seg_c5_c6_0_50_seg_c6_c7_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c5_c6_0_50)) (not_occupied seg_c5_c6_0_50)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (at-segment ?a seg_c5_c6_0_50)) (occupied seg_c6_c7_0_100)
       (not (not_occupied seg_c6_c7_0_100)) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a)) (at-segment ?a seg_c6_c7_0_100)))
 (:action
  ugly1025ugly1040ugly67ugly136ugly8ugly67startup_seg_n4_n5_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly1026ugly1085ugly86ugly88ugly133ugly7startup_seg_c5_c_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action
  ugly1027ugly1001ugly10ugly132ugly37ugly39startup_seg_c2_c3_0_100_north_medium
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
  ugly1028ugly1043ugly107ugly50ugly53ugly71move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_daewh))
  :effect
  (and (not (occupied seg_n4_n5_5_0_86)) (not_occupied seg_n4_n5_5_0_86)
       (not (at-segment ?a seg_n4_n5_5_0_86)) (occupied seg_n4_n5_4_0_85)
       (not (not_occupied seg_n4_n5_4_0_85)) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a)) (at-segment ?a seg_n4_n5_4_0_85)
       (not (blocked seg_n4_n5_6_0_86 ?a)) (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action ugly1029ugly1105ugly117ugly12ugly117ugly12park_seg_b02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action
  ugly1030ugly1069ugly60ugly84ugly111ugly130startup_seg_n1_a_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly1031ugly1032ugly98ugly137ugly126ugly45move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_n4_n5_1_0_85)) (not_occupied seg_n4_n5_1_0_85)
       (not (at-segment ?a seg_n4_n5_1_0_85)) (occupied seg_n_n4_0_100)
       (not (not_occupied seg_n_n4_0_100)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (at-segment ?a seg_n_n4_0_100)
       (not (blocked seg_n4_n5_2_0_86 ?a)) (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action
  ugly1032ugly1077ugly8ugly67ugly136ugly8startup_seg_n2_n3_1_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly1033ugly1117ugly115ugly5ugly29ugly139move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_c6_c7_0_100)) (not_occupied seg_c6_c7_0_100)
       (not (at-segment ?a seg_c6_c7_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)))
 (:action
  ugly1034ugly991ugly129ugly31ugly83ugly129move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_daewh))
  :effect
  (and (not (occupied seg_n4_n5_2_0_86)) (not_occupied seg_n4_n5_2_0_86)
       (not (at-segment ?a seg_n4_n5_2_0_86)) (occupied seg_n4_n5_1_0_85)
       (not (not_occupied seg_n4_n5_1_0_85)) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a)) (at-segment ?a seg_n4_n5_1_0_85)
       (not (blocked seg_n4_n5_3_0_86 ?a)) (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action
  ugly1035ugly1025ugly61ugly48ugly10ugly132move_seg_c3_c_a01_0_100_seg_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_a01_0_100)
       (not_blocked seg_a01_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c3_c_a01_0_100)) (not_occupied seg_c3_c_a01_0_100)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_a01_0_100)
       (not (not_occupied seg_a01_0_100)) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a)) (at-segment ?a seg_a01_0_100)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly1036ugly1045ugly9ugly3ugly58ugly55startup_seg_n2_n3_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly1037ugly1047ugly18ugly33ugly51ugly94move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n2_n3_3_0_86)) (not_occupied seg_n2_n3_3_0_86)
       (not (at-segment ?a seg_n2_n3_3_0_86)) (occupied seg_n2_n3_2_0_86)
       (not (not_occupied seg_n2_n3_2_0_86)) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a)) (at-segment ?a seg_n2_n3_2_0_86)
       (not (blocked seg_n2_n3_4_0_85 ?a)) (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action
  ugly1038ugly1101ugly87ugly91ugly101ugly17startup_seg_n_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly1039ugly1073ugly105ugly26ugly16ugly92startup_seg_n2_n3_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly1040ugly1046ugly79ugly11ugly18ugly33move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
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
 (:action
  ugly1041ugly981ugly39ugly87ugly91ugly101move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_n1_n2_0_100)) (not_occupied seg_n1_n2_0_100)
       (not (at-segment ?a seg_n1_n2_0_100)) (occupied seg_n1_a_0_100)
       (not (not_occupied seg_n1_a_0_100)) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a)) (at-segment ?a seg_n1_a_0_100)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action
  ugly1042ugly1041ugly2ugly19ugly2ugly19move_seg_c3_c_a01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_daewh)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (occupied seg_c3_c_a01_0_100)) (not_occupied seg_c3_c_a01_0_100)
       (not (at-segment ?a seg_c3_c_a01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_a01_0_100 ?a)) (not_blocked seg_a01_0_100 ?a)
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1043ugly1086ugly25ugly6ugly95ugly98startup_seg_n4_n5_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly1044ugly1067ugly124ugly40ugly106ugly121startup_seg_c3_c_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a))))
 (:action
  ugly1045ugly988ugly121ugly93ugly140ugly77move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh)
       (not_occupied seg_c5_c6_0_50) (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (occupied seg_c4_c5_0_50)) (not_occupied seg_c4_c5_0_50)
       (not (at-segment ?a seg_c4_c5_0_50)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100) (not (blocked seg_c3_c4_0_50 ?a))
       (not_blocked seg_c3_c4_0_50 ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1046ugly1058ugly134ugly68ugly56ugly46move_seg_c3_c_b01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_daewh)
       (not_occupied seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (occupied seg_c3_c_b01_0_100)) (not_occupied seg_c3_c_b01_0_100)
       (not (at-segment ?a seg_c3_c_b01_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_b01_0_100 ?a)) (not_blocked seg_b01_0_100 ?a)
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly1047ugly997ugly40ugly106ugly121ugly93startup_seg_n4_n5_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly1048ugly1017ugly91ugly101ugly17ugly75startup_seg_a_09_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly1049ugly1107ugly118ugly34ugly96ugly122startup_seg_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1050ugly1099ugly11ugly18ugly33ugly51startup_seg_c3_c_b01_0_100_south_medium
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
  ugly1051ugly1005ugly101ugly17ugly75ugly60startup_seg_n6_b_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly1052ugly980ugly74ugly109ugly13ugly9move_seg_c3_c4_0_50_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_c3_c4_0_50)) (not_occupied seg_c3_c4_0_50)
       (not (at-segment ?a seg_c3_c4_0_50)) (occupied seg_c4_c5_0_50)
       (not (not_occupied seg_c4_c5_0_50)) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (at-segment ?a seg_c4_c5_0_50)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly1053ugly1055ugly6ugly95ugly98ugly137startup_seg_n2_n3_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly1054ugly1109ugly71ugly28ugly138ugly112startup_seg_c_c2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_c2_c3_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a))))
 (:action
  ugly1055ugly985ugly54ugly63ugly105ugly26move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_n2_n3_1_0_86)) (not_occupied seg_n2_n3_1_0_86)
       (not (at-segment ?a seg_n2_n3_1_0_86)) (occupied seg_n1_n2_0_100)
       (not (not_occupied seg_n1_n2_0_100)) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a)) (at-segment ?a seg_n1_n2_0_100)
       (not (blocked seg_n2_n3_2_0_86 ?a)) (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action
  ugly1056ugly993ugly19ugly2ugly19ugly2move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_daewh))
  :effect
  (and (not (occupied seg_a_09_0_100)) (not_occupied seg_a_09_0_100)
       (not (at-segment ?a seg_a_09_0_100)) (occupied seg_09_0_150)
       (not (not_occupied seg_09_0_150)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a)) (at-segment ?a seg_09_0_150)
       (not (blocked seg_n1_a_0_100 ?a)) (not_blocked seg_n1_a_0_100 ?a)))
 (:action ugly1057ugly1027ugly22ugly131ugly124ugly40park_seg_a01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action
  ugly1058ugly1113ugly49ugly20ugly89ugly127pushback_seg_a02_0_100_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_a02_0_100)) (not_occupied seg_a02_0_100)
       (not (blocked seg_a02_0_100 ?a)) (not_blocked seg_a02_0_100 ?a)
       (not (at-segment ?a seg_a02_0_100)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action
  ugly1059ugly1054ugly130ugly66ugly82ugly72startup_seg_n4_n5_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly1060ugly1110ugly13ugly9ugly3ugly58pushback_seg_c5_c_a02_0_100_seg_c5_c6_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_c5_c_a02_0_100)) (not_occupied seg_c5_c_a02_0_100)
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly1061ugly1009ugly104ugly135ugly59ugly110startup_seg_c6_c7_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1062ugly1002ugly97ugly52ugly64ugly118move_seg_n_c_0_100_seg_c_c2_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_c_c2_0_100)
       (not (not_occupied seg_c_c2_0_100)) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a)) (at-segment ?a seg_c_c2_0_100)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)))
 (:action
  ugly1063ugly1088ugly24ugly115ugly5ugly29startup_seg_n4_n5_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly1064ugly1091ugly65ugly27ugly104ugly135startup_seg_a_09_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action
  ugly1065ugly1104ugly78ugly100ugly38ugly4startup_seg_c_c2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly1066ugly1037ugly68ugly56ugly46ugly47startup_seg_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1067ugly1103ugly137ugly126ugly45ugly32move_seg_c2_c3_0_100_seg_c3_c4_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_daewh)
       (not_occupied seg_c3_c_a01_0_100) (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (occupied seg_c2_c3_0_100)) (not_occupied seg_c2_c3_0_100)
       (not (at-segment ?a seg_c2_c3_0_100)) (occupied seg_c3_c4_0_50)
       (not (not_occupied seg_c3_c4_0_50)) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a)) (at-segment ?a seg_c3_c4_0_50)
       (not (blocked seg_c_c2_0_100 ?a)) (not_blocked seg_c_c2_0_100 ?a)
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1068ugly1029ugly126ugly45ugly32ugly43startup_seg_b01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly1069ugly1039ugly94ugly14ugly57ugly65move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n4_n5_6_0_86)) (not_occupied seg_n4_n5_6_0_86)
       (not (at-segment ?a seg_n4_n5_6_0_86)) (occupied seg_n4_n5_5_0_86)
       (not (not_occupied seg_n4_n5_5_0_86)) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a)) (at-segment ?a seg_n4_n5_5_0_86)
       (not (blocked seg_n4_n5_0_86 ?a)) (not_blocked seg_n4_n5_0_86 ?a)))
 (:action
  ugly1070ugly1093ugly140ugly77ugly44ugly70startup_seg_n4_n5_1_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly1071ugly1036ugly66ugly82ugly72ugly134startup_seg_n2_n3_1_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly1072ugly1000ugly81ugly123ugly36ugly125startup_seg_b_27_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly1073ugly1084ugly55ugly69ugly102ugly42move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_daewh)
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
 (:action
  ugly1074ugly1118ugly80ugly113ugly76ugly24startup_seg_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly1075ugly995ugly95ugly98ugly137ugly126move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c5_c_a02_0_100)) (not_occupied seg_c5_c_a02_0_100)
       (not (at-segment ?a seg_c5_c_a02_0_100)) (occupied seg_a02_0_100)
       (not (not_occupied seg_a02_0_100)) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a)) (at-segment ?a seg_a02_0_100)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly1076ugly1089ugly20ugly89ugly127ugly54startup_seg_n1_n2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly1077ugly987ugly37ugly39ugly87ugly91startup_seg_c5_c_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action
  ugly1078ugly1090ugly99ugly49ugly20ugly89startup_seg_n2_n3_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly1079ugly1052ugly1ugly90ugly15ugly23startup_seg_b_27_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action
  ugly1080ugly1023ugly56ugly46ugly47ugly119startup_seg_b02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly1081ugly1071ugly57ugly65ugly27ugly104startup_seg_n4_n5_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly1082ugly1015ugly28ugly138ugly112ugly85move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n5_n6_0_100)) (not_occupied seg_n5_n6_0_100)
       (not (at-segment ?a seg_n5_n6_0_100)) (occupied seg_n4_n5_0_86)
       (not (not_occupied seg_n4_n5_0_86)) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a)) (at-segment ?a seg_n4_n5_0_86)
       (not (blocked seg_n6_b_0_100 ?a)) (not_blocked seg_n6_b_0_100 ?a)))
 (:action ugly1083ugly1098ugly5ugly29ugly139ugly41park_seg_b01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly1084ugly1034ugly12ugly117ugly12ugly117move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_daewh))
  :effect
  (and (not (occupied seg_n2_n3_5_0_86)) (not_occupied seg_n2_n3_5_0_86)
       (not (at-segment ?a seg_n2_n3_5_0_86)) (occupied seg_n2_n3_4_0_85)
       (not (not_occupied seg_n2_n3_4_0_85)) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a)) (at-segment ?a seg_n2_n3_4_0_85)
       (not (blocked seg_n2_n3_6_0_86 ?a)) (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action
  ugly1085ugly1065ugly125ugly62ugly79ugly11move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_n1_a_0_100)) (not_occupied seg_n1_a_0_100)
       (not (at-segment ?a seg_n1_a_0_100)) (occupied seg_a_09_0_100)
       (not (not_occupied seg_a_09_0_100)) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a)) (at-segment ?a seg_a_09_0_100)
       (not (blocked seg_n1_n2_0_100 ?a)) (not_blocked seg_n1_n2_0_100 ?a)))
 (:action
  ugly1086ugly1004ugly100ugly38ugly4ugly86startup_seg_c2_c3_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly1087ugly1020ugly63ugly105ugly26ugly16startup_seg_c3_c_a01_0_100_south_medium
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
  ugly1088ugly1003ugly108ugly21ugly97ugly52startup_seg_n1_n2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action ugly1089ugly999ugly27ugly104ugly135ugly59park_seg_a02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly1090ugly1078ugly111ugly130ugly66ugly82startup_seg_n3_n_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly1091ugly1044ugly88ugly133ugly7ugly99move_seg_c3_c_b01_0_100_seg_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_b01_0_100)
       (not_blocked seg_b01_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c3_c_b01_0_100)) (not_occupied seg_c3_c_b01_0_100)
       (not (at-segment ?a seg_c3_c_b01_0_100)) (occupied seg_b01_0_100)
       (not (not_occupied seg_b01_0_100)) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a)) (at-segment ?a seg_b01_0_100)
       (not (blocked seg_c2_c3_0_100 ?a)) (not_blocked seg_c2_c3_0_100 ?a)
       (not (blocked seg_c3_c4_0_50 ?a)) (not_blocked seg_c3_c4_0_50 ?a)
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action ugly1092ugly1063ugly109ugly13ugly9ugly3takeoff_seg_09_0_150_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly1093ugly1119ugly116ugly1ugly90ugly15move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_b_27_0_100)) (not_occupied seg_b_27_0_100)
       (not (at-segment ?a seg_b_27_0_100)) (occupied seg_n6_b_0_100)
       (not (not_occupied seg_n6_b_0_100)) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a)) (at-segment ?a seg_n6_b_0_100)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (blocked seg_27help_0_100 ?a)) (not_blocked seg_27help_0_100 ?a)))
 (:action
  ugly1094ugly1102ugly3ugly58ugly55ugly69startup_seg_c5_c_b02_0_100_south_medium
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
  ugly1095ugly986ugly35ugly74ugly109ugly13move_seg_n3_n_0_100_seg_n2_n3_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n3_n_0_100) (not_occupied seg_n2_n3_0_85)
       (not_blocked seg_n2_n3_0_85 airplane_daewh))
  :effect
  (and (not (occupied seg_n3_n_0_100)) (not_occupied seg_n3_n_0_100)
       (not (at-segment ?a seg_n3_n_0_100)) (occupied seg_n2_n3_0_85)
       (not (not_occupied seg_n2_n3_0_85)) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a)) (at-segment ?a seg_n2_n3_0_85)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly1096ugly1056ugly14ugly57ugly65ugly27startup_seg_c6_c7_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action
  ugly1097ugly1111ugly32ugly43ugly116ugly1startup_seg_c3_c4_0_50_south_medium
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
 (:action ugly1098ugly984ugly33ugly51ugly94ugly14takeoff_seg_27_0_150_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly1099ugly990ugly93ugly140ugly77ugly44startup_seg_n2_n3_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly1100ugly1049ugly128ugly30ugly80ugly113startup_seg_n_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly1101ugly1066ugly58ugly55ugly69ugly102move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_daewh)
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
  ugly1102ugly982ugly102ugly42ugly22ugly131startup_seg_n2_n3_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly1103ugly1116ugly29ugly139ugly41ugly114move_seg_c_c2_0_100_seg_c2_c3_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_c_c2_0_100)) (not_occupied seg_c_c2_0_100)
       (not (at-segment ?a seg_c_c2_0_100)) (occupied seg_c2_c3_0_100)
       (not (not_occupied seg_c2_c3_0_100)) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a)) (at-segment ?a seg_c2_c3_0_100)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly1104ugly1057ugly48ugly10ugly132ugly37move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_daewh)
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
 (:action
  ugly1105ugly1096ugly77ugly44ugly70ugly78startup_seg_c5_c_a02_0_100_south_medium
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
  ugly1106ugly994ugly59ugly110ugly103ugly73startup_seg_a01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly1107ugly1097ugly132ugly37ugly39ugly87startup_seg_c3_c_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a))))
 (:action
  ugly1108ugly1112ugly43ugly116ugly1ugly90move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_daewh))
  :effect
  (and (not (occupied seg_n2_n3_2_0_86)) (not_occupied seg_n2_n3_2_0_86)
       (not (at-segment ?a seg_n2_n3_2_0_86)) (occupied seg_n2_n3_1_0_86)
       (not (not_occupied seg_n2_n3_1_0_86)) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a)) (at-segment ?a seg_n2_n3_1_0_86)
       (not (blocked seg_n2_n3_3_0_86 ?a)) (not_blocked seg_n2_n3_3_0_86 ?a)))
 (:action
  ugly1109ugly1050ugly120ugly81ugly123ugly36startup_seg_n2_n3_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly1110ugly992ugly83ugly129ugly31ugly83startup_seg_n2_n3_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly1111ugly1011ugly85ugly25ugly6ugly95startup_seg_c5_c6_0_50_south_medium
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
  ugly1112ugly1022ugly72ugly134ugly68ugly56move_seg_b01_0_100_seg_c3_c_b01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b01_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_daewh))
  :effect
  (and (not (occupied seg_b01_0_100)) (not_occupied seg_b01_0_100)
       (not (at-segment ?a seg_b01_0_100)) (occupied seg_c3_c_b01_0_100)
       (not (not_occupied seg_c3_c_b01_0_100)) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100)))
 (:action
  ugly1113ugly1028ugly64ugly118ugly34ugly96startup_seg_n2_n3_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly1114ugly1026ugly106ugly121ugly93ugly140startup_seg_n4_n5_1_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly1115ugly1075ugly16ugly92ugly128ugly30startup_seg_n4_n5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly1116ugly1008ugly136ugly8ugly67ugly136move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_daewh)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_n3_n_0_100)
       (not (not_occupied seg_n3_n_0_100)) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (at-segment ?a seg_n3_n_0_100)
       (not (blocked seg_c_c2_0_100 ?a)) (not_blocked seg_c_c2_0_100 ?a)
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly1117ugly1094ugly123ugly36ugly125ugly62startup_seg_n4_n5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly1118ugly1059ugly75ugly60ugly84ugly111startup_seg_n2_n3_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly1119ugly1095ugly7ugly99ugly49ugly20startup_seg_c3_c4_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))) 