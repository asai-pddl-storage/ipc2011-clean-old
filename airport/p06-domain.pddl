
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (blocked ?s - segment ?a - airplane)
  (is-start-runway ?s - segment ?d - direction) (is-pushing ?a - airplane)
  (airborne ?a - airplane ?s - segment) (is-moving ?a - airplane)
  (facing ?a - airplane ?d - direction) (is-parked ?a - airplane ?s - segment)
  (has-type ?a - airplane ?t - airplanetype)
  (not_blocked ?s - segment ?a - airplane) (occupied ?s - segment)
  (not_occupied ?s - segment) (at-segment ?a - airplane ?s - segment))
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
  seg_c_c2_2_0_83 - segment airplane_cfbeg airplane_dfboy - airplane)
 (:action
  ugly359ugly464ugly465ugly425ugly378ugly116ugly67ugly92ugly6startup_seg_n2_n3_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n3_n_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a))))
 (:action
  ugly360ugly432ugly415ugly463ugly404ugly117ugly81ugly29ugly10startup_seg_n2_n3_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly361ugly454ugly367ugly418ugly406ugly10ugly99ugly37ugly76startup_seg_n4_n5_2_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly362ugly423ugly401ugly470ugly438ugly75ugly4ugly21ugly97move_seg_c_c2_0_84_seg_c4_c5_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_0_84) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
       (not_blocked seg_c4_c5_0_50 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_0_84)) (not_occupied seg_c_c2_0_84)
       (not (at-segment ?a seg_c_c2_0_84)) (occupied seg_c4_c5_0_50)
       (not (not_occupied seg_c4_c5_0_50)) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a)) (at-segment ?a seg_c4_c5_0_50)
       (not (blocked seg_c_c2_2_0_83 ?a)) (not_blocked seg_c_c2_2_0_83 ?a)))
 (:action
  ugly363ugly453ugly436ugly417ugly383ugly42ugly115ugly74ugly8startup_seg_c6_c7_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)
       (not_occupied seg_c5_c6_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a))))
 (:action
  ugly364ugly413ugly410ugly372ugly362ugly65ugly13ugly105ugly42startup_seg_n4_n5_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly365ugly389ugly402ugly396ugly450ugly69ugly111ugly34ugly45move_seg_c5_c_b02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
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
 (:action
  ugly366ugly476ugly447ugly462ugly443ugly15ugly64ugly12ugly71startup_seg_n4_n5_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_2_0_86)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly367ugly418ugly406ugly368ugly411ugly115ugly74ugly8ugly90move_seg_c5_c_a02_0_100_seg_c5_c6_0_50_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
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
 (:action
  ugly368ugly411ugly473ugly382ugly385ugly86ugly95ugly77ugly75move_seg_c6_c7_0_100_seg_c5_c6_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c6_c7_0_100) (not_occupied seg_c5_c6_0_50)
       (not_blocked seg_c5_c6_0_50 airplane_cfbeg)
       (not_blocked seg_c5_c6_0_50 airplane_dfboy))
  :effect
  (and (not (occupied seg_c6_c7_0_100)) (not_occupied seg_c6_c7_0_100)
       (not (at-segment ?a seg_c6_c7_0_100)) (occupied seg_c5_c6_0_50)
       (not (not_occupied seg_c5_c6_0_50)) (blocked seg_c5_c6_0_50 ?a)
       (not (not_blocked seg_c5_c6_0_50 ?a)) (at-segment ?a seg_c5_c6_0_50)))
 (:action
  ugly369ugly366ugly476ugly447ugly462ugly85ugly120ugly31ugly108startup_seg_n2_n3_1_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly370ugly421ugly395ugly431ugly458ugly28ugly119ugly55ugly118move_seg_c5_c6_0_50_seg_c6_c7_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c6_c7_0_100)
       (not_blocked seg_c6_c7_0_100 airplane_cfbeg)
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
 (:action
  ugly371ugly379ugly460ugly399ugly477ugly71ugly110ugly54ugly68move_seg_c_c2_1_0_83_seg_n_c_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_1_0_83) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
       (not_blocked seg_n_c_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_1_0_83)) (not_occupied seg_c_c2_1_0_83)
       (not (at-segment ?a seg_c_c2_1_0_83)) (occupied seg_n_c_0_100)
       (not (not_occupied seg_n_c_0_100)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a)) (at-segment ?a seg_n_c_0_100)
       (not (blocked seg_c_c2_2_0_83 ?a)) (not_blocked seg_c_c2_2_0_83 ?a)))
 (:action
  ugly372ugly362ugly423ugly401ugly470ugly80ugly83ugly72ugly48move_seg_rwy_0_1300_seg_27_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwy_0_1300) (not_occupied seg_27_0_150)
       (not_blocked seg_27_0_150 airplane_cfbeg)
       (not_blocked seg_27_0_150 airplane_dfboy) (not_occupied seg_09_0_150))
  :effect
  (and (not (occupied seg_rwy_0_1300)) (not_occupied seg_rwy_0_1300)
       (not (at-segment ?a seg_rwy_0_1300)) (occupied seg_27_0_150)
       (not (not_occupied seg_27_0_150)) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (at-segment ?a seg_27_0_150)))
 (:action
  ugly373ugly397ugly437ugly451ugly449ugly81ugly29ugly10ugly99move_seg_c_c2_1_0_83_seg_c_c2_2_0_83_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_1_0_83) (not_occupied seg_c_c2_2_0_83)
       (not_blocked seg_c_c2_2_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_2_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_1_0_83)) (not_occupied seg_c_c2_1_0_83)
       (not (at-segment ?a seg_c_c2_1_0_83)) (occupied seg_c_c2_2_0_83)
       (not (not_occupied seg_c_c2_2_0_83)) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a)) (at-segment ?a seg_c_c2_2_0_83)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))
 (:action
  ugly374ugly405ugly457ugly364ugly413ugly52ugly44ugly70ugly66startup_seg_n1_a_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_a_09_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a))))
 (:action
  ugly375ugly469ugly448ugly428ugly371ugly21ugly97ugly39ugly87move_seg_09_0_150_seg_rwy_0_1300_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_09_0_150) (not_occupied seg_rwy_0_1300)
       (not_blocked seg_rwy_0_1300 airplane_cfbeg)
       (not_blocked seg_rwy_0_1300 airplane_dfboy))
  :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (at-segment ?a seg_09_0_150)) (occupied seg_rwy_0_1300)
       (not (not_occupied seg_rwy_0_1300)) (blocked seg_rwy_0_1300 ?a)
       (not (not_blocked seg_rwy_0_1300 ?a)) (at-segment ?a seg_rwy_0_1300)
       (not (blocked seg_a_09_0_100 ?a)) (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly376ugly380ugly471ugly445ugly408ugly68ugly9ugly33ugly85startup_seg_c_c2_2_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_2_0_83)
       (not_occupied seg_c_c2_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a))))
 (:action
  ugly377ugly365ugly389ugly402ugly396ugly92ugly6ugly61ugly112startup_seg_c5_c6_0_50_south_medium
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
  ugly378ugly474ugly440ugly391ugly394ugly101ugly14ugly27ugly65move_seg_n2_n3_6_0_86_seg_n2_n3_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_6_0_86) (not_occupied seg_n2_n3_5_0_86)
       (not_blocked seg_n2_n3_5_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_5_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_6_0_86)) (not_occupied seg_n2_n3_6_0_86)
       (not (at-segment ?a seg_n2_n3_6_0_86)) (occupied seg_n2_n3_5_0_86)
       (not (not_occupied seg_n2_n3_5_0_86)) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a)) (at-segment ?a seg_n2_n3_5_0_86)
       (not (blocked seg_n2_n3_0_85 ?a)) (not_blocked seg_n2_n3_0_85 ?a)))
 (:action
  ugly379ugly460ugly399ugly477ugly429ugly5ugly56ugly15ugly64move_seg_n2_n3_0_85_seg_n2_n3_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_0_85) (not_occupied seg_n2_n3_6_0_86)
       (not_blocked seg_n2_n3_6_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_6_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_0_85)) (not_occupied seg_n2_n3_0_85)
       (not (at-segment ?a seg_n2_n3_0_85)) (occupied seg_n2_n3_6_0_86)
       (not (not_occupied seg_n2_n3_6_0_86)) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a)) (at-segment ?a seg_n2_n3_6_0_86)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)))
 (:action
  ugly380ugly471ugly445ugly408ugly426ugly88ugly5ugly56ugly15startup_seg_n3_n_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly381ugly377ugly365ugly389ugly402ugly38ugly40ugly88ugly5startup_seg_n1_n2_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly382ugly385ugly444ugly360ugly432ugly57ugly114ugly11ugly103startup_seg_n4_n5_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly383ugly400ugly392ugly419ugly376ugly22ugly80ugly83ugly72pushback_seg_c5_c6_0_50_seg_c6_c7_0_100_north_north_medium
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
  ugly384ugly374ugly405ugly457ugly364ugly55ugly118ugly3ugly36startup_seg_b02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)
       (not_occupied seg_c5_c_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))))
 (:action
  ugly385ugly444ugly360ugly432ugly415ugly105ugly42ugly115ugly74move_seg_c_c2_2_0_83_seg_c_c2_1_0_83_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_2_0_83) (not_occupied seg_c_c2_1_0_83)
       (not_blocked seg_c_c2_1_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_1_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_2_0_83)) (not_occupied seg_c_c2_2_0_83)
       (not (at-segment ?a seg_c_c2_2_0_83)) (occupied seg_c_c2_1_0_83)
       (not (not_occupied seg_c_c2_1_0_83)) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a)) (at-segment ?a seg_c_c2_1_0_83)
       (not (blocked seg_c_c2_0_84 ?a)) (not_blocked seg_c_c2_0_84 ?a)))
 (:action
  ugly386ugly412ugly381ugly377ugly365ugly31ugly108ugly60ugly26startup_seg_n2_n3_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly387ugly398ugly452ugly359ugly464ugly107ugly7ugly49ugly52move_seg_c4_c5_0_50_seg_c5_c_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
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
 (:action
  ugly388ugly435ugly468ugly467ugly430ugly114ugly11ugly103ugly113startup_seg_n2_n3_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly389ugly402ugly396ugly450ugly427ugly66ugly57ugly114ugly11startup_seg_n2_n3_4_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly390ugly409ugly478ugly422ugly375ugly111ugly34ugly45ugly43startup_seg_n4_n5_5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_5_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly391ugly394ugly459ugly361ugly454ugly9ugly33ugly85ugly120move_seg_n4_n5_4_0_85_seg_n4_n5_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_4_0_85) (not_occupied seg_n4_n5_3_0_86)
       (not_blocked seg_n4_n5_3_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_3_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_4_0_85)) (not_occupied seg_n4_n5_4_0_85)
       (not (at-segment ?a seg_n4_n5_4_0_85)) (occupied seg_n4_n5_3_0_86)
       (not (not_occupied seg_n4_n5_3_0_86)) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a)) (at-segment ?a seg_n4_n5_3_0_86)
       (not (blocked seg_n4_n5_5_0_86 ?a)) (not_blocked seg_n4_n5_5_0_86 ?a)))
 (:action
  ugly392ugly419ugly376ugly380ugly471ugly87ugly22ugly80ugly83startup_seg_n4_n5_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n4_n5_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a))))
 (:action
  ugly393ugly369ugly366ugly476ugly447ugly104ugly50ugly93ugly41startup_seg_n2_n3_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a))))
 (:action
  ugly394ugly459ugly361ugly454ugly367ugly60ugly26ugly102ugly32startup_seg_c4_c5_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c4_c5_0_50)
       (not_occupied seg_c_c2_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a))))
 (:action
  ugly395ugly431ugly458ugly386ugly412ugly23ugly38ugly40ugly88move_seg_c5_c6_0_50_seg_c4_c5_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c5_c6_0_50) (not_occupied seg_c4_c5_0_50)
       (not_blocked seg_c4_c5_0_50 airplane_cfbeg)
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
 (:action
  ugly396ugly450ugly427ugly424ugly387ugly40ugly88ugly5ugly56move_seg_n2_n3_4_0_85_seg_n2_n3_3_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_4_0_85) (not_occupied seg_n2_n3_3_0_86)
       (not_blocked seg_n2_n3_3_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_3_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_4_0_85)) (not_occupied seg_n2_n3_4_0_85)
       (not (at-segment ?a seg_n2_n3_4_0_85)) (occupied seg_n2_n3_3_0_86)
       (not (not_occupied seg_n2_n3_3_0_86)) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a)) (at-segment ?a seg_n2_n3_3_0_86)
       (not (blocked seg_n2_n3_5_0_86 ?a)) (not_blocked seg_n2_n3_5_0_86 ?a)))
 (:action
  ugly397ugly437ugly451ugly449ugly439ugly108ugly60ugly26ugly102move_seg_n4_n5_3_0_86_seg_n4_n5_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_3_0_86) (not_occupied seg_n4_n5_2_0_86)
       (not_blocked seg_n4_n5_2_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_2_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_3_0_86)) (not_occupied seg_n4_n5_3_0_86)
       (not (at-segment ?a seg_n4_n5_3_0_86)) (occupied seg_n4_n5_2_0_86)
       (not (not_occupied seg_n4_n5_2_0_86)) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a)) (at-segment ?a seg_n4_n5_2_0_86)
       (not (blocked seg_n4_n5_4_0_85 ?a)) (not_blocked seg_n4_n5_4_0_85 ?a)))
 (:action
  ugly398ugly452ugly359ugly464ugly465ugly67ugly92ugly6ugly61startup_seg_n4_n5_3_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly399ugly477ugly429ugly363ugly453ugly78ugly35ugly53ugly19move_seg_n2_n3_3_0_86_seg_n2_n3_2_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_3_0_86) (not_occupied seg_n2_n3_2_0_86)
       (not_blocked seg_n2_n3_2_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_2_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_3_0_86)) (not_occupied seg_n2_n3_3_0_86)
       (not (at-segment ?a seg_n2_n3_3_0_86)) (occupied seg_n2_n3_2_0_86)
       (not (not_occupied seg_n2_n3_2_0_86)) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a)) (at-segment ?a seg_n2_n3_2_0_86)
       (not (blocked seg_n2_n3_4_0_85 ?a)) (not_blocked seg_n2_n3_4_0_85 ?a)))
 (:action
  ugly400ugly392ugly419ugly376ugly380ugly113ugly106ugly58ugly69startup_seg_n4_n5_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_3_0_86)
       (not_occupied seg_n4_n5_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a))))
 (:action
  ugly401ugly470ugly438ugly433ugly416ugly98ugly25ugly94ugly89startup_seg_n2_n3_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_4_0_85)
       (not_occupied seg_n2_n3_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_3_0_86 ?a)
       (not (not_blocked seg_n2_n3_3_0_86 ?a))))
 (:action
  ugly402ugly396ugly450ugly427ugly424ugly29ugly10ugly99ugly37startup_seg_n6_b_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly403ugly442ugly388ugly435ugly468ugly109ugly30ugly96ugly100startup_seg_n5_n6_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly404ugly475ugly393ugly369ugly366ugly118ugly3ugly36ugly98move_seg_b_27_0_100_seg_n6_b_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b_27_0_100) (not_occupied seg_n6_b_0_100)
       (not_blocked seg_n6_b_0_100 airplane_cfbeg)
       (not_blocked seg_n6_b_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_b_27_0_100)) (not_occupied seg_b_27_0_100)
       (not (at-segment ?a seg_b_27_0_100)) (occupied seg_n6_b_0_100)
       (not (not_occupied seg_n6_b_0_100)) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a)) (at-segment ?a seg_n6_b_0_100)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (blocked seg_27help_0_100 ?a)) (not_blocked seg_27help_0_100 ?a)))
 (:action
  ugly405ugly457ugly364ugly413ugly410ugly14ugly27ugly65ugly13startup_seg_n2_n3_5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_5_0_86)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly406ugly368ugly411ugly473ugly382ugly27ugly65ugly13ugly105move_seg_b02_0_100_seg_c5_c_b02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_b02_0_100) (not_occupied seg_c5_c_b02_0_100)
       (not_blocked seg_c5_c_b02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_b02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_b02_0_100)) (not_occupied seg_b02_0_100)
       (not (at-segment ?a seg_b02_0_100)) (occupied seg_c5_c_b02_0_100)
       (not (not_occupied seg_c5_c_b02_0_100)) (blocked seg_c5_c_b02_0_100 ?a)
       (not (not_blocked seg_c5_c_b02_0_100 ?a))
       (at-segment ?a seg_c5_c_b02_0_100)))
 (:action
  ugly407ugly390ugly409ugly478ugly422ugly17ugly24ugly17ugly24move_seg_n2_n3_2_0_86_seg_n2_n3_1_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_2_0_86) (not_occupied seg_n2_n3_1_0_86)
       (not_blocked seg_n2_n3_1_0_86 airplane_cfbeg)
       (not_blocked seg_n2_n3_1_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_2_0_86)) (not_occupied seg_n2_n3_2_0_86)
       (not (at-segment ?a seg_n2_n3_2_0_86)) (occupied seg_n2_n3_1_0_86)
       (not (not_occupied seg_n2_n3_1_0_86)) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a)) (at-segment ?a seg_n2_n3_1_0_86)
       (not (blocked seg_n2_n3_3_0_86 ?a)) (not_blocked seg_n2_n3_3_0_86 ?a)))
 (:action
  ugly408ugly426ugly446ugly455ugly370ugly63ugly117ugly81ugly29move_seg_n_c_0_100_seg_n3_n_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_n3_n_0_100)
       (not_blocked seg_n3_n_0_100 airplane_cfbeg)
       (not_blocked seg_n3_n_0_100 airplane_dfboy)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_n3_n_0_100)
       (not (not_occupied seg_n3_n_0_100)) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (at-segment ?a seg_n3_n_0_100)
       (not (blocked seg_c_c2_1_0_83 ?a)) (not_blocked seg_c_c2_1_0_83 ?a)
       (blocked seg_n_n4_0_100 ?a) (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly409ugly478ugly422ugly375ugly469ugly90ugly2ugly91ugly1startup_seg_n2_n3_3_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_3_0_86)
       (not_occupied seg_n2_n3_4_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a))))
 (:action
  ugly410ugly372ugly362ugly423ugly401ugly112ugly84ugly79ugly59pushback_seg_b02_0_100_seg_c5_c_b02_0_100_south_south_medium
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
  ugly411ugly473ugly382ugly385ugly444ugly2ugly91ugly1ugly101move_seg_n2_n3_5_0_86_seg_n2_n3_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_5_0_86) (not_occupied seg_n2_n3_4_0_85)
       (not_blocked seg_n2_n3_4_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_4_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_5_0_86)) (not_occupied seg_n2_n3_5_0_86)
       (not (at-segment ?a seg_n2_n3_5_0_86)) (occupied seg_n2_n3_4_0_85)
       (not (not_occupied seg_n2_n3_4_0_85)) (blocked seg_n2_n3_4_0_85 ?a)
       (not (not_blocked seg_n2_n3_4_0_85 ?a)) (at-segment ?a seg_n2_n3_4_0_85)
       (not (blocked seg_n2_n3_6_0_86 ?a)) (not_blocked seg_n2_n3_6_0_86 ?a)))
 (:action
  ugly412ugly381ugly377ugly365ugly389ugly44ugly70ugly66ugly57startup_seg_n4_n5_4_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_4_0_85)
       (not_occupied seg_n4_n5_3_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_3_0_86 ?a)
       (not (not_blocked seg_n4_n5_3_0_86 ?a))))
 (:action
  ugly413ugly410ugly372ugly362ugly423ugly43ugly116ugly67ugly92move_seg_c4_c5_0_50_seg_c_c2_0_84_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c_c2_0_84)
       (not_blocked seg_c_c2_0_84 airplane_cfbeg)
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
 (:action
  ugly414ugly384ugly374ugly405ugly457ugly6ugly61ugly112ugly84startup_seg_c_c2_0_84_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_84)
       (not_occupied seg_c4_c5_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c4_c5_0_50 ?a)
       (not (not_blocked seg_c4_c5_0_50 ?a))))
 (:action
  ugly415ugly463ugly404ugly475ugly393ugly11ugly103ugly113ugly106startup_seg_n1_a_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_a_0_100)
       (not_occupied seg_n1_n2_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a))))
 (:action
  ugly416ugly456ugly461ugly414ugly384ugly16ugly62ugly86ugly95startup_seg_c_c2_1_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_1_0_83)
       (not_occupied seg_c_c2_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a))))
 (:action
  ugly417ugly383ugly400ugly392ugly419ugly18ugly63ugly117ugly81move_seg_n4_n5_6_0_86_seg_n4_n5_5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_6_0_86) (not_occupied seg_n4_n5_5_0_86)
       (not_blocked seg_n4_n5_5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_5_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_6_0_86)) (not_occupied seg_n4_n5_6_0_86)
       (not (at-segment ?a seg_n4_n5_6_0_86)) (occupied seg_n4_n5_5_0_86)
       (not (not_occupied seg_n4_n5_5_0_86)) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a)) (at-segment ?a seg_n4_n5_5_0_86)
       (not (blocked seg_n4_n5_0_86 ?a)) (not_blocked seg_n4_n5_0_86 ?a)))
 (:action
  ugly418ugly406ugly368ugly411ugly473ugly24ugly17ugly24ugly17move_seg_27_0_150_seg_b_27_0_100_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_27_0_150) (not_occupied seg_b_27_0_100)
       (not_blocked seg_b_27_0_100 airplane_cfbeg)
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
 (:action
  ugly419ugly376ugly380ugly471ugly445ugly50ugly93ugly41ugly107move_seg_c_c2_0_84_seg_c_c2_2_0_83_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_c_c2_0_84) (not_occupied seg_c_c2_2_0_83)
       (not_blocked seg_c_c2_2_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_2_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_0_84)) (not_occupied seg_c_c2_0_84)
       (not (at-segment ?a seg_c_c2_0_84)) (occupied seg_c_c2_2_0_83)
       (not (not_occupied seg_c_c2_2_0_83)) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a)) (at-segment ?a seg_c_c2_2_0_83)
       (not (blocked seg_c4_c5_0_50 ?a)) (not_blocked seg_c4_c5_0_50 ?a)))
 (:action
  ugly420ugly434ugly441ugly407ugly390ugly51ugly18ugly63ugly117startup_seg_c4_c5_0_50_north_medium
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
  ugly421ugly395ugly431ugly458ugly386ugly54ugly68ugly9ugly33startup_seg_c5_c_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_a02_0_100)
       (not_occupied seg_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_a02_0_100 ?a)
       (not (not_blocked seg_a02_0_100 ?a))))
 (:action
  ugly422ugly375ugly469ugly448ugly428ugly13ugly105ugly42ugly115startup_seg_n5_n6_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n5_n6_0_100)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly423ugly401ugly470ugly438ugly433ugly58ugly69ugly111ugly34move_seg_c5_c_b02_0_100_seg_b02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_b02_0_100) (not_occupied seg_b02_0_100)
       (not_blocked seg_b02_0_100 airplane_cfbeg)
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
 (:action
  ugly424ugly387ugly398ugly452ugly359ugly106ugly58ugly69ugly111move_seg_n4_n5_1_0_85_seg_n_n4_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_1_0_85) (not_occupied seg_n_n4_0_100)
       (not_blocked seg_n_n4_0_100 airplane_cfbeg)
       (not_blocked seg_n_n4_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_1_0_85)) (not_occupied seg_n4_n5_1_0_85)
       (not (at-segment ?a seg_n4_n5_1_0_85)) (occupied seg_n_n4_0_100)
       (not (not_occupied seg_n_n4_0_100)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (at-segment ?a seg_n_n4_0_100)
       (not (blocked seg_n4_n5_2_0_86 ?a)) (not_blocked seg_n4_n5_2_0_86 ?a)))
 (:action
  ugly425ugly378ugly474ugly440ugly391ugly36ugly98ugly25ugly94startup_seg_c6_c7_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c6_c7_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly426ugly446ugly455ugly370ugly421ugly37ugly76ugly109ugly30park_seg_b02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_b02_0_100 ?a))
       (not_blocked seg_c5_c_b02_0_100 ?a)))
 (:action
  ugly427ugly424ugly387ugly398ugly452ugly1ugly101ugly14ugly27startup_seg_n_n4_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n4_n5_1_0_85))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a))))
 (:action
  ugly428ugly371ugly379ugly460ugly399ugly119ugly55ugly118ugly3move_seg_n_c_0_100_seg_c_c2_1_0_83_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n_c_0_100) (not_occupied seg_c_c2_1_0_83)
       (not_blocked seg_c_c2_1_0_83 airplane_cfbeg)
       (not_blocked seg_c_c2_1_0_83 airplane_dfboy))
  :effect
  (and (not (occupied seg_n_c_0_100)) (not_occupied seg_n_c_0_100)
       (not (at-segment ?a seg_n_c_0_100)) (occupied seg_c_c2_1_0_83)
       (not (not_occupied seg_c_c2_1_0_83)) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a)) (at-segment ?a seg_c_c2_1_0_83)
       (not (blocked seg_n3_n_0_100 ?a)) (not_blocked seg_n3_n_0_100 ?a)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)))
 (:action
  ugly429ugly363ugly453ugly436ugly417ugly25ugly94ugly89ugly104takeoff_seg_09_0_150_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_09_0_150) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_09_0_150)) (not_occupied seg_09_0_150)
       (not (blocked seg_09_0_150 ?a)) (not_blocked seg_09_0_150 ?a)
       (not (at-segment ?a seg_09_0_150)) (airborne ?a seg_09_0_150)
       (not (is-moving ?a)) (not (blocked seg_a_09_0_100 ?a))
       (not_blocked seg_a_09_0_100 ?a)))
 (:action
  ugly430ugly472ugly420ugly434ugly441ugly49ugly52ugly44ugly70startup_seg_n_n4_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_n4_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly431ugly458ugly386ugly412ugly381ugly19ugly16ugly62ugly86park_seg_b02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_b02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_b02_0_100) (not (is-moving ?a))))
 (:action
  ugly432ugly415ugly463ugly404ugly475ugly35ugly53ugly19ugly16startup_seg_n2_n3_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_0_85)
       (not_occupied seg_n2_n3_6_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_6_0_86 ?a)
       (not (not_blocked seg_n2_n3_6_0_86 ?a))))
 (:action
  ugly433ugly416ugly456ugly461ugly414ugly26ugly102ugly32ugly82startup_seg_a_09_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_09help_0_100) (not_occupied seg_09_0_150))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_09help_0_100 ?a)
       (not (not_blocked seg_09help_0_100 ?a)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a))))
 (:action
  ugly434ugly441ugly407ugly390ugly409ugly120ugly31ugly108ugly60move_seg_n6_b_0_100_seg_n5_n6_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n6_b_0_100) (not_occupied seg_n5_n6_0_100)
       (not_blocked seg_n5_n6_0_100 airplane_cfbeg)
       (not_blocked seg_n5_n6_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n6_b_0_100)) (not_occupied seg_n6_b_0_100)
       (not (at-segment ?a seg_n6_b_0_100)) (occupied seg_n5_n6_0_100)
       (not (not_occupied seg_n5_n6_0_100)) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a)) (at-segment ?a seg_n5_n6_0_100)
       (not (blocked seg_b_27_0_100 ?a)) (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly435ugly468ugly467ugly430ugly472ugly62ugly86ugly95ugly77startup_seg_n6_b_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n6_b_0_100)
       (not_occupied seg_b_27_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b_27_0_100 ?a)
       (not (not_blocked seg_b_27_0_100 ?a))))
 (:action
  ugly436ugly417ugly383ugly400ugly392ugly61ugly112ugly84ugly79startup_seg_n2_n3_1_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_1_0_86)
       (not_occupied seg_n2_n3_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_2_0_86 ?a)
       (not (not_blocked seg_n2_n3_2_0_86 ?a))))
 (:action
  ugly437ugly451ugly449ugly439ugly466ugly45ugly43ugly116ugly67park_seg_a02_0_100_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))
       (not (blocked seg_c5_c_a02_0_100 ?a))
       (not_blocked seg_c5_c_a02_0_100 ?a)))
 (:action
  ugly438ugly433ugly416ugly456ugly461ugly56ugly15ugly64ugly12startup_seg_n4_n5_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_0_86)
       (not_occupied seg_n5_n6_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n5_n6_0_100 ?a)
       (not (not_blocked seg_n5_n6_0_100 ?a))))
 (:action
  ugly439ugly466ugly403ugly442ugly388ugly77ugly75ugly4ugly21startup_seg_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly440ugly391ugly394ugly459ugly361ugly96ugly100ugly73ugly78move_seg_n_n4_0_100_seg_n_c_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n_n4_0_100) (not_occupied seg_n_c_0_100)
       (not_blocked seg_n_c_0_100 airplane_cfbeg)
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
 (:action
  ugly441ugly407ugly390ugly409ugly478ugly64ugly12ugly71ugly110startup_seg_b_27_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_n6_b_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n6_b_0_100 ?a)
       (not (not_blocked seg_n6_b_0_100 ?a))))
 (:action
  ugly442ugly388ugly435ugly468ugly467ugly72ugly48ugly23ugly38move_seg_c4_c5_0_50_seg_c5_c_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c4_c5_0_50) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
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
 (:action
  ugly443ugly373ugly397ugly437ugly451ugly91ugly1ugly101ugly14move_seg_n5_n6_0_100_seg_n4_n5_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n5_n6_0_100) (not_occupied seg_n4_n5_0_86)
       (not_blocked seg_n4_n5_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n5_n6_0_100)) (not_occupied seg_n5_n6_0_100)
       (not (at-segment ?a seg_n5_n6_0_100)) (occupied seg_n4_n5_0_86)
       (not (not_occupied seg_n4_n5_0_86)) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a)) (at-segment ?a seg_n4_n5_0_86)
       (not (blocked seg_n6_b_0_100 ?a)) (not_blocked seg_n6_b_0_100 ?a)))
 (:action
  ugly444ugly360ugly432ugly415ugly463ugly46ugly47ugly20ugly28startup_seg_c_c2_2_0_83_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_2_0_83)
       (not_occupied seg_c_c2_0_84))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a))))
 (:action
  ugly445ugly408ugly426ugly446ugly455ugly12ugly71ugly110ugly54startup_seg_n_c_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_n3_n_0_100) (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n3_n_0_100 ?a)
       (not (not_blocked seg_n3_n_0_100 ?a)) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly446ugly455ugly370ugly421ugly395ugly73ugly78ugly35ugly53move_seg_n1_n2_0_100_seg_n1_a_0_100_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n1_n2_0_100) (not_occupied seg_n1_a_0_100)
       (not_blocked seg_n1_a_0_100 airplane_cfbeg)
       (not_blocked seg_n1_a_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n1_n2_0_100)) (not_occupied seg_n1_n2_0_100)
       (not (at-segment ?a seg_n1_n2_0_100)) (occupied seg_n1_a_0_100)
       (not (not_occupied seg_n1_a_0_100)) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a)) (at-segment ?a seg_n1_a_0_100)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_n2_n3_1_0_86 ?a)) (not_blocked seg_n2_n3_1_0_86 ?a)))
 (:action
  ugly447ugly462ugly443ugly373ugly397ugly79ugly59ugly46ugly47move_seg_n1_a_0_100_seg_a_09_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_n1_a_0_100) (not_occupied seg_a_09_0_100)
       (not_blocked seg_a_09_0_100 airplane_cfbeg)
       (not_blocked seg_a_09_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n1_a_0_100)) (not_occupied seg_n1_a_0_100)
       (not (at-segment ?a seg_n1_a_0_100)) (occupied seg_a_09_0_100)
       (not (not_occupied seg_a_09_0_100)) (blocked seg_a_09_0_100 ?a)
       (not (not_blocked seg_a_09_0_100 ?a)) (at-segment ?a seg_a_09_0_100)
       (not (blocked seg_n1_n2_0_100 ?a)) (not_blocked seg_n1_n2_0_100 ?a)))
 (:action
  ugly448ugly428ugly371ugly379ugly460ugly41ugly107ugly7ugly49startup_seg_a_09_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a_09_0_100)
       (not_occupied seg_n1_a_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n1_a_0_100 ?a)
       (not (not_blocked seg_n1_a_0_100 ?a))))
 (:action
  ugly449ugly439ugly466ugly403ugly442ugly30ugly96ugly100ugly73startup_seg_c_c2_1_0_83_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_1_0_83)
       (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly450ugly427ugly424ugly387ugly398ugly94ugly89ugly104ugly50startup_seg_a02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly451ugly449ugly439ugly466ugly403ugly84ugly79ugly59ugly46pushback_seg_c5_c_b02_0_100_seg_c5_c6_0_50_south_north_medium
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
  ugly452ugly359ugly464ugly465ugly425ugly20ugly28ugly119ugly55startup_seg_n4_n5_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_5_0_86 ?a)
       (not (not_blocked seg_n4_n5_5_0_86 ?a))))
 (:action
  ugly453ugly436ugly417ugly383ugly400ugly34ugly45ugly43ugly116startup_seg_n_c_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n_c_0_100)
       (not_occupied seg_c_c2_1_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_1_0_83 ?a)
       (not (not_blocked seg_c_c2_1_0_83 ?a))))
 (:action
  ugly454ugly367ugly418ugly406ugly368ugly53ugly19ugly16ugly62startup_seg_c5_c_a02_0_100_south_medium
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
  ugly455ugly370ugly421ugly395ugly431ugly100ugly73ugly78ugly35startup_seg_b_27_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_b_27_0_100)
       (not_occupied seg_27_0_150) (not_occupied seg_27help_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_27_0_150 ?a)
       (not (not_blocked seg_27_0_150 ?a)) (blocked seg_27help_0_100 ?a)
       (not (not_blocked seg_27help_0_100 ?a))))
 (:action
  ugly456ugly461ugly414ugly384ugly374ugly47ugly20ugly28ugly119startup_seg_n1_n2_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n1_n2_0_100)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly457ugly364ugly413ugly410ugly372ugly4ugly21ugly97ugly39startup_seg_c5_c_b02_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c_b02_0_100)
       (not_occupied seg_b02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_b02_0_100 ?a)
       (not (not_blocked seg_b02_0_100 ?a))))
 (:action
  ugly458ugly386ugly412ugly381ugly377ugly7ugly49ugly52ugly44startup_seg_n4_n5_1_0_85_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n_n4_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a))))
 (:action
  ugly459ugly361ugly454ugly367ugly418ugly48ugly23ugly38ugly40startup_seg_c5_c_b02_0_100_south_medium
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
  ugly460ugly399ugly477ugly429ugly363ugly95ugly77ugly75ugly4move_seg_a_09_0_100_seg_09_0_150_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_a_09_0_100) (not_occupied seg_09_0_150)
       (not_blocked seg_09_0_150 airplane_cfbeg)
       (not_blocked seg_09_0_150 airplane_dfboy))
  :effect
  (and (not (occupied seg_a_09_0_100)) (not_occupied seg_a_09_0_100)
       (not (at-segment ?a seg_a_09_0_100)) (occupied seg_09_0_150)
       (not (not_occupied seg_09_0_150)) (blocked seg_09_0_150 ?a)
       (not (not_blocked seg_09_0_150 ?a)) (at-segment ?a seg_09_0_150)
       (not (blocked seg_n1_a_0_100 ?a)) (not_blocked seg_n1_a_0_100 ?a)))
 (:action
  ugly461ugly414ugly384ugly374ugly405ugly99ugly37ugly76ugly109move_seg_n4_n5_5_0_86_seg_n4_n5_4_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_5_0_86) (not_occupied seg_n4_n5_4_0_85)
       (not_blocked seg_n4_n5_4_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_4_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_5_0_86)) (not_occupied seg_n4_n5_5_0_86)
       (not (at-segment ?a seg_n4_n5_5_0_86)) (occupied seg_n4_n5_4_0_85)
       (not (not_occupied seg_n4_n5_4_0_85)) (blocked seg_n4_n5_4_0_85 ?a)
       (not (not_blocked seg_n4_n5_4_0_85 ?a)) (at-segment ?a seg_n4_n5_4_0_85)
       (not (blocked seg_n4_n5_6_0_86 ?a)) (not_blocked seg_n4_n5_6_0_86 ?a)))
 (:action
  ugly462ugly443ugly373ugly397ugly437ugly93ugly41ugly107ugly7takeoff_seg_27_0_150_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_27_0_150) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_27_0_150)) (not_occupied seg_27_0_150)
       (not (blocked seg_27_0_150 ?a)) (not_blocked seg_27_0_150 ?a)
       (not (at-segment ?a seg_27_0_150)) (airborne ?a seg_27_0_150)
       (not (is-moving ?a)) (not (blocked seg_b_27_0_100 ?a))
       (not_blocked seg_b_27_0_100 ?a)))
 (:action
  ugly463ugly404ugly475ugly393ugly369ugly8ugly90ugly2ugly91move_seg_a02_0_100_seg_c5_c_a02_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_a02_0_100) (not_occupied seg_c5_c_a02_0_100)
       (not_blocked seg_c5_c_a02_0_100 airplane_cfbeg)
       (not_blocked seg_c5_c_a02_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_a02_0_100)) (not_occupied seg_a02_0_100)
       (not (at-segment ?a seg_a02_0_100)) (occupied seg_c5_c_a02_0_100)
       (not (not_occupied seg_c5_c_a02_0_100)) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))
       (at-segment ?a seg_c5_c_a02_0_100)))
 (:action
  ugly464ugly465ugly425ugly378ugly474ugly82ugly51ugly18ugly63startup_seg_n4_n5_6_0_86_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_6_0_86)
       (not_occupied seg_n4_n5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_0_86 ?a)
       (not (not_blocked seg_n4_n5_0_86 ?a))))
 (:action
  ugly465ugly425ugly378ugly474ugly440ugly33ugly85ugly120ugly31startup_seg_n2_n3_6_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_6_0_86)
       (not_occupied seg_n2_n3_5_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_5_0_86 ?a)
       (not (not_blocked seg_n2_n3_5_0_86 ?a))))
 (:action
  ugly466ugly403ugly442ugly388ugly435ugly110ugly54ugly68ugly9move_seg_n4_n5_2_0_86_seg_n4_n5_1_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_2_0_86) (not_occupied seg_n4_n5_1_0_85)
       (not_blocked seg_n4_n5_1_0_85 airplane_cfbeg)
       (not_blocked seg_n4_n5_1_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_2_0_86)) (not_occupied seg_n4_n5_2_0_86)
       (not (at-segment ?a seg_n4_n5_2_0_86)) (occupied seg_n4_n5_1_0_85)
       (not (not_occupied seg_n4_n5_1_0_85)) (blocked seg_n4_n5_1_0_85 ?a)
       (not (not_blocked seg_n4_n5_1_0_85 ?a)) (at-segment ?a seg_n4_n5_1_0_85)
       (not (blocked seg_n4_n5_3_0_86 ?a)) (not_blocked seg_n4_n5_3_0_86 ?a)))
 (:action
  ugly467ugly430ugly472ugly420ugly434ugly83ugly72ugly48ugly23move_seg_c_c2_2_0_83_seg_c_c2_0_84_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c_c2_2_0_83) (not_occupied seg_c_c2_0_84)
       (not_blocked seg_c_c2_0_84 airplane_cfbeg)
       (not_blocked seg_c_c2_0_84 airplane_dfboy))
  :effect
  (and (not (occupied seg_c_c2_2_0_83)) (not_occupied seg_c_c2_2_0_83)
       (not (at-segment ?a seg_c_c2_2_0_83)) (occupied seg_c_c2_0_84)
       (not (not_occupied seg_c_c2_0_84)) (blocked seg_c_c2_0_84 ?a)
       (not (not_blocked seg_c_c2_0_84 ?a)) (at-segment ?a seg_c_c2_0_84)
       (not (blocked seg_c_c2_1_0_83 ?a)) (not_blocked seg_c_c2_1_0_83 ?a)))
 (:action
  ugly468ugly467ugly430ugly472ugly420ugly76ugly109ugly30ugly96startup_seg_n2_n3_2_0_86_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n2_n3_2_0_86)
       (not_occupied seg_n2_n3_1_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n2_n3_1_0_86 ?a)
       (not (not_blocked seg_n2_n3_1_0_86 ?a))))
 (:action
  ugly469ugly448ugly428ugly371ugly379ugly102ugly32ugly82ugly51move_seg_n2_n3_1_0_86_seg_n1_n2_0_100_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n2_n3_1_0_86) (not_occupied seg_n1_n2_0_100)
       (not_blocked seg_n1_n2_0_100 airplane_cfbeg)
       (not_blocked seg_n1_n2_0_100 airplane_dfboy))
  :effect
  (and (not (occupied seg_n2_n3_1_0_86)) (not_occupied seg_n2_n3_1_0_86)
       (not (at-segment ?a seg_n2_n3_1_0_86)) (occupied seg_n1_n2_0_100)
       (not (not_occupied seg_n1_n2_0_100)) (blocked seg_n1_n2_0_100 ?a)
       (not (not_blocked seg_n1_n2_0_100 ?a)) (at-segment ?a seg_n1_n2_0_100)
       (not (blocked seg_n2_n3_2_0_86 ?a)) (not_blocked seg_n2_n3_2_0_86 ?a)))
 (:action
  ugly470ugly438ugly433ugly416ugly456ugly103ugly113ugly106ugly58startup_seg_n4_n5_1_0_85_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n4_n5_1_0_85)
       (not_occupied seg_n4_n5_2_0_86))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n4_n5_2_0_86 ?a)
       (not (not_blocked seg_n4_n5_2_0_86 ?a))))
 (:action
  ugly471ugly445ugly408ugly426ugly446ugly97ugly39ugly87ugly22startup_seg_c_c2_0_84_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c_c2_0_84)
       (not_occupied seg_c_c2_2_0_83))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c_c2_2_0_83 ?a)
       (not (not_blocked seg_c_c2_2_0_83 ?a))))
 (:action
  ugly472ugly420ugly434ugly441ugly407ugly32ugly82ugly51ugly18startup_seg_n3_n_0_100_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_n3_n_0_100)
       (not_occupied seg_n_n4_0_100) (not_occupied seg_n_c_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_n_n4_0_100 ?a)
       (not (not_blocked seg_n_n4_0_100 ?a)) (blocked seg_n_c_0_100 ?a)
       (not (not_blocked seg_n_c_0_100 ?a))))
 (:action
  ugly473ugly382ugly385ugly444ugly360ugly74ugly8ugly90ugly2park_seg_a02_0_100_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_a02_0_100) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_a02_0_100) (not (is-moving ?a))))
 (:action
  ugly474ugly440ugly391ugly394ugly459ugly3ugly36ugly98ugly25startup_seg_a02_0_100_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_a02_0_100)
       (not_occupied seg_c5_c_a02_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c5_c_a02_0_100 ?a)
       (not (not_blocked seg_c5_c_a02_0_100 ?a))))
 (:action
  ugly475ugly393ugly369ugly366ugly476ugly89ugly104ugly50ugly93move_seg_c5_c_a02_0_100_seg_a02_0_100_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_c5_c_a02_0_100) (not_occupied seg_a02_0_100)
       (not_blocked seg_a02_0_100 airplane_cfbeg)
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
 (:action
  ugly476ugly447ugly462ugly443ugly373ugly39ugly87ugly22ugly80startup_seg_c5_c6_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_c5_c6_0_50)
       (not_occupied seg_c6_c7_0_100))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_c6_c7_0_100 ?a)
       (not (not_blocked seg_c6_c7_0_100 ?a))))
 (:action
  ugly477ugly429ugly363ugly453ugly436ugly59ugly46ugly47ugly20move_seg_n4_n5_0_86_seg_n4_n5_6_0_86_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n4_n5_0_86) (not_occupied seg_n4_n5_6_0_86)
       (not_blocked seg_n4_n5_6_0_86 airplane_cfbeg)
       (not_blocked seg_n4_n5_6_0_86 airplane_dfboy))
  :effect
  (and (not (occupied seg_n4_n5_0_86)) (not_occupied seg_n4_n5_0_86)
       (not (at-segment ?a seg_n4_n5_0_86)) (occupied seg_n4_n5_6_0_86)
       (not (not_occupied seg_n4_n5_6_0_86)) (blocked seg_n4_n5_6_0_86 ?a)
       (not (not_blocked seg_n4_n5_6_0_86 ?a)) (at-segment ?a seg_n4_n5_6_0_86)
       (not (blocked seg_n5_n6_0_100 ?a)) (not_blocked seg_n5_n6_0_100 ?a)))
 (:action
  ugly478ugly422ugly375ugly469ugly448ugly70ugly66ugly57ugly114move_seg_n3_n_0_100_seg_n2_n3_0_85_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_n3_n_0_100) (not_occupied seg_n2_n3_0_85)
       (not_blocked seg_n2_n3_0_85 airplane_cfbeg)
       (not_blocked seg_n2_n3_0_85 airplane_dfboy))
  :effect
  (and (not (occupied seg_n3_n_0_100)) (not_occupied seg_n3_n_0_100)
       (not (at-segment ?a seg_n3_n_0_100)) (occupied seg_n2_n3_0_85)
       (not (not_occupied seg_n2_n3_0_85)) (blocked seg_n2_n3_0_85 ?a)
       (not (not_blocked seg_n2_n3_0_85 ?a)) (at-segment ?a seg_n2_n3_0_85)
       (not (blocked seg_n_n4_0_100 ?a)) (not_blocked seg_n_n4_0_100 ?a)
       (not (blocked seg_n_c_0_100 ?a)) (not_blocked seg_n_c_0_100 ?a)))) 