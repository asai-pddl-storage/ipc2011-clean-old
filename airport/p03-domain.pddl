
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (at-segment ?a - airplane ?s - segment) (is-moving ?a - airplane)
  (is-parked ?a - airplane ?s - segment)
  (not_blocked ?s - segment ?a - airplane) (not_occupied ?s - segment)
  (blocked ?s - segment ?a - airplane)
  (has-type ?a - airplane ?t - airplanetype)
  (facing ?a - airplane ?d - direction)
  (is-start-runway ?s - segment ?d - direction) (is-pushing ?a - airplane)
  (occupied ?s - segment) (airborne ?a - airplane ?s - segment))
 (:types airplane segment direction airplanetype)
 (:constants north south - direction light medium heavy - airplanetype
  seg_pp_0_60 seg_ppdoor_0_40 seg_tww1_0_200 seg_twe1_0_200 seg_tww2_0_50
  seg_tww3_0_50 seg_tww4_0_50 seg_rww_0_50 seg_rwtw1_0_10 seg_rw_0_400
  seg_rwe_0_50 seg_twe4_0_50 seg_rwte1_0_10 seg_twe3_0_50 seg_twe2_0_50
  seg_rwte2_0_10 seg_rwtw2_0_10 - segment airplane_cfbeg airplane_daewh -
  airplane)
 (:action
  ugly81ugly107ugly94ugly113ugly3ugly36ugly8ugly3startup_seg_twe4_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe4_0_50)
       (not_occupied seg_rwte1_0_10) (not_occupied seg_rwe_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_rwte1_0_10 ?a)
       (not (not_blocked seg_rwte1_0_10 ?a)) (blocked seg_rwe_0_50 ?a)
       (not (not_blocked seg_rwe_0_50 ?a))))
 (:action
  ugly82ugly103ugly88ugly119ugly38ugly22ugly13ugly2startup_seg_tww1_0_200_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww1_0_200)
       (not_occupied seg_ppdoor_0_40) (not_occupied seg_twe1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a))))
 (:action
  ugly83ugly111ugly86ugly115ugly20ugly35ugly18ugly26move_seg_ppdoor_0_40_seg_pp_0_60_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_ppdoor_0_40) (not_occupied seg_pp_0_60)
       (not_blocked seg_pp_0_60 airplane_cfbeg)
       (not_blocked seg_pp_0_60 airplane_daewh))
  :effect
  (and (not (occupied seg_ppdoor_0_40)) (not_occupied seg_ppdoor_0_40)
       (not (at-segment ?a seg_ppdoor_0_40)) (occupied seg_pp_0_60)
       (not (not_occupied seg_pp_0_60)) (blocked seg_pp_0_60 ?a)
       (not (not_blocked seg_pp_0_60 ?a)) (at-segment ?a seg_pp_0_60)
       (not (blocked seg_tww1_0_200 ?a)) (not_blocked seg_tww1_0_200 ?a)
       (not (blocked seg_twe1_0_200 ?a)) (not_blocked seg_twe1_0_200 ?a)))
 (:action
  ugly84ugly117ugly84ugly117ugly4ugly21ugly14ugly4park_seg_pp_0_60_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_pp_0_60) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_pp_0_60) (not (blocked seg_ppdoor_0_40 ?a))
       (not_blocked seg_ppdoor_0_40 ?a)))
 (:action
  ugly85ugly95ugly120ugly89ugly32ugly34ugly25ugly19startup_seg_tww2_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww2_0_50)
       (not_occupied seg_tww1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a))))
 (:action
  ugly86ugly115ugly100ugly104ugly26ugly15ugly24ugly9move_seg_pp_0_60_seg_ppdoor_0_40_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_pp_0_60) (not_occupied seg_ppdoor_0_40)
       (not_blocked seg_ppdoor_0_40 airplane_cfbeg)
       (not_blocked seg_ppdoor_0_40 airplane_daewh))
  :effect
  (and (not (occupied seg_pp_0_60)) (not_occupied seg_pp_0_60)
       (not (at-segment ?a seg_pp_0_60)) (occupied seg_ppdoor_0_40)
       (not (not_occupied seg_ppdoor_0_40)) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (at-segment ?a seg_ppdoor_0_40)))
 (:action
  ugly87ugly92ugly114ugly108ugly29ugly41ugly16ugly29startup_seg_twe2_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe2_0_50)
       (not_occupied seg_twe1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a))))
 (:action
  ugly88ugly119ugly118ugly81ugly27ugly33ugly40ugly12startup_seg_twe3_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe3_0_50)
       (not_occupied seg_twe4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe4_0_50 ?a)
       (not (not_blocked seg_twe4_0_50 ?a))))
 (:action
  ugly89ugly112ugly93ugly91ugly21ugly14ugly4ugly21move_seg_tww1_0_200_seg_ppdoor_0_40_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww1_0_200) (not_occupied seg_ppdoor_0_40)
       (not_blocked seg_ppdoor_0_40 airplane_cfbeg)
       (not_blocked seg_ppdoor_0_40 airplane_daewh)
       (not_occupied seg_twe1_0_200))
  :effect
  (and (not (occupied seg_tww1_0_200)) (not_occupied seg_tww1_0_200)
       (not (at-segment ?a seg_tww1_0_200)) (occupied seg_ppdoor_0_40)
       (not (not_occupied seg_ppdoor_0_40)) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (at-segment ?a seg_ppdoor_0_40)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_tww2_0_50 ?a)) (not_blocked seg_tww2_0_50 ?a)
       (blocked seg_twe1_0_200 ?a) (not (not_blocked seg_twe1_0_200 ?a))))
 (:action
  ugly90ugly105ugly121ugly96ugly18ugly26ugly15ugly24move_seg_rw_0_400_seg_rww_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rw_0_400) (not_occupied seg_rww_0_50)
       (not_blocked seg_rww_0_50 airplane_cfbeg)
       (not_blocked seg_rww_0_50 airplane_daewh) (not_occupied seg_rwe_0_50))
  :effect
  (and (not (occupied seg_rw_0_400)) (not_occupied seg_rw_0_400)
       (not (at-segment ?a seg_rw_0_400)) (occupied seg_rww_0_50)
       (not (not_occupied seg_rww_0_50)) (blocked seg_rww_0_50 ?a)
       (not (not_blocked seg_rww_0_50 ?a)) (at-segment ?a seg_rww_0_50)))
 (:action
  ugly91ugly101ugly102ugly90ugly25ugly19ugly31ugly10move_seg_twe2_0_50_seg_twe3_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe2_0_50) (not_occupied seg_twe3_0_50)
       (not_blocked seg_twe3_0_50 airplane_cfbeg)
       (not_blocked seg_twe3_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe2_0_50)) (not_occupied seg_twe2_0_50)
       (not (at-segment ?a seg_twe2_0_50)) (occupied seg_twe3_0_50)
       (not (not_occupied seg_twe3_0_50)) (blocked seg_twe3_0_50 ?a)
       (not (not_blocked seg_twe3_0_50 ?a)) (at-segment ?a seg_twe3_0_50)
       (not (blocked seg_twe1_0_200 ?a)) (not_blocked seg_twe1_0_200 ?a)))
 (:action
  ugly92ugly114ugly108ugly109ugly5ugly23ugly20ugly35takeoff_seg_rww_0_50_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_rww_0_50) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_rww_0_50)) (not_occupied seg_rww_0_50)
       (not (blocked seg_rww_0_50 ?a)) (not_blocked seg_rww_0_50 ?a)
       (not (at-segment ?a seg_rww_0_50)) (airborne ?a seg_rww_0_50)
       (not (is-moving ?a)) (not (blocked seg_tww4_0_50 ?a))
       (not_blocked seg_tww4_0_50 ?a) (not (blocked seg_tww4_0_50 ?a))
       (not_blocked seg_tww4_0_50 ?a)))
 (:action
  ugly93ugly91ugly101ugly102ugly10ugly5ugly23ugly20startup_seg_tww4_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww4_0_50)
       (not_occupied seg_tww3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww3_0_50 ?a)
       (not (not_blocked seg_tww3_0_50 ?a))))
 (:action
  ugly94ugly113ugly83ugly111ugly6ugly30ugly7ugly32startup_seg_tww4_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww4_0_50)
       (not_occupied seg_rww_0_50) (not_occupied seg_rwtw1_0_10))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_rww_0_50 ?a)
       (not (not_blocked seg_rww_0_50 ?a)) (blocked seg_rwtw1_0_10 ?a)
       (not (not_blocked seg_rwtw1_0_10 ?a))))
 (:action
  ugly95ugly120ugly89ugly112ugly13ugly2ugly27ugly33startup_seg_twe2_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe2_0_50)
       (not_occupied seg_twe3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe3_0_50 ?a)
       (not (not_blocked seg_twe3_0_50 ?a))))
 (:action
  ugly96ugly98ugly97ugly87ugly12ugly38ugly22ugly13move_seg_ppdoor_0_40_seg_tww1_0_200_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_ppdoor_0_40) (not_occupied seg_tww1_0_200)
       (not_blocked seg_tww1_0_200 airplane_cfbeg)
       (not_blocked seg_tww1_0_200 airplane_daewh)
       (not_occupied seg_twe1_0_200))
  :effect
  (and (not (occupied seg_ppdoor_0_40)) (not_occupied seg_ppdoor_0_40)
       (not (at-segment ?a seg_ppdoor_0_40)) (occupied seg_tww1_0_200)
       (not (not_occupied seg_tww1_0_200)) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a)) (at-segment ?a seg_tww1_0_200)
       (not (facing ?a north)) (facing ?a south) (not (blocked seg_pp_0_60 ?a))
       (not_blocked seg_pp_0_60 ?a) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a))))
 (:action
  ugly97ugly87ugly92ugly114ugly28ugly6ugly30ugly7startup_seg_tww3_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww3_0_50)
       (not_occupied seg_tww4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww4_0_50 ?a)
       (not (not_blocked seg_tww4_0_50 ?a))))
 (:action
  ugly98ugly97ugly87ugly92ugly34ugly25ugly19ugly31move_seg_rww_0_50_seg_tww4_0_50_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rww_0_50) (not_occupied seg_tww4_0_50)
       (not_blocked seg_tww4_0_50 airplane_cfbeg)
       (not_blocked seg_tww4_0_50 airplane_daewh)
       (not_occupied seg_rwtw1_0_10))
  :effect
  (and (not (occupied seg_rww_0_50)) (not_occupied seg_rww_0_50)
       (not (at-segment ?a seg_rww_0_50)) (occupied seg_tww4_0_50)
       (not (not_occupied seg_tww4_0_50)) (blocked seg_tww4_0_50 ?a)
       (not (not_blocked seg_tww4_0_50 ?a)) (at-segment ?a seg_tww4_0_50)
       (not (facing ?a south)) (facing ?a north)
       (not (blocked seg_rwe_0_50 ?a)) (not_blocked seg_rwe_0_50 ?a)
       (not (blocked seg_rw_0_400 ?a)) (not_blocked seg_rw_0_400 ?a)
       (blocked seg_rwtw1_0_10 ?a) (not (not_blocked seg_rwtw1_0_10 ?a))))
 (:action
  ugly99ugly99ugly99ugly99ugly19ugly31ugly10ugly5startup_seg_pp_0_60_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_pp_0_60)
       (not_occupied seg_ppdoor_0_40))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a))))
 (:action
  ugly100ugly104ugly106ugly116ugly2ugly27ugly33ugly40move_seg_tww3_0_50_seg_tww2_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww3_0_50) (not_occupied seg_tww2_0_50)
       (not_blocked seg_tww2_0_50 airplane_cfbeg)
       (not_blocked seg_tww2_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_tww3_0_50)) (not_occupied seg_tww3_0_50)
       (not (at-segment ?a seg_tww3_0_50)) (occupied seg_tww2_0_50)
       (not (not_occupied seg_tww2_0_50)) (blocked seg_tww2_0_50 ?a)
       (not (not_blocked seg_tww2_0_50 ?a)) (at-segment ?a seg_tww2_0_50)
       (not (blocked seg_tww4_0_50 ?a)) (not_blocked seg_tww4_0_50 ?a)))
 (:action
  ugly101ugly102ugly90ugly105ugly41ugly16ugly29ugly41pushback_seg_pp_0_60_seg_ppdoor_0_40_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_pp_0_60) (not_occupied seg_ppdoor_0_40)
       (not_blocked seg_ppdoor_0_40 airplane_cfbeg)
       (not_blocked seg_ppdoor_0_40 airplane_daewh))
  :effect
  (and (not (occupied seg_pp_0_60)) (not_occupied seg_pp_0_60)
       (not (blocked seg_pp_0_60 ?a)) (not_blocked seg_pp_0_60 ?a)
       (not (at-segment ?a seg_pp_0_60)) (occupied seg_ppdoor_0_40)
       (not (not_occupied seg_ppdoor_0_40)) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (at-segment ?a seg_ppdoor_0_40)))
 (:action
  ugly102ugly90ugly105ugly121ugly16ugly29ugly41ugly16startup_seg_twe1_0_200_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe1_0_200)
       (not_occupied seg_ppdoor_0_40) (not_occupied seg_tww1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a))))
 (:action
  ugly103ugly88ugly119ugly118ugly1ugly37ugly17ugly11startup_seg_twe1_0_200_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe1_0_200)
       (not_occupied seg_twe2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe2_0_50 ?a)
       (not (not_blocked seg_twe2_0_50 ?a))))
 (:action
  ugly104ugly106ugly116ugly82ugly23ugly20ugly35ugly18startup_seg_tww1_0_200_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww1_0_200)
       (not_occupied seg_tww2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww2_0_50 ?a)
       (not (not_blocked seg_tww2_0_50 ?a))))
 (:action
  ugly105ugly121ugly96ugly98ugly17ugly11ugly28ugly6startup_seg_tww2_0_50_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww2_0_50)
       (not_occupied seg_tww3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww3_0_50 ?a)
       (not (not_blocked seg_tww3_0_50 ?a))))
 (:action
  ugly106ugly116ugly82ugly103ugly8ugly3ugly36ugly8move_seg_tww1_0_200_seg_twe1_0_200_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww1_0_200) (not_occupied seg_twe1_0_200)
       (not_blocked seg_twe1_0_200 airplane_cfbeg)
       (not_blocked seg_twe1_0_200 airplane_daewh)
       (not_occupied seg_ppdoor_0_40))
  :effect
  (and (not (occupied seg_tww1_0_200)) (not_occupied seg_tww1_0_200)
       (not (at-segment ?a seg_tww1_0_200)) (occupied seg_twe1_0_200)
       (not (not_occupied seg_twe1_0_200)) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a)) (at-segment ?a seg_twe1_0_200)
       (not (facing ?a north)) (facing ?a south)
       (not (blocked seg_tww2_0_50 ?a)) (not_blocked seg_tww2_0_50 ?a)
       (blocked seg_ppdoor_0_40 ?a) (not (not_blocked seg_ppdoor_0_40 ?a))))
 (:action
  ugly107ugly94ugly113ugly83ugly31ugly10ugly5ugly23park_seg_pp_0_60_north
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_pp_0_60) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_pp_0_60)))
 (:action
  ugly108ugly109ugly85ugly95ugly40ugly12ugly38ugly22move_seg_tww2_0_50_seg_tww1_0_200_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww2_0_50) (not_occupied seg_tww1_0_200)
       (not_blocked seg_tww1_0_200 airplane_cfbeg)
       (not_blocked seg_tww1_0_200 airplane_daewh))
  :effect
  (and (not (occupied seg_tww2_0_50)) (not_occupied seg_tww2_0_50)
       (not (at-segment ?a seg_tww2_0_50)) (occupied seg_tww1_0_200)
       (not (not_occupied seg_tww1_0_200)) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a)) (at-segment ?a seg_tww1_0_200)
       (not (blocked seg_tww3_0_50 ?a)) (not_blocked seg_tww3_0_50 ?a)))
 (:action
  ugly109ugly85ugly95ugly120ugly9ugly1ugly37ugly17move_seg_tww4_0_50_seg_tww3_0_50_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww4_0_50) (not_occupied seg_tww3_0_50)
       (not_blocked seg_tww3_0_50 airplane_cfbeg)
       (not_blocked seg_tww3_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_tww4_0_50)) (not_occupied seg_tww4_0_50)
       (not (at-segment ?a seg_tww4_0_50)) (occupied seg_tww3_0_50)
       (not (not_occupied seg_tww3_0_50)) (blocked seg_tww3_0_50 ?a)
       (not (not_blocked seg_tww3_0_50 ?a)) (at-segment ?a seg_tww3_0_50)
       (not (blocked seg_rww_0_50 ?a)) (not_blocked seg_rww_0_50 ?a)
       (not (blocked seg_rwtw1_0_10 ?a)) (not_blocked seg_rwtw1_0_10 ?a)))
 (:action
  ugly110ugly110ugly110ugly110ugly30ugly7ugly32ugly34startup_seg_ppdoor_0_40_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_ppdoor_0_40)
       (not_occupied seg_tww1_0_200) (not_occupied seg_twe1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a)) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a))))
 (:action
  ugly111ugly86ugly115ugly100ugly24ugly9ugly1ugly37pushback_seg_ppdoor_0_40_seg_tww1_0_200_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_ppdoor_0_40) (not_occupied seg_tww1_0_200)
       (not_blocked seg_tww1_0_200 airplane_cfbeg)
       (not_blocked seg_tww1_0_200 airplane_daewh))
  :effect
  (and (not (occupied seg_ppdoor_0_40)) (not_occupied seg_ppdoor_0_40)
       (not (blocked seg_ppdoor_0_40 ?a)) (not_blocked seg_ppdoor_0_40 ?a)
       (not (at-segment ?a seg_ppdoor_0_40)) (occupied seg_tww1_0_200)
       (not (not_occupied seg_tww1_0_200)) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a)) (at-segment ?a seg_tww1_0_200)
       (not (facing ?a south)) (facing ?a north)))
 (:action
  ugly112ugly93ugly91ugly101ugly22ugly13ugly2ugly27startup_seg_tww3_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww3_0_50)
       (not_occupied seg_tww2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww2_0_50 ?a)
       (not (not_blocked seg_tww2_0_50 ?a))))
 (:action
  ugly113ugly83ugly111ugly86ugly35ugly18ugly26ugly15startup_seg_ppdoor_0_40_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_ppdoor_0_40)
       (not_occupied seg_pp_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_pp_0_60 ?a)
       (not (not_blocked seg_pp_0_60 ?a))))
 (:action
  ugly114ugly108ugly109ugly85ugly15ugly24ugly9ugly1startup_seg_twe4_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe4_0_50)
       (not_occupied seg_twe3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe3_0_50 ?a)
       (not (not_blocked seg_twe3_0_50 ?a))))
 (:action
  ugly115ugly100ugly104ugly106ugly36ugly8ugly3ugly36move_seg_rwe_0_50_seg_rw_0_400_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwe_0_50) (not_occupied seg_rw_0_400)
       (not_blocked seg_rw_0_400 airplane_cfbeg)
       (not_blocked seg_rw_0_400 airplane_daewh))
  :effect
  (and (not (occupied seg_rwe_0_50)) (not_occupied seg_rwe_0_50)
       (not (at-segment ?a seg_rwe_0_50)) (occupied seg_rw_0_400)
       (not (not_occupied seg_rw_0_400)) (blocked seg_rw_0_400 ?a)
       (not (not_blocked seg_rw_0_400 ?a)) (at-segment ?a seg_rw_0_400)
       (not (blocked seg_twe4_0_50 ?a)) (not_blocked seg_twe4_0_50 ?a)
       (not (blocked seg_twe4_0_50 ?a)) (not_blocked seg_twe4_0_50 ?a)))
 (:action
  ugly116ugly82ugly103ugly88ugly39ugly39ugly39ugly39startup_seg_twe3_0_50_south_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe3_0_50)
       (not_occupied seg_twe2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe2_0_50 ?a)
       (not (not_blocked seg_twe2_0_50 ?a))))
 (:action
  ugly117ugly84ugly117ugly84ugly37ugly17ugly11ugly28move_seg_twe3_0_50_seg_twe4_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe3_0_50) (not_occupied seg_twe4_0_50)
       (not_blocked seg_twe4_0_50 airplane_cfbeg)
       (not_blocked seg_twe4_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe3_0_50)) (not_occupied seg_twe3_0_50)
       (not (at-segment ?a seg_twe3_0_50)) (occupied seg_twe4_0_50)
       (not (not_occupied seg_twe4_0_50)) (blocked seg_twe4_0_50 ?a)
       (not (not_blocked seg_twe4_0_50 ?a)) (at-segment ?a seg_twe4_0_50)
       (not (blocked seg_twe2_0_50 ?a)) (not_blocked seg_twe2_0_50 ?a)))
 (:action
  ugly118ugly81ugly107ugly94ugly33ugly40ugly12ugly38startup_seg_pp_0_60_north_medium
  :parameters (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_pp_0_60)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action
  ugly119ugly118ugly81ugly107ugly14ugly4ugly21ugly14move_seg_twe1_0_200_seg_twe2_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe1_0_200) (not_occupied seg_twe2_0_50)
       (not_blocked seg_twe2_0_50 airplane_cfbeg)
       (not_blocked seg_twe2_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe1_0_200)) (not_occupied seg_twe1_0_200)
       (not (at-segment ?a seg_twe1_0_200)) (occupied seg_twe2_0_50)
       (not (not_occupied seg_twe2_0_50)) (blocked seg_twe2_0_50 ?a)
       (not (not_blocked seg_twe2_0_50 ?a)) (at-segment ?a seg_twe2_0_50)
       (not (blocked seg_ppdoor_0_40 ?a)) (not_blocked seg_ppdoor_0_40 ?a)
       (not (blocked seg_tww1_0_200 ?a)) (not_blocked seg_tww1_0_200 ?a)))
 (:action
  ugly120ugly89ugly112ugly93ugly11ugly28ugly6ugly30move_seg_twe4_0_50_seg_rwe_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe4_0_50) (not_occupied seg_rwe_0_50)
       (not_blocked seg_rwe_0_50 airplane_cfbeg)
       (not_blocked seg_rwe_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe4_0_50)) (not_occupied seg_twe4_0_50)
       (not (at-segment ?a seg_twe4_0_50)) (occupied seg_rwe_0_50)
       (not (not_occupied seg_rwe_0_50)) (blocked seg_rwe_0_50 ?a)
       (not (not_blocked seg_rwe_0_50 ?a)) (at-segment ?a seg_rwe_0_50)
       (not (blocked seg_twe3_0_50 ?a)) (not_blocked seg_twe3_0_50 ?a)))
 (:action
  ugly121ugly96ugly98ugly97ugly7ugly32ugly34ugly25takeoff_seg_rwe_0_50_south
  :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_rwe_0_50) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_rwe_0_50)) (not_occupied seg_rwe_0_50)
       (not (blocked seg_rwe_0_50 ?a)) (not_blocked seg_rwe_0_50 ?a)
       (not (at-segment ?a seg_rwe_0_50)) (airborne ?a seg_rwe_0_50)
       (not (is-moving ?a)) (not (blocked seg_twe4_0_50 ?a))
       (not_blocked seg_twe4_0_50 ?a) (not (blocked seg_twe4_0_50 ?a))
       (not_blocked seg_twe4_0_50 ?a)))) 