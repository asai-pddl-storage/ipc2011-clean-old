
(define (domain rover) (:requirements :typing :action-costs)
 (:predicates (empty ?s - store)
  (can_traverse ?r - rover ?x - waypoint ?y - waypoint)
  (calibrated ?c - camera ?r - rover) (on_board ?i - camera ?r - rover)
  (visible_from ?o - objective ?w - waypoint) (available ?r - rover)
  (have_image ?r - rover ?o - objective ?m - mode)
  (communicated_rock_data ?w - waypoint) (at_soil_sample ?w - waypoint)
  (have_rock_analysis ?r - rover ?w - waypoint)
  (equipped_for_rock_analysis ?r - rover) (visible ?w - waypoint ?p - waypoint)
  (at_rock_sample ?w - waypoint) (equipped_for_imaging ?r - rover)
  (at_lander ?x - lander ?y - waypoint) (communicated_soil_data ?w - waypoint)
  (channel_free ?l - lander) (communicated_image_data ?o - objective ?m - mode)
  (full ?s - store) (equipped_for_soil_analysis ?r - rover)
  (store_of ?s - store ?r - rover) (at ?x - rover ?y - waypoint)
  (have_soil_analysis ?r - rover ?w - waypoint)
  (supports ?c - camera ?m - mode)
  (calibration_target ?i - camera ?o - objective))
 (:types rover waypoint store camera mode lander objective)
 (:functions (total-cost) - number)
 (:action
  ugly11865ugly11865ugly11865ugly11865ugly11865ugly11865ugly1ugly2ugly4ugly5communicate_rock_data
  :parameters
  (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
  :precondition
  (and (at ?r ?x) (at_lander ?l ?y) (have_rock_analysis ?r ?p) (visible ?x ?y)
       (available ?r) (channel_free ?l))
  :effect
  (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l)
       (communicated_rock_data ?p) (available ?r)))
 (:action
  ugly11866ugly11870ugly11871ugly11869ugly11868ugly11866ugly6ugly6ugly6ugly6take_image
  :parameters (?r - rover ?p - waypoint ?o - objective ?i - camera ?m - mode)
  :precondition
  (and (calibrated ?i ?r) (on_board ?i ?r) (equipped_for_imaging ?r)
       (supports ?i ?m) (visible_from ?o ?p) (at ?r ?p))
  :effect (and (have_image ?r ?o ?m) (not (calibrated ?i ?r))))
 (:action
  ugly11867ugly11872ugly11873ugly11867ugly11872ugly11873ugly3ugly9ugly3ugly9sample_rock
  :parameters (?x - rover ?s - store ?p - waypoint) :precondition
  (and (at ?x ?p) (at_rock_sample ?p) (equipped_for_rock_analysis ?x)
       (store_of ?s ?x) (empty ?s))
  :effect
  (and (not (empty ?s)) (full ?s) (have_rock_analysis ?x ?p)
       (not (at_rock_sample ?p))))
 (:action
  ugly11868ugly11866ugly11870ugly11871ugly11869ugly11868ugly2ugly4ugly5ugly8navigate
  :parameters (?x - rover ?y - waypoint ?z - waypoint) :precondition
  (and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
  :effect (and (not (at ?x ?y)) (at ?x ?z) (increase (total-cost) 1)))
 (:action
  ugly11869ugly11868ugly11866ugly11870ugly11871ugly11869ugly4ugly5ugly8ugly1sample_soil
  :parameters (?x - rover ?s - store ?p - waypoint) :precondition
  (and (at ?x ?p) (at_soil_sample ?p) (equipped_for_soil_analysis ?x)
       (store_of ?s ?x) (empty ?s))
  :effect
  (and (not (empty ?s)) (full ?s) (have_soil_analysis ?x ?p)
       (not (at_soil_sample ?p))))
 (:action
  ugly11870ugly11871ugly11869ugly11868ugly11866ugly11870ugly7ugly7ugly7ugly7communicate_soil_data
  :parameters
  (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
  :precondition
  (and (at ?r ?x) (at_lander ?l ?y) (have_soil_analysis ?r ?p) (visible ?x ?y)
       (available ?r) (channel_free ?l))
  :effect
  (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l)
       (communicated_soil_data ?p) (available ?r)))
 (:action
  ugly11871ugly11869ugly11868ugly11866ugly11870ugly11871ugly5ugly8ugly1ugly2drop
  :parameters (?x - rover ?y - store) :precondition
  (and (store_of ?y ?x) (full ?y)) :effect (and (not (full ?y)) (empty ?y)))
 (:action
  ugly11872ugly11873ugly11867ugly11872ugly11873ugly11867ugly8ugly1ugly2ugly4calibrate
  :parameters (?r - rover ?i - camera ?t - objective ?w - waypoint)
  :precondition
  (and (equipped_for_imaging ?r) (calibration_target ?i ?t) (at ?r ?w)
       (visible_from ?t ?w) (on_board ?i ?r))
  :effect (calibrated ?i ?r))
 (:action
  ugly11873ugly11867ugly11872ugly11873ugly11867ugly11872ugly9ugly3ugly9ugly3communicate_image_data
  :parameters
  (?r - rover ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
  :precondition
  (and (at ?r ?x) (at_lander ?l ?y) (have_image ?r ?o ?m) (visible ?x ?y)
       (available ?r) (channel_free ?l))
  :effect
  (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l)
       (communicated_image_data ?o ?m) (available ?r)))) 