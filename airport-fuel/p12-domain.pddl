
(define (domain airport_fixed_structure) (:requirements :typing :action-costs)
 (:predicates (facing ?a - airplane ?d - direction) (not_occupied ?s - segment)
  (blocked ?s - segment ?a - airplane) (occupied ?s - segment)
  (at-segment ?a - airplane ?s - segment) (is-moving ?a - airplane)
  (is-pushing ?a - airplane) (not_blocked ?s - segment ?a - airplane)
  (is-start-runway ?s - segment ?d - direction)
  (is-parked ?a - airplane ?s - segment) (airborne ?a - airplane ?s - segment)
  (has-type ?a - airplane ?t - airplanetype))
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
  airplane_cfbeg airplane_dfboy - airplane)
 (:functions (total-cost) - number)
 (:action
  ugly141ugly250ugly257ugly164ugly146ugly216ugly119ugly120ugly81ugly123move_seg_c2_c3_0_100_seg_c3_c_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_dfboy)
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
  ugly142ugly235ugly278ugly196ugly166ugly253ugly121ugly93ugly140ugly77move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy)
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
  ugly143ugly158ugly219ugly141ugly250ugly257ugly24ugly115ugly5ugly29startup_seg_n4_n5_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly144ugly194ugly214ugly242ugly227ugly254ugly127ugly54ugly63ugly105move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_6_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_0_86))
       (not_occupied seg_n4_n5_0_86) (not (at-segment ?a seg_n4_n5_0_86))
       (occupied seg_n4_n5_6_0_86) (not (not_occupied seg_n4_n5_6_0_86))
       (blocked seg_n4_n5_6_0_86 ?a) (not (not_blocked seg_n4_n5_6_0_86 ?a))
       (at-segment ?a seg_n4_n5_6_0_86) (not (blocked seg_n5_n6_0_100 ?a))
       (not_blocked seg_n5_n6_0_100 ?a)))
 (:action
  ugly145ugly275ugly185ugly262ugly184ugly159ugly64ugly118ugly34ugly96startup_seg_n2_n3_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly146ugly216ugly259ugly176ugly177ugly169ugly133ugly7ugly99ugly49move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_cfbeg)
       (not_blocked seg_rwy_0_1300 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_09_0_150))
       (not_occupied seg_09_0_150) (not (at-segment ?a seg_09_0_150))
       (occupied seg_rwy_0_1300) (not (not_occupied seg_rwy_0_1300))
       (blocked seg_rwy_0_1300 ?a) (not (not_blocked seg_rwy_0_1300 ?a))
       (at-segment ?a seg_rwy_0_1300) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly147ugly251ugly228ugly173ugly180ugly209ugly35ugly74ugly109ugly13move_seg_n3_n_0_100_seg_n2_n3_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n3_n_0_100) (not_occupied seg_n2_n3_0_85)
       (not_blocked seg_n2_n3_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_0_85 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n3_n_0_100))
       (not_occupied seg_n3_n_0_100) (not (at-segment ?a seg_n3_n_0_100))
       (occupied seg_n2_n3_0_85) (not (not_occupied seg_n2_n3_0_85))
       (blocked seg_n2_n3_0_85 ?a) (not (not_blocked seg_n2_n3_0_85 ?a))
       (at-segment ?a seg_n2_n3_0_85) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly148ugly221ugly152ugly256ugly168ugly154ugly77ugly44ugly70ugly78startup_seg_c5_c_a02_0_100_south_medium
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
  ugly149ugly197ugly195ugly199ugly188ugly202ugly129ugly31ugly83ugly129move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_1_0_85 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_2_0_86))
       (not_occupied seg_n4_n5_2_0_86) (not (at-segment ?a seg_n4_n5_2_0_86))
       (occupied seg_n4_n5_1_0_85) (not (not_occupied seg_n4_n5_1_0_85))
       (blocked seg_n4_n5_1_0_85 ?a) (not (not_blocked seg_n4_n5_1_0_85 ?a))
       (at-segment ?a seg_n4_n5_1_0_85) (not (blocked seg_n4_n5_3_0_86 ?a))
       (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action
  ugly150ugly182ugly260ugly231ugly189ugly244ugly131ugly124ugly40ugly106startup_seg_n2_n3_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly151ugly279ugly215ugly248ugly241ugly224ugly123ugly36ugly125ugly62startup_seg_n4_n5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly152ugly256ugly168ugly154ugly217ugly163ugly136ugly8ugly67ugly136move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_cfbeg)
       (not_blocked seg_n3_n_0_100 airplane_dfboy)
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
  ugly153ugly145ugly275ugly185ugly262ugly184ugly19ugly2ugly19ugly2move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_cfbeg)
       (not_blocked seg_09_0_150 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a_09_0_100))
       (not_occupied seg_a_09_0_100) (not (at-segment ?a seg_a_09_0_100))
       (occupied seg_09_0_150) (not (not_occupied seg_09_0_150))
       (blocked seg_09_0_150 ?a) (not (not_blocked seg_09_0_150 ?a))
       (at-segment ?a seg_09_0_150) (not (blocked seg_n1_a_0_100 ?a))
       (not_blocked seg_n1_a_0_100 ?a)))
 (:action
  ugly154ugly217ugly163ugly276ugly174ugly265ugly2ugly19ugly2ugly19move_seg_c3_c_a01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
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
  ugly155ugly149ugly197ugly195ugly199ugly188ugly62ugly79ugly11ugly18move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_dfboy)
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
  ugly156ugly212ugly157ugly208ugly240ugly198ugly112ugly85ugly25ugly6startup_seg_c4_c5_0_50_north_medium
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
  ugly157ugly208ugly240ugly198ugly252ugly210ugly98ugly137ugly126ugly45move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_cfbeg)
       (not_blocked seg_n_n4_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_1_0_85))
       (not_occupied seg_n4_n5_1_0_85) (not (at-segment ?a seg_n4_n5_1_0_85))
       (occupied seg_n_n4_0_100) (not (not_occupied seg_n_n4_0_100))
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))
       (at-segment ?a seg_n_n4_0_100) (not (blocked seg_n4_n5_2_0_86 ?a))
       (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action
  ugly158ugly219ugly141ugly250ugly257ugly164ugly6ugly95ugly98ugly137startup_seg_n2_n3_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly159ugly204ugly264ugly181ugly144ugly194ugly74ugly109ugly13ugly9move_seg_c3_c4_0_50_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy))
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
  ugly160ugly268ugly183ugly255ugly226ugly160ugly128ugly30ugly80ugly113startup_seg_n_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly161ugly236ugly155ugly149ugly197ugly195ugly59ugly110ugly103ugly73startup_seg_a01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)
       (not_occupied seg_c3_c_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))))
 (:action
  ugly162ugly170ugly206ugly247ugly150ugly182ugly120ugly81ugly123ugly36startup_seg_n2_n3_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly163ugly276ugly174ugly265ugly142ugly235ugly138ugly112ugly85ugly25move_seg_c2_c3_0_100_seg_c_c2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
       (not_blocked seg_c_c2_0_100 airplane_dfboy))
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
  ugly164ugly146ugly216ugly259ugly176ugly177ugly29ugly139ugly41ugly114move_seg_c_c2_0_100_seg_c2_c3_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
       (not_blocked seg_c2_c3_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_c2_c3_0_100) (not (not_occupied seg_c2_c3_0_100))
       (blocked seg_c2_c3_0_100 ?a) (not (not_blocked seg_c2_c3_0_100 ?a))
       (at-segment ?a seg_c2_c3_0_100) (not (blocked seg_n_c_0_100 ?a))
       (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly165ugly201ugly193ugly186ugly234ugly232ugly63ugly105ugly26ugly16startup_seg_c3_c_a01_0_100_south_medium
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
  ugly166ugly253ugly261ugly243ugly230ugly179ugly47ugly119ugly120ugly81startup_seg_n2_n3_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly167ugly151ugly279ugly215ugly248ugly241ugly84ugly111ugly130ugly66startup_seg_n5_n6_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly168ugly154ugly217ugly163ugly276ugly174ugly125ugly62ugly79ugly11move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_cfbeg)
       (not_blocked seg_a_09_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_a_0_100))
       (not_occupied seg_n1_a_0_100) (not (at-segment ?a seg_n1_a_0_100))
       (occupied seg_a_09_0_100) (not (not_occupied seg_a_09_0_100))
       (blocked seg_a_09_0_100 ?a) (not (not_blocked seg_a_09_0_100 ?a))
       (at-segment ?a seg_a_09_0_100) (not (blocked seg_n1_n2_0_100 ?a))
       (not_blocked seg_n1_n2_0_100 ?a)))
 (:action
  ugly169ugly273ugly178ugly148ugly221ugly152ugly116ugly1ugly90ugly15move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_cfbeg)
       (not_blocked seg_n6_b_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b_27_0_100))
       (not_occupied seg_b_27_0_100) (not (at-segment ?a seg_b_27_0_100))
       (occupied seg_n6_b_0_100) (not (not_occupied seg_n6_b_0_100))
       (blocked seg_n6_b_0_100 ?a) (not (not_blocked seg_n6_b_0_100 ?a))
       (at-segment ?a seg_n6_b_0_100) (not (blocked seg_27_0_150 ?a))
       (not_blocked seg_27_0_150 ?a) (not (blocked seg_27help_0_100 ?a))
       (not_blocked seg_27help_0_100 ?a)))
 (:action
  ugly170ugly206ugly247ugly150ugly182ugly260ugly91ugly101ugly17ugly75startup_seg_a_09_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly171ugly246ugly237ugly233ugly143ugly158ugly79ugly11ugly18ugly33move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
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
  ugly172ugly266ugly249ugly165ugly201ugly193ugly46ugly47ugly119ugly120startup_seg_n5_n6_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly173ugly180ugly209ugly175ugly172ugly266ugly109ugly13ugly9ugly3takeoff_seg_09_0_150_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly174ugly265ugly142ugly235ugly278ugly196ugly26ugly16ugly92ugly128move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_2_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_3_0_86))
       (not_occupied seg_n4_n5_3_0_86) (not (at-segment ?a seg_n4_n5_3_0_86))
       (occupied seg_n4_n5_2_0_86) (not (not_occupied seg_n4_n5_2_0_86))
       (blocked seg_n4_n5_2_0_86 ?a) (not (not_blocked seg_n4_n5_2_0_86 ?a))
       (at-segment ?a seg_n4_n5_2_0_86) (not (blocked seg_n4_n5_4_0_85 ?a))
       (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action
  ugly175ugly172ugly266ugly249ugly165ugly201ugly53ugly71ugly28ugly138startup_seg_a02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly176ugly177ugly169ugly273ugly178ugly148ugly81ugly123ugly36ugly125startup_seg_b_27_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly177ugly169ugly273ugly178ugly148ugly221ugly12ugly117ugly12ugly117move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_4_0_85 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_5_0_86))
       (not_occupied seg_n2_n3_5_0_86) (not (at-segment ?a seg_n2_n3_5_0_86))
       (occupied seg_n2_n3_4_0_85) (not (not_occupied seg_n2_n3_4_0_85))
       (blocked seg_n2_n3_4_0_85 ?a) (not (not_blocked seg_n2_n3_4_0_85 ?a))
       (at-segment ?a seg_n2_n3_4_0_85) (not (blocked seg_n2_n3_6_0_86 ?a))
       (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action
  ugly178ugly148ugly221ugly152ugly256ugly168ugly14ugly57ugly65ugly27startup_seg_c6_c7_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action
  ugly179ugly187ugly167ugly151ugly279ugly215ugly108ugly21ugly97ugly52startup_seg_n1_n2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly180ugly209ugly175ugly172ugly266ugly249ugly25ugly6ugly95ugly98startup_seg_n4_n5_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly181ugly144ugly194ugly214ugly242ugly227ugly114ugly35ugly74ugly109move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_3_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_4_0_85))
       (not_occupied seg_n2_n3_4_0_85) (not (at-segment ?a seg_n2_n3_4_0_85))
       (occupied seg_n2_n3_3_0_86) (not (not_occupied seg_n2_n3_3_0_86))
       (blocked seg_n2_n3_3_0_86 ?a) (not (not_blocked seg_n2_n3_3_0_86 ?a))
       (at-segment ?a seg_n2_n3_3_0_86) (not (blocked seg_n2_n3_5_0_86 ?a))
       (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action
  ugly182ugly260ugly231ugly189ugly244ugly271ugly82ugly72ugly134ugly68pushback_seg_c5_c6_0_50_seg_c6_c7_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_c5_c6_0_50)) (not_occupied seg_c5_c6_0_50)
       (not (blocked seg_c5_c6_0_50 ?a)) (not_blocked seg_c5_c6_0_50 ?a)
       (not (at-segment ?a seg_c5_c6_0_50)) (occupied seg_c6_c7_0_100)
       (not (not_occupied seg_c6_c7_0_100)) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a)) (at-segment ?a seg_c6_c7_0_100)))
 (:action
  ugly183ugly255ugly226ugly160ugly268ugly183ugly115ugly5ugly29ugly139move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c6_c7_0_100))
       (not_occupied seg_c6_c7_0_100) (not (at-segment ?a seg_c6_c7_0_100))
       (occupied seg_c5_c6_0_50) (not (not_occupied seg_c5_c6_0_50))
       (blocked seg_c5_c6_0_50 ?a) (not (not_blocked seg_c5_c6_0_50 ?a))
       (at-segment ?a seg_c5_c6_0_50)))
 (:action
  ugly184ugly159ugly204ugly264ugly181ugly144ugly54ugly63ugly105ugly26move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_cfbeg)
       (not_blocked seg_n1_n2_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_1_0_86))
       (not_occupied seg_n2_n3_1_0_86) (not (at-segment ?a seg_n2_n3_1_0_86))
       (occupied seg_n1_n2_0_100) (not (not_occupied seg_n1_n2_0_100))
       (blocked seg_n1_n2_0_100 ?a) (not (not_blocked seg_n1_n2_0_100 ?a))
       (at-segment ?a seg_n1_n2_0_100) (not (blocked seg_n2_n3_2_0_86 ?a))
       (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action
  ugly185ugly262ugly184ugly159ugly204ugly264ugly41ugly114ugly35ugly74park_seg_a02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action
  ugly186ugly234ugly232ugly203ugly147ugly251ugly88ugly133ugly7ugly99move_seg_c3_c_b01_0_100_seg_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_b01_0_100)
       (not_blocked seg_b01_0_100 airplane_cfbeg)
       (not_blocked seg_b01_0_100 airplane_dfboy))
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
  ugly187ugly167ugly151ugly279ugly215ugly248ugly101ugly17ugly75ugly60startup_seg_n6_b_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly188ugly202ugly269ugly190ugly258ugly239ugly134ugly68ugly56ugly46move_seg_c3_c_b01_0_100_seg_c3_c4_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c_b01_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
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
  ugly189ugly244ugly271ugly222ugly205ugly225ugly78ugly100ugly38ugly4startup_seg_c_c2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly190ugly258ugly239ugly274ugly223ugly191ugly67ugly136ugly8ugly67startup_seg_n4_n5_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly191ugly207ugly211ugly153ugly145ugly275ugly45ugly32ugly43ugly116move_seg_a01_0_100_seg_c3_c_a01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a01_0_100) (not_occupied seg_c3_c_a01_0_100)
       (not_blocked seg_c3_c_a01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_a01_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a01_0_100))
       (not_occupied seg_a01_0_100) (not (at-segment ?a seg_a01_0_100))
       (occupied seg_c3_c_a01_0_100) (not (not_occupied seg_c3_c_a01_0_100))
       (blocked seg_c3_c_a01_0_100 ?a)
       (not (not_blocked seg_c3_c_a01_0_100 ?a))
       (at-segment ?a seg_c3_c_a01_0_100)))
 (:action
  ugly192ugly156ugly212ugly157ugly208ugly240ugly58ugly55ugly69ugly102move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy)
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
  ugly193ugly186ugly234ugly232ugly203ugly147ugly111ugly130ugly66ugly82startup_seg_n3_n_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly194ugly214ugly242ugly227ugly254ugly267ugly31ugly83ugly129ugly31startup_seg_n6_b_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action
  ugly195ugly199ugly188ugly202ugly269ugly190ugly118ugly34ugly96ugly122startup_seg_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly196ugly166ugly253ugly261ugly243ugly230ugly39ugly87ugly91ugly101move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_cfbeg)
       (not_blocked seg_n1_a_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n1_n2_0_100))
       (not_occupied seg_n1_n2_0_100) (not (at-segment ?a seg_n1_n2_0_100))
       (occupied seg_n1_a_0_100) (not (not_occupied seg_n1_a_0_100))
       (blocked seg_n1_a_0_100 ?a) (not (not_blocked seg_n1_a_0_100 ?a))
       (at-segment ?a seg_n1_a_0_100) (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action
  ugly197ugly195ugly199ugly188ugly202ugly269ugly50ugly53ugly71ugly28startup_seg_n4_n5_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly198ugly252ugly210ugly238ugly213ugly162ugly30ugly80ugly113ugly76move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_cfbeg)
       (not_blocked seg_n5_n6_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n6_b_0_100))
       (not_occupied seg_n6_b_0_100) (not (at-segment ?a seg_n6_b_0_100))
       (occupied seg_n5_n6_0_100) (not (not_occupied seg_n5_n6_0_100))
       (blocked seg_n5_n6_0_100 ?a) (not (not_blocked seg_n5_n6_0_100 ?a))
       (at-segment ?a seg_n5_n6_0_100) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly199ugly188ugly202ugly269ugly190ugly258ugly99ugly49ugly20ugly89startup_seg_n2_n3_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly200ugly245ugly277ugly220ugly192ugly156ugly72ugly134ugly68ugly56move_seg_b01_0_100_seg_c3_c_b01_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b01_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_b01_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b01_0_100))
       (not_occupied seg_b01_0_100) (not (at-segment ?a seg_b01_0_100))
       (occupied seg_c3_c_b01_0_100) (not (not_occupied seg_c3_c_b01_0_100))
       (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))
       (at-segment ?a seg_c3_c_b01_0_100)))
 (:action
  ugly201ugly193ugly186ugly234ugly232ugly203ugly7ugly99ugly49ugly20startup_seg_c3_c4_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c4_0_50)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))
 (:action
  ugly202ugly269ugly190ugly258ugly239ugly274ugly83ugly129ugly31ugly83startup_seg_n2_n3_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly203ugly147ugly251ugly228ugly173ugly180ugly69ugly102ugly42ugly22startup_seg_n4_n5_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly204ugly264ugly181ugly144ugly194ugly214ugly102ugly42ugly22ugly131startup_seg_n2_n3_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly205ugly225ugly218ugly161ugly236ugly155ugly9ugly3ugly58ugly55startup_seg_n2_n3_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly206ugly247ugly150ugly182ugly260ugly231ugly49ugly20ugly89ugly127pushback_seg_b02_0_100_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (blocked seg_b02_0_100 ?a)) (not_blocked seg_b02_0_100 ?a)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly207ugly211ugly153ugly145ugly275ugly185ugly122ugly107ugly50ugly53startup_seg_n3_n_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly208ugly240ugly198ugly252ugly210ugly238ugly73ugly108ugly21ugly97move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy)
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
  ugly209ugly175ugly172ugly266ugly249ugly165ugly61ugly48ugly10ugly132move_seg_c3_c_a01_0_100_seg_a01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c3_c_a01_0_100) (not_occupied seg_a01_0_100)
       (not_blocked seg_a01_0_100 airplane_cfbeg)
       (not_blocked seg_a01_0_100 airplane_dfboy))
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
  ugly210ugly238ugly213ugly162ugly170ugly206ugly107ugly50ugly53ugly71move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_4_0_85 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_5_0_86))
       (not_occupied seg_n4_n5_5_0_86) (not (at-segment ?a seg_n4_n5_5_0_86))
       (occupied seg_n4_n5_4_0_85) (not (not_occupied seg_n4_n5_4_0_85))
       (blocked seg_n4_n5_4_0_85 ?a) (not (not_blocked seg_n4_n5_4_0_85 ?a))
       (at-segment ?a seg_n4_n5_4_0_85) (not (blocked seg_n4_n5_6_0_86 ?a))
       (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action
  ugly211ugly153ugly145ugly275ugly185ugly262ugly44ugly70ugly78ugly100move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_a02_0_100))
       (not_occupied seg_a02_0_100) (not (at-segment ?a seg_a02_0_100))
       (occupied seg_c5_c_a02_0_100) (not (not_occupied seg_c5_c_a02_0_100))
       (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action
  ugly212ugly157ugly208ugly240ugly198ugly252ugly70ugly78ugly100ugly38move_seg_c4_c5_0_50_seg_c3_c4_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy))
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
  ugly213ugly162ugly170ugly206ugly247ugly150ugly42ugly22ugly131ugly124move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
       (not_blocked seg_c6_c7_0_100 airplane_dfboy))
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
  ugly214ugly242ugly227ugly254ugly267ugly171ugly106ugly121ugly93ugly140startup_seg_n4_n5_1_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly215ugly248ugly241ugly224ugly263ugly270ugly89ugly127ugly54ugly63park_seg_a01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))))
 (:action
  ugly216ugly259ugly176ugly177ugly169ugly273ugly38ugly4ugly86ugly88startup_seg_n4_n5_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly217ugly163ugly276ugly174ugly265ugly142ugly95ugly98ugly137ugly126move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_cfbeg)
       (not_blocked seg_a02_0_100 airplane_dfboy))
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
  ugly218ugly161ugly236ugly155ugly149ugly197ugly55ugly69ugly102ugly42move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_cfbeg)
       (not_blocked seg_b_27_0_100 airplane_dfboy)
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
  ugly219ugly141ugly250ugly257ugly164ugly146ugly76ugly24ugly115ugly5move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_3_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_4_0_85))
       (not_occupied seg_n4_n5_4_0_85) (not (at-segment ?a seg_n4_n5_4_0_85))
       (occupied seg_n4_n5_3_0_86) (not (not_occupied seg_n4_n5_3_0_86))
       (blocked seg_n4_n5_3_0_86 ?a) (not (not_blocked seg_n4_n5_3_0_86 ?a))
       (at-segment ?a seg_n4_n5_3_0_86) (not (blocked seg_n4_n5_5_0_86 ?a))
       (not_blocked seg_n4_n5_5_0_86 ?a)))
 (:action
  ugly220ugly192ugly156ugly212ugly157ugly208ugly100ugly38ugly4ugly86startup_seg_c2_c3_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c2_c3_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly221ugly152ugly256ugly168ugly154ugly217ugly23ugly61ugly48ugly10startup_seg_n4_n5_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly222ugly205ugly225ugly218ugly161ugly236ugly15ugly23ugly61ugly48move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_6_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_0_85))
       (not_occupied seg_n2_n3_0_85) (not (at-segment ?a seg_n2_n3_0_85))
       (occupied seg_n2_n3_6_0_86) (not (not_occupied seg_n2_n3_6_0_86))
       (blocked seg_n2_n3_6_0_86 ?a) (not (not_blocked seg_n2_n3_6_0_86 ?a))
       (at-segment ?a seg_n2_n3_6_0_86) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a)))
 (:action
  ugly223ugly191ugly207ugly211ugly153ugly145ugly135ugly59ugly110ugly103startup_seg_n_n4_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly224ugly263ugly270ugly229ugly200ugly245ugly137ugly126ugly45ugly32move_seg_c2_c3_0_100_seg_c3_c4_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c4_0_50)
       (not_blocked seg_c3_c4_0_50 airplane_cfbeg)
       (not_blocked seg_c3_c4_0_50 airplane_dfboy)
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
  ugly225ugly218ugly161ugly236ugly155ugly149ugly57ugly65ugly27ugly104startup_seg_n4_n5_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly226ugly160ugly268ugly183ugly255ugly226ugly20ugly89ugly127ugly54startup_seg_n1_n2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly227ugly254ugly267ugly171ugly246ugly237ugly93ugly140ugly77ugly44startup_seg_n2_n3_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly228ugly173ugly180ugly209ugly175ugly172ugly126ugly45ugly32ugly43startup_seg_b01_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)
       (not_occupied seg_c3_c_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c_b01_0_100 ?a)
       (not (not_blocked seg_c3_c_b01_0_100 ?a))))
 (:action
  ugly229ugly200ugly245ugly277ugly220ugly192ugly16ugly92ugly128ugly30startup_seg_n4_n5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly230ugly179ugly187ugly167ugly151ugly279ugly75ugly60ugly84ugly111startup_seg_n2_n3_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly231ugly189ugly244ugly271ugly222ugly205ugly85ugly25ugly6ugly95startup_seg_c5_c6_0_50_south_medium
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
  ugly232ugly203ugly147ugly251ugly228ugly173ugly40ugly106ugly121ugly93startup_seg_n4_n5_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly233ugly143ugly158ugly219ugly141ugly250ugly117ugly12ugly117ugly12park_seg_b02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action
  ugly234ugly232ugly203ugly147ugly251ugly228ugly33ugly51ugly94ugly14takeoff_seg_27_0_150_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly235ugly278ugly196ugly166ugly253ugly261ugly103ugly73ugly108ugly21startup_seg_c5_c6_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action
  ugly236ugly155ugly149ugly197ugly195ugly199ugly48ugly10ugly132ugly37move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy)
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
  ugly237ugly233ugly143ugly158ugly219ugly141ugly110ugly103ugly73ugly108move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_cfbeg)
       (not_blocked seg_27_0_150 airplane_dfboy) (not_occupied seg_09_0_150))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_rwy_0_1300))
       (not_occupied seg_rwy_0_1300) (not (at-segment ?a seg_rwy_0_1300))
       (occupied seg_27_0_150) (not (not_occupied seg_27_0_150))
       (blocked seg_27_0_150 ?a) (not (not_blocked seg_27_0_150 ?a))
       (at-segment ?a seg_27_0_150)))
 (:action
  ugly238ugly213ugly162ugly170ugly206ugly247ugly10ugly132ugly37ugly39startup_seg_c2_c3_0_100_north_medium
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
  ugly239ugly274ugly223ugly191ugly207ugly211ugly13ugly9ugly3ugly58pushback_seg_c5_c_b02_0_100_seg_c5_c6_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
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
  ugly240ugly198ugly252ugly210ugly238ugly213ugly22ugly131ugly124ugly40park_seg_a01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_a01_0_100 ?a))
       (not_blocked seg_c3_c_a01_0_100 ?a)))
 (:action
  ugly241ugly224ugly263ugly270ugly229ugly200ugly105ugly26ugly16ugly92startup_seg_n2_n3_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly242ugly227ugly254ugly267ugly171ugly246ugly97ugly52ugly64ugly118move_seg_n_c_0_100_seg_c_c2_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_0_100)
       (not_blocked seg_c_c2_0_100 airplane_cfbeg)
       (not_blocked seg_c_c2_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n_c_0_100))
       (not_occupied seg_n_c_0_100) (not (at-segment ?a seg_n_c_0_100))
       (occupied seg_c_c2_0_100) (not (not_occupied seg_c_c2_0_100))
       (blocked seg_c_c2_0_100 ?a) (not (not_blocked seg_c_c2_0_100 ?a))
       (at-segment ?a seg_c_c2_0_100) (not (blocked seg_n3_n_0_100 ?a))
       (not_blocked seg_n3_n_0_100 ?a) (not (blocked seg_n_n4_0_100 ?a))
       (not_blocked seg_n_n4_0_100 ?a)))
 (:action
  ugly243ugly230ugly179ugly187ugly167ugly151ugly139ugly41ugly114ugly35startup_seg_n_n4_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly244ugly271ugly222ugly205ugly225ugly218ugly21ugly97ugly52ugly64park_seg_b02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly245ugly277ugly220ugly192ugly156ugly212ugly17ugly75ugly60ugly84startup_seg_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly246ugly237ugly233ugly143ugly158ugly219ugly1ugly90ugly15ugly23startup_seg_b_27_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action
  ugly247ugly150ugly182ugly260ugly231ugly189ugly104ugly135ugly59ugly110startup_seg_c6_c7_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly248ugly241ugly224ugly263ugly270ugly229ugly60ugly84ugly111ugly130startup_seg_n1_a_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly249ugly165ugly201ugly193ugly186ugly234ugly92ugly128ugly30ugly80park_seg_b01_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))))
 (:action
  ugly250ugly257ugly164ugly146ugly216ugly259ugly36ugly125ugly62ugly79move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_5_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_6_0_86))
       (not_occupied seg_n2_n3_6_0_86) (not (at-segment ?a seg_n2_n3_6_0_86))
       (occupied seg_n2_n3_5_0_86) (not (not_occupied seg_n2_n3_5_0_86))
       (blocked seg_n2_n3_5_0_86 ?a) (not (not_blocked seg_n2_n3_5_0_86 ?a))
       (at-segment ?a seg_n2_n3_5_0_86) (not (blocked seg_n2_n3_0_85 ?a))
       (not_blocked seg_n2_n3_0_85 ?a)))
 (:action
  ugly251ugly228ugly173ugly180ugly209ugly175ugly32ugly43ugly116ugly1startup_seg_c3_c4_0_50_south_medium
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
  ugly252ugly210ugly238ugly213ugly162ugly170ugly66ugly82ugly72ugly134startup_seg_n2_n3_1_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly253ugly261ugly243ugly230ugly179ugly187ugly27ugly104ugly135ugly59park_seg_a02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly254ugly267ugly171ugly246ugly237ugly233ugly3ugly58ugly55ugly69startup_seg_c5_c_b02_0_100_south_medium
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
  ugly255ugly226ugly160ugly268ugly183ugly255ugly86ugly88ugly133ugly7startup_seg_c5_c_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action
  ugly256ugly168ugly154ugly217ugly163ugly276ugly34ugly96ugly122ugly107move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_b02_0_100))
       (not_occupied seg_b02_0_100) (not (at-segment ?a seg_b02_0_100))
       (occupied seg_c5_c_b02_0_100) (not (not_occupied seg_c5_c_b02_0_100))
       (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly257ugly164ugly146ugly216ugly259ugly176ugly37ugly39ugly87ugly91startup_seg_c5_c_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action
  ugly258ugly239ugly274ugly223ugly191ugly207ugly71ugly28ugly138ugly112startup_seg_c_c2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_100)
       (not_occupied seg_c2_c3_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c2_c3_0_100 ?a)
       (not (not_blocked seg_c2_c3_0_100 ?a))))
 (:action
  ugly259ugly176ugly177ugly169ugly273ugly178ugly8ugly67ugly136ugly8startup_seg_n2_n3_1_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly260ugly231ugly189ugly244ugly271ugly222ugly65ugly27ugly104ugly135startup_seg_a_09_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action
  ugly261ugly243ugly230ugly179ugly187ugly167ugly11ugly18ugly33ugly51startup_seg_c3_c_b01_0_100_south_medium
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
  ugly262ugly184ugly159ugly204ugly264ugly181ugly4ugly86ugly88ugly133move_seg_c_c2_0_100_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_c_c2_0_100))
       (not_occupied seg_c_c2_0_100) (not (at-segment ?a seg_c_c2_0_100))
       (occupied seg_n_c_0_100) (not (not_occupied seg_n_c_0_100))
       (blocked seg_n_c_0_100 ?a) (not (not_blocked seg_n_c_0_100 ?a))
       (at-segment ?a seg_n_c_0_100) (not (blocked seg_c2_c3_0_100 ?a))
       (not_blocked seg_c2_c3_0_100 ?a)))
 (:action
  ugly263ugly270ugly229ugly200ugly245ugly277ugly80ugly113ugly76ugly24startup_seg_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b01_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly264ugly181ugly144ugly194ugly214ugly242ugly87ugly91ugly101ugly17startup_seg_n_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_100 ?a)
       (not (not_blocked seg_c_c2_0_100 ?a))))
 (:action
  ugly265ugly142ugly235ugly278ugly196ugly166ugly113ugly76ugly24ugly115move_seg_c3_c4_0_50_seg_c2_c3_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c3_c4_0_50) (not_occupied seg_c2_c3_0_100)
       (not_blocked seg_c2_c3_0_100 airplane_cfbeg)
       (not_blocked seg_c2_c3_0_100 airplane_dfboy)
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
  ugly266ugly249ugly165ugly201ugly193ugly186ugly94ugly14ugly57ugly65move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_5_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n4_n5_6_0_86))
       (not_occupied seg_n4_n5_6_0_86) (not (at-segment ?a seg_n4_n5_6_0_86))
       (occupied seg_n4_n5_5_0_86) (not (not_occupied seg_n4_n5_5_0_86))
       (blocked seg_n4_n5_5_0_86 ?a) (not (not_blocked seg_n4_n5_5_0_86 ?a))
       (at-segment ?a seg_n4_n5_5_0_86) (not (blocked seg_n4_n5_0_86 ?a))
       (not_blocked seg_n4_n5_0_86 ?a)))
 (:action
  ugly267ugly171ugly246ugly237ugly233ugly143ugly18ugly33ugly51ugly94move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_2_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_3_0_86))
       (not_occupied seg_n2_n3_3_0_86) (not (at-segment ?a seg_n2_n3_3_0_86))
       (occupied seg_n2_n3_2_0_86) (not (not_occupied seg_n2_n3_2_0_86))
       (blocked seg_n2_n3_2_0_86 ?a) (not (not_blocked seg_n2_n3_2_0_86 ?a))
       (at-segment ?a seg_n2_n3_2_0_86) (not (blocked seg_n2_n3_4_0_85 ?a))
       (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action
  ugly268ugly183ugly255ugly226ugly160ugly268ugly43ugly116ugly1ugly90move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_1_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n2_n3_2_0_86))
       (not_occupied seg_n2_n3_2_0_86) (not (at-segment ?a seg_n2_n3_2_0_86))
       (occupied seg_n2_n3_1_0_86) (not (not_occupied seg_n2_n3_1_0_86))
       (blocked seg_n2_n3_1_0_86 ?a) (not (not_blocked seg_n2_n3_1_0_86 ?a))
       (at-segment ?a seg_n2_n3_1_0_86) (not (blocked seg_n2_n3_3_0_86 ?a))
       (not_blocked seg_n2_n3_3_0_86 ?a)))
 (:action
  ugly269ugly190ugly258ugly239ugly274ugly223ugly51ugly94ugly14ugly57startup_seg_n1_a_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action
  ugly270ugly229ugly200ugly245ugly277ugly220ugly52ugly64ugly118ugly34startup_seg_c4_c5_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c3_c4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c3_c4_0_50 ?a)
       (not (not_blocked seg_c3_c4_0_50 ?a))))
 (:action
  ugly271ugly222ugly205ugly225ugly218ugly161ugly96ugly122ugly107ugly50move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_cfbeg)
       (not_blocked seg_b02_0_100 airplane_dfboy))
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
  ugly272ugly272ugly272ugly272ugly272ugly272ugly132ugly37ugly39ugly87startup_seg_c3_c_a01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_a01_0_100)
       (not_occupied seg_a01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a01_0_100 ?a)
       (not (not_blocked seg_a01_0_100 ?a))))
 (:action
  ugly273ugly178ugly148ugly221ugly152ugly256ugly28ugly138ugly112ugly85move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_0_86 airplane_dfboy))
  :effect
  (and (increase (total-cost) 1) (not (occupied seg_n5_n6_0_100))
       (not_occupied seg_n5_n6_0_100) (not (at-segment ?a seg_n5_n6_0_100))
       (occupied seg_n4_n5_0_86) (not (not_occupied seg_n4_n5_0_86))
       (blocked seg_n4_n5_0_86 ?a) (not (not_blocked seg_n4_n5_0_86 ?a))
       (at-segment ?a seg_n4_n5_0_86) (not (blocked seg_n6_b_0_100 ?a))
       (not_blocked seg_n6_b_0_100 ?a)))
 (:action
  ugly274ugly223ugly191ugly207ugly211ugly153ugly5ugly29ugly139ugly41park_seg_b01_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b01_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b01_0_100) (not (is-moving ?a))
       (not (blocked seg_c3_c_b01_0_100 ?a))
       (not_blocked seg_c3_c_b01_0_100 ?a)))
 (:action
  ugly275ugly185ugly262ugly184ugly159ugly204ugly124ugly40ugly106ugly121startup_seg_c3_c_b01_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c3_c_b01_0_100)
       (not_occupied seg_b01_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b01_0_100 ?a)
       (not (not_blocked seg_b01_0_100 ?a))))
 (:action
  ugly276ugly174ugly265ugly142ugly235ugly278ugly56ugly46ugly47ugly119startup_seg_b02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly277ugly220ugly192ugly156ugly212ugly157ugly68ugly56ugly46ugly47startup_seg_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly278ugly196ugly166ugly253ugly261ugly243ugly90ugly15ugly23ugly61move_seg_c2_c3_0_100_seg_c3_c_b01_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c2_c3_0_100) (not_occupied seg_c3_c_b01_0_100)
       (not_blocked seg_c3_c_b01_0_100 airplane_cfbeg)
       (not_blocked seg_c3_c_b01_0_100 airplane_dfboy)
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
  ugly279ugly215ugly248ugly241ugly224ugly263ugly130ugly66ugly82ugly72startup_seg_n4_n5_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly280ugly280ugly280ugly280ugly280ugly280ugly140ugly77ugly44ugly70startup_seg_n4_n5_1_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))) 