
(define (domain grid) (:requirements :strips :action-costs)
 (:predicates (open ?x) (lock-shape ?x ?s) (conn ?x ?y) (holding ?k) (place ?p)
  (key ?k) (locked ?x) (arm-empty) (at ?r ?x) (shape ?s) (key-shape ?k ?s)
  (at-robot ?x))
 (:functions (total-cost) - number)
 (:action
  ugly11073ugly11073ugly11073ugly11073ugly11073ugly11073ugly1ugly5ugly4ugly2pickup
  :parameters (?curpos ?key) :precondition
  (and (place ?curpos) (key ?key) (at-robot ?curpos) (at ?key ?curpos)
       (arm-empty))
  :effect (and (holding ?key) (not (at ?key ?curpos)) (not (arm-empty))))
 (:action
  ugly11074ugly11076ugly11077ugly11075ugly11074ugly11076ugly5ugly4ugly2ugly3unlock
  :parameters (?curpos ?lockpos ?key ?shape) :precondition
  (and (place ?curpos) (place ?lockpos) (key ?key) (shape ?shape)
       (conn ?curpos ?lockpos) (key-shape ?key ?shape)
       (lock-shape ?lockpos ?shape) (at-robot ?curpos) (locked ?lockpos)
       (holding ?key))
  :effect (and (open ?lockpos) (not (locked ?lockpos))))
 (:action
  ugly11075ugly11074ugly11076ugly11077ugly11075ugly11074ugly4ugly2ugly3ugly1putdown
  :parameters (?curpos ?key) :precondition
  (and (place ?curpos) (key ?key) (at-robot ?curpos) (holding ?key)) :effect
  (and (arm-empty) (at ?key ?curpos) (not (holding ?key))))
 (:action
  ugly11076ugly11077ugly11075ugly11074ugly11076ugly11077ugly3ugly1ugly5ugly4move
  :parameters (?curpos ?nextpos) :precondition
  (and (place ?curpos) (place ?nextpos) (at-robot ?curpos)
       (conn ?curpos ?nextpos) (open ?nextpos))
  :effect
  (and (at-robot ?nextpos) (not (at-robot ?curpos)) (increase (total-cost) 1)))
 (:action
  ugly11077ugly11075ugly11074ugly11076ugly11077ugly11075ugly2ugly3ugly1ugly5pickup-and-loose
  :parameters (?curpos ?newkey ?oldkey) :precondition
  (and (place ?curpos) (key ?newkey) (key ?oldkey) (at-robot ?curpos)
       (holding ?oldkey) (at ?newkey ?curpos))
  :effect
  (and (holding ?newkey) (at ?oldkey ?curpos) (not (holding ?oldkey))
       (not (at ?newkey ?curpos))))) 