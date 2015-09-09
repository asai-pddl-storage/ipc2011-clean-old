
(define (domain airport_fixed_structure) (:requirements :typing)
 (:predicates (not_blocked ?s - segment ?a - airplane)
  (is-pushing ?a - airplane) (is-start-runway ?s - segment ?d - direction)
  (not_occupied ?s - segment) (has-type ?a - airplane ?t - airplanetype)
  (airborne ?a - airplane ?s - segment) (is-moving ?a - airplane)
  (is-parked ?a - airplane ?s - segment)
  (at-segment ?a - airplane ?s - segment) (occupied ?s - segment)
  (facing ?a - airplane ?d - direction) (blocked ?s - segment ?a - airplane))
 (:types airplane segment direction airplanetype)
 (:constants north south - direction light medium heavy - airplanetype
  seg_pp_0_60 seg_ppdoor_0_40 seg_tww1_0_200 seg_twe1_0_200 seg_tww2_0_50
  seg_tww3_0_50 seg_tww4_0_50 seg_rww_0_50 seg_rwtw1_0_10 seg_rw_0_400
  seg_rwe_0_50 seg_twe4_0_50 seg_rwte1_0_10 seg_twe3_0_50 seg_twe2_0_50
  seg_rwte2_0_10 seg_rwtw2_0_10 - segment airplane_daewh - airplane)
 (:action ugly1startup_seg_twe4_0_50_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe4_0_50)
       (not_occupied seg_twe3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe3_0_50 ?a)
       (not (not_blocked seg_twe3_0_50 ?a))))
 (:action ugly2startup_seg_tww1_0_200_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww1_0_200)
       (not_occupied seg_ppdoor_0_40) (not_occupied seg_twe1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a))))
 (:action ugly3startup_seg_twe4_0_50_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe4_0_50)
       (not_occupied seg_rwte1_0_10) (not_occupied seg_rwe_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_rwte1_0_10 ?a)
       (not (not_blocked seg_rwte1_0_10 ?a)) (blocked seg_rwe_0_50 ?a)
       (not (not_blocked seg_rwe_0_50 ?a))))
 (:action ugly4park_seg_pp_0_60_south :parameters (?a - airplane) :precondition
  (and (at-segment ?a seg_pp_0_60) (facing ?a south) (is-moving ?a)) :effect
  (and (is-parked ?a seg_pp_0_60) (not (is-moving ?a))
       (not (blocked seg_ppdoor_0_40 ?a)) (not_blocked seg_ppdoor_0_40 ?a)))
 (:action ugly5startup_seg_pp_0_60_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_pp_0_60)
       (not_occupied seg_ppdoor_0_40))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a))))
 (:action ugly6startup_seg_tww2_0_50_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww2_0_50)
       (not_occupied seg_tww3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww3_0_50 ?a)
       (not (not_blocked seg_tww3_0_50 ?a))))
 (:action ugly7startup_seg_tww3_0_50_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww3_0_50)
       (not_occupied seg_tww4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww4_0_50 ?a)
       (not (not_blocked seg_tww4_0_50 ?a))))
 (:action ugly8move_seg_tww1_0_200_seg_twe1_0_200_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww1_0_200) (not_occupied seg_twe1_0_200)
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
 (:action ugly9move_seg_pp_0_60_seg_ppdoor_0_40_north_north_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_pp_0_60) (not_occupied seg_ppdoor_0_40)
       (not_blocked seg_ppdoor_0_40 airplane_daewh))
  :effect
  (and (not (occupied seg_pp_0_60)) (not_occupied seg_pp_0_60)
       (not (at-segment ?a seg_pp_0_60)) (occupied seg_ppdoor_0_40)
       (not (not_occupied seg_ppdoor_0_40)) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (at-segment ?a seg_ppdoor_0_40)))
 (:action ugly10move_seg_twe2_0_50_seg_twe3_0_50_south_south_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe2_0_50) (not_occupied seg_twe3_0_50)
       (not_blocked seg_twe3_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe2_0_50)) (not_occupied seg_twe2_0_50)
       (not (at-segment ?a seg_twe2_0_50)) (occupied seg_twe3_0_50)
       (not (not_occupied seg_twe3_0_50)) (blocked seg_twe3_0_50 ?a)
       (not (not_blocked seg_twe3_0_50 ?a)) (at-segment ?a seg_twe3_0_50)
       (not (blocked seg_twe1_0_200 ?a)) (not_blocked seg_twe1_0_200 ?a)))
 (:action ugly11startup_seg_twe1_0_200_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe1_0_200)
       (not_occupied seg_twe2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe2_0_50 ?a)
       (not (not_blocked seg_twe2_0_50 ?a))))
 (:action ugly12startup_seg_twe3_0_50_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe3_0_50)
       (not_occupied seg_twe4_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe4_0_50 ?a)
       (not (not_blocked seg_twe4_0_50 ?a))))
 (:action ugly13move_seg_ppdoor_0_40_seg_tww1_0_200_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_ppdoor_0_40) (not_occupied seg_tww1_0_200)
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
 (:action ugly14move_seg_twe1_0_200_seg_twe2_0_50_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe1_0_200) (not_occupied seg_twe2_0_50)
       (not_blocked seg_twe2_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe1_0_200)) (not_occupied seg_twe1_0_200)
       (not (at-segment ?a seg_twe1_0_200)) (occupied seg_twe2_0_50)
       (not (not_occupied seg_twe2_0_50)) (blocked seg_twe2_0_50 ?a)
       (not (not_blocked seg_twe2_0_50 ?a)) (at-segment ?a seg_twe2_0_50)
       (not (blocked seg_ppdoor_0_40 ?a)) (not_blocked seg_ppdoor_0_40 ?a)
       (not (blocked seg_tww1_0_200 ?a)) (not_blocked seg_tww1_0_200 ?a)))
 (:action ugly15startup_seg_ppdoor_0_40_north_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_ppdoor_0_40)
       (not_occupied seg_pp_0_60))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_pp_0_60 ?a)
       (not (not_blocked seg_pp_0_60 ?a))))
 (:action ugly16startup_seg_twe1_0_200_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe1_0_200)
       (not_occupied seg_ppdoor_0_40) (not_occupied seg_tww1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a))))
 (:action ugly17move_seg_tww4_0_50_seg_tww3_0_50_north_north_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww4_0_50) (not_occupied seg_tww3_0_50)
       (not_blocked seg_tww3_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_tww4_0_50)) (not_occupied seg_tww4_0_50)
       (not (at-segment ?a seg_tww4_0_50)) (occupied seg_tww3_0_50)
       (not (not_occupied seg_tww3_0_50)) (blocked seg_tww3_0_50 ?a)
       (not (not_blocked seg_tww3_0_50 ?a)) (at-segment ?a seg_tww3_0_50)
       (not (blocked seg_rww_0_50 ?a)) (not_blocked seg_rww_0_50 ?a)
       (not (blocked seg_rwtw1_0_10 ?a)) (not_blocked seg_rwtw1_0_10 ?a)))
 (:action ugly18startup_seg_tww1_0_200_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww1_0_200)
       (not_occupied seg_tww2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww2_0_50 ?a)
       (not (not_blocked seg_tww2_0_50 ?a))))
 (:action ugly19startup_seg_tww2_0_50_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww2_0_50)
       (not_occupied seg_tww1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a))))
 (:action ugly20startup_seg_tww4_0_50_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww4_0_50)
       (not_occupied seg_tww3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww3_0_50 ?a)
       (not (not_blocked seg_tww3_0_50 ?a))))
 (:action ugly21move_seg_tww1_0_200_seg_ppdoor_0_40_north_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww1_0_200) (not_occupied seg_ppdoor_0_40)
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
 (:action ugly22move_seg_tww2_0_50_seg_tww1_0_200_north_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww2_0_50) (not_occupied seg_tww1_0_200)
       (not_blocked seg_tww1_0_200 airplane_daewh))
  :effect
  (and (not (occupied seg_tww2_0_50)) (not_occupied seg_tww2_0_50)
       (not (at-segment ?a seg_tww2_0_50)) (occupied seg_tww1_0_200)
       (not (not_occupied seg_tww1_0_200)) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a)) (at-segment ?a seg_tww1_0_200)
       (not (blocked seg_tww3_0_50 ?a)) (not_blocked seg_tww3_0_50 ?a)))
 (:action ugly23park_seg_pp_0_60_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_pp_0_60) (facing ?a north) (is-moving ?a)) :effect
  (and (is-parked ?a seg_pp_0_60) (not (is-moving ?a))))
 (:action ugly24move_seg_rw_0_400_seg_rww_0_50_south_south_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rw_0_400) (not_occupied seg_rww_0_50)
       (not_blocked seg_rww_0_50 airplane_daewh) (not_occupied seg_rwe_0_50))
  :effect
  (and (not (occupied seg_rw_0_400)) (not_occupied seg_rw_0_400)
       (not (at-segment ?a seg_rw_0_400)) (occupied seg_rww_0_50)
       (not (not_occupied seg_rww_0_50)) (blocked seg_rww_0_50 ?a)
       (not (not_blocked seg_rww_0_50 ?a)) (at-segment ?a seg_rww_0_50)))
 (:action ugly25takeoff_seg_rwe_0_50_south :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_rwe_0_50) (facing ?a south) (is-moving ?a)) :effect
  (and (not (occupied seg_rwe_0_50)) (not_occupied seg_rwe_0_50)
       (not (blocked seg_rwe_0_50 ?a)) (not_blocked seg_rwe_0_50 ?a)
       (not (at-segment ?a seg_rwe_0_50)) (airborne ?a seg_rwe_0_50)
       (not (is-moving ?a)) (not (blocked seg_twe4_0_50 ?a))
       (not_blocked seg_twe4_0_50 ?a)))
 (:action ugly26move_seg_ppdoor_0_40_seg_pp_0_60_south_south_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_ppdoor_0_40) (not_occupied seg_pp_0_60)
       (not_blocked seg_pp_0_60 airplane_daewh))
  :effect
  (and (not (occupied seg_ppdoor_0_40)) (not_occupied seg_ppdoor_0_40)
       (not (at-segment ?a seg_ppdoor_0_40)) (occupied seg_pp_0_60)
       (not (not_occupied seg_pp_0_60)) (blocked seg_pp_0_60 ?a)
       (not (not_blocked seg_pp_0_60 ?a)) (at-segment ?a seg_pp_0_60)
       (not (blocked seg_tww1_0_200 ?a)) (not_blocked seg_tww1_0_200 ?a)
       (not (blocked seg_twe1_0_200 ?a)) (not_blocked seg_twe1_0_200 ?a)))
 (:action ugly27startup_seg_tww3_0_50_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww3_0_50)
       (not_occupied seg_tww2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww2_0_50 ?a)
       (not (not_blocked seg_tww2_0_50 ?a))))
 (:action ugly28move_seg_twe3_0_50_seg_twe4_0_50_south_south_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe3_0_50) (not_occupied seg_twe4_0_50)
       (not_blocked seg_twe4_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe3_0_50)) (not_occupied seg_twe3_0_50)
       (not (at-segment ?a seg_twe3_0_50)) (occupied seg_twe4_0_50)
       (not (not_occupied seg_twe4_0_50)) (blocked seg_twe4_0_50 ?a)
       (not (not_blocked seg_twe4_0_50 ?a)) (at-segment ?a seg_twe4_0_50)
       (not (blocked seg_twe2_0_50 ?a)) (not_blocked seg_twe2_0_50 ?a)))
 (:action ugly29startup_seg_twe2_0_50_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe2_0_50)
       (not_occupied seg_twe1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a))))
 (:action ugly30move_seg_twe4_0_50_seg_rwe_0_50_south_south_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_twe4_0_50) (not_occupied seg_rwe_0_50)
       (not_blocked seg_rwe_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_twe4_0_50)) (not_occupied seg_twe4_0_50)
       (not (at-segment ?a seg_twe4_0_50)) (occupied seg_rwe_0_50)
       (not (not_occupied seg_rwe_0_50)) (blocked seg_rwe_0_50 ?a)
       (not (not_blocked seg_rwe_0_50 ?a)) (at-segment ?a seg_rwe_0_50)
       (not (blocked seg_twe3_0_50 ?a)) (not_blocked seg_twe3_0_50 ?a)))
 (:action ugly31move_seg_rww_0_50_seg_tww4_0_50_south_north_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rww_0_50) (not_occupied seg_tww4_0_50)
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
 (:action ugly32startup_seg_tww4_0_50_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_tww4_0_50)
       (not_occupied seg_rww_0_50) (not_occupied seg_rwtw1_0_10))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_rww_0_50 ?a)
       (not (not_blocked seg_rww_0_50 ?a)) (blocked seg_rwtw1_0_10 ?a)
       (not (not_blocked seg_rwtw1_0_10 ?a))))
 (:action ugly33startup_seg_twe2_0_50_north_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe2_0_50)
       (not_occupied seg_twe3_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe3_0_50 ?a)
       (not (not_blocked seg_twe3_0_50 ?a))))
 (:action ugly34startup_seg_ppdoor_0_40_south_medium :parameters
  (?a - airplane) :precondition
  (and (is-pushing ?a) (at-segment ?a seg_ppdoor_0_40)
       (not_occupied seg_tww1_0_200) (not_occupied seg_twe1_0_200))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a)) (blocked seg_twe1_0_200 ?a)
       (not (not_blocked seg_twe1_0_200 ?a))))
 (:action ugly35takeoff_seg_rww_0_50_north :parameters (?a - airplane)
  :precondition
  (and (at-segment ?a seg_rww_0_50) (facing ?a north) (is-moving ?a)) :effect
  (and (not (occupied seg_rww_0_50)) (not_occupied seg_rww_0_50)
       (not (blocked seg_rww_0_50 ?a)) (not_blocked seg_rww_0_50 ?a)
       (not (at-segment ?a seg_rww_0_50)) (airborne ?a seg_rww_0_50)
       (not (is-moving ?a)) (not (blocked seg_tww4_0_50 ?a))
       (not_blocked seg_tww4_0_50 ?a)))
 (:action ugly36move_seg_rwe_0_50_seg_rw_0_400_south_south_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a south)
       (at-segment ?a seg_rwe_0_50) (not_occupied seg_rw_0_400)
       (not_blocked seg_rw_0_400 airplane_daewh))
  :effect
  (and (not (occupied seg_rwe_0_50)) (not_occupied seg_rwe_0_50)
       (not (at-segment ?a seg_rwe_0_50)) (occupied seg_rw_0_400)
       (not (not_occupied seg_rw_0_400)) (blocked seg_rw_0_400 ?a)
       (not (not_blocked seg_rw_0_400 ?a)) (at-segment ?a seg_rw_0_400)
       (not (blocked seg_twe4_0_50 ?a)) (not_blocked seg_twe4_0_50 ?a)))
 (:action ugly37pushback_seg_ppdoor_0_40_seg_tww1_0_200_south_north_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_ppdoor_0_40) (not_occupied seg_tww1_0_200)
       (not_blocked seg_tww1_0_200 airplane_daewh))
  :effect
  (and (not (occupied seg_ppdoor_0_40)) (not_occupied seg_ppdoor_0_40)
       (not (blocked seg_ppdoor_0_40 ?a)) (not_blocked seg_ppdoor_0_40 ?a)
       (not (at-segment ?a seg_ppdoor_0_40)) (occupied seg_tww1_0_200)
       (not (not_occupied seg_tww1_0_200)) (blocked seg_tww1_0_200 ?a)
       (not (not_blocked seg_tww1_0_200 ?a)) (at-segment ?a seg_tww1_0_200)
       (not (facing ?a south)) (facing ?a north)))
 (:action ugly38startup_seg_pp_0_60_north_medium :parameters (?a - airplane)
  :precondition (and (is-pushing ?a) (at-segment ?a seg_pp_0_60)) :effect
  (and (not (is-pushing ?a)) (is-moving ?a)))
 (:action ugly39startup_seg_twe3_0_50_south_medium :parameters (?a - airplane)
  :precondition
  (and (is-pushing ?a) (at-segment ?a seg_twe3_0_50)
       (not_occupied seg_twe2_0_50))
  :effect
  (and (not (is-pushing ?a)) (is-moving ?a) (blocked seg_twe2_0_50 ?a)
       (not (not_blocked seg_twe2_0_50 ?a))))
 (:action ugly40move_seg_tww3_0_50_seg_tww2_0_50_north_north_medium :parameters
  (?a - airplane) :precondition
  (and (has-type ?a medium) (is-moving ?a) (facing ?a north)
       (at-segment ?a seg_tww3_0_50) (not_occupied seg_tww2_0_50)
       (not_blocked seg_tww2_0_50 airplane_daewh))
  :effect
  (and (not (occupied seg_tww3_0_50)) (not_occupied seg_tww3_0_50)
       (not (at-segment ?a seg_tww3_0_50)) (occupied seg_tww2_0_50)
       (not (not_occupied seg_tww2_0_50)) (blocked seg_tww2_0_50 ?a)
       (not (not_blocked seg_tww2_0_50 ?a)) (at-segment ?a seg_tww2_0_50)
       (not (blocked seg_tww4_0_50 ?a)) (not_blocked seg_tww4_0_50 ?a)))
 (:action ugly41pushback_seg_pp_0_60_seg_ppdoor_0_40_south_south_medium
  :parameters (?a - airplane) :precondition
  (and (has-type ?a medium) (is-pushing ?a) (facing ?a south)
       (at-segment ?a seg_pp_0_60) (not_occupied seg_ppdoor_0_40)
       (not_blocked seg_ppdoor_0_40 airplane_daewh))
  :effect
  (and (not (occupied seg_pp_0_60)) (not_occupied seg_pp_0_60)
       (not (blocked seg_pp_0_60 ?a)) (not_blocked seg_pp_0_60 ?a)
       (not (at-segment ?a seg_pp_0_60)) (occupied seg_ppdoor_0_40)
       (not (not_occupied seg_ppdoor_0_40)) (blocked seg_ppdoor_0_40 ?a)
       (not (not_blocked seg_ppdoor_0_40 ?a)) (at-segment ?a seg_ppdoor_0_40)))) 