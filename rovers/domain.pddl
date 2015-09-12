
(define (domain rover) (:requirements :typing)
 (:predicates (full ?s - store) (available ?r - rover)
  (equipped_for_rock_analysis ?r - rover) (at ?x - rover ?y - waypoint)
  (at_lander ?x - lander ?y - waypoint)
  (have_soil_analysis ?r - rover ?w - waypoint)
  (calibrated ?c - camera ?r - rover) (communicated_rock_data ?w - waypoint)
  (visible_from ?o - objective ?w - waypoint) (on_board ?i - camera ?r - rover)
  (equipped_for_imaging ?r - rover) (empty ?s - store)
  (have_image ?r - rover ?o - objective ?m - mode)
  (communicated_soil_data ?w - waypoint) (at_rock_sample ?w - waypoint)
  (have_rock_analysis ?r - rover ?w - waypoint)
  (can_traverse ?r - rover ?x - waypoint ?y - waypoint)
  (communicated_image_data ?o - objective ?m - mode)
  (calibration_target ?i - camera ?o - objective)
  (equipped_for_soil_analysis ?r - rover) (supports ?c - camera ?m - mode)
  (store_of ?s - store ?r - rover) (at_soil_sample ?w - waypoint)
  (channel_free ?l - lander) (visible ?w - waypoint ?p - waypoint))
 (:types rover waypoint store camera mode lander objective)
 (:action ugly1450376ugly2ugly4ugly5ugly8navigate :parameters
  (?x - rover ?y - waypoint ?z - waypoint) :precondition
  (and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
  :effect (and (not (at ?x ?y)) (at ?x ?z)))
 (:action ugly1450377ugly6ugly6ugly6ugly6take_image :parameters
  (?r - rover ?p - waypoint ?o - objective ?i - camera ?m - mode) :precondition
  (and (calibrated ?i ?r) (on_board ?i ?r) (equipped_for_imaging ?r)
       (supports ?i ?m) (visible_from ?o ?p) (at ?r ?p))
  :effect (and (have_image ?r ?o ?m) (not (calibrated ?i ?r))))
 (:action ugly1450378ugly9ugly3ugly9ugly3communicate_image_data :parameters
  (?r - rover ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
  :precondition
  (and (at ?r ?x) (at_lander ?l ?y) (have_image ?r ?o ?m) (visible ?x ?y)
       (available ?r) (channel_free ?l))
  :effect
  (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l)
       (communicated_image_data ?o ?m) (available ?r)))
 (:action ugly1450379ugly5ugly8ugly1ugly2drop :parameters
  (?x - rover ?y - store) :precondition (and (store_of ?y ?x) (full ?y))
  :effect (and (not (full ?y)) (empty ?y)))
 (:action ugly1450380ugly4ugly5ugly8ugly1sample_soil :parameters
  (?x - rover ?s - store ?p - waypoint) :precondition
  (and (at ?x ?p) (at_soil_sample ?p) (equipped_for_soil_analysis ?x)
       (store_of ?s ?x) (empty ?s))
  :effect
  (and (not (empty ?s)) (full ?s) (have_soil_analysis ?x ?p)
       (not (at_soil_sample ?p))))
 (:action ugly1450381ugly1ugly2ugly4ugly5communicate_rock_data :parameters
  (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
  :precondition
  (and (at ?r ?x) (at_lander ?l ?y) (have_rock_analysis ?r ?p) (visible ?x ?y)
       (available ?r) (channel_free ?l))
  :effect
  (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l)
       (communicated_rock_data ?p) (available ?r)))
 (:action ugly1450382ugly7ugly7ugly7ugly7communicate_soil_data :parameters
  (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
  :precondition
  (and (at ?r ?x) (at_lander ?l ?y) (have_soil_analysis ?r ?p) (visible ?x ?y)
       (available ?r) (channel_free ?l))
  :effect
  (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l)
       (communicated_soil_data ?p) (available ?r)))
 (:action ugly1450383ugly8ugly1ugly2ugly4calibrate :parameters
  (?r - rover ?i - camera ?t - objective ?w - waypoint) :precondition
  (and (equipped_for_imaging ?r) (calibration_target ?i ?t) (at ?r ?w)
       (visible_from ?t ?w) (on_board ?i ?r))
  :effect (calibrated ?i ?r))
 (:action ugly1450384ugly3ugly9ugly3ugly9sample_rock :parameters
  (?x - rover ?s - store ?p - waypoint) :precondition
  (and (at ?x ?p) (at_rock_sample ?p) (equipped_for_rock_analysis ?x)
       (store_of ?s ?x) (empty ?s))
  :effect
  (and (not (empty ?s)) (full ?s) (have_rock_analysis ?x ?p)
       (not (at_rock_sample ?p))))) 