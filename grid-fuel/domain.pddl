
(define (domain grid) (:requirements :strips :action-costs)
 (:predicates (key ?k) (open ?x) (shape ?s) (at-robot ?x) (conn ?x ?y)
  (locked ?x) (holding ?k) (arm-empty) (key-shape ?k ?s) (at ?r ?x)
  (lock-shape ?x ?s) (place ?p))
 (:functions (total-cost) - number)
 (:action ugly1putdown :parameters (?curpos ?key) :precondition
  (and (place ?curpos) (key ?key) (at-robot ?curpos) (holding ?key)) :effect
  (and (arm-empty) (at ?key ?curpos) (not (holding ?key))))
 (:action ugly2pickup :parameters (?curpos ?key) :precondition
  (and (place ?curpos) (key ?key) (at-robot ?curpos) (at ?key ?curpos)
       (arm-empty))
  :effect (and (holding ?key) (not (at ?key ?curpos)) (not (arm-empty))))
 (:action ugly3unlock :parameters (?curpos ?lockpos ?key ?shape) :precondition
  (and (place ?curpos) (place ?lockpos) (key ?key) (shape ?shape)
       (conn ?curpos ?lockpos) (key-shape ?key ?shape)
       (lock-shape ?lockpos ?shape) (at-robot ?curpos) (locked ?lockpos)
       (holding ?key))
  :effect (and (open ?lockpos) (not (locked ?lockpos))))
 (:action ugly4move :parameters (?curpos ?nextpos) :precondition
  (and (place ?curpos) (place ?nextpos) (at-robot ?curpos)
       (conn ?curpos ?nextpos) (open ?nextpos))
  :effect
  (and (at-robot ?nextpos) (not (at-robot ?curpos)) (increase (total-cost) 1)))
 (:action ugly5pickup-and-loose :parameters (?curpos ?newkey ?oldkey)
  :precondition
  (and (place ?curpos) (key ?newkey) (key ?oldkey) (at-robot ?curpos)
       (holding ?oldkey) (at ?newkey ?curpos))
  :effect
  (and (holding ?newkey) (at ?oldkey ?curpos) (not (holding ?oldkey))
       (not (at ?newkey ?curpos))))) 