
(define (domain grid) (:requirements :strips)
 (:predicates (at ?r ?x) (shape ?s) (place ?p) (key ?k) (holding ?k) (open ?x)
  (at-robot ?x) (locked ?x) (lock-shape ?x ?s) (conn ?x ?y) (arm-empty)
  (key-shape ?k ?s))
 (:action ugly1ugly5ugly4move :parameters (?curpos ?nextpos) :precondition
  (and (place ?curpos) (place ?nextpos) (at-robot ?curpos)
       (conn ?curpos ?nextpos) (open ?nextpos))
  :effect (and (at-robot ?nextpos) (not (at-robot ?curpos))))
 (:action ugly2ugly3ugly1putdown :parameters (?curpos ?key) :precondition
  (and (place ?curpos) (key ?key) (at-robot ?curpos) (holding ?key)) :effect
  (and (arm-empty) (at ?key ?curpos) (not (holding ?key))))
 (:action ugly3ugly1ugly5pickup-and-loose :parameters (?curpos ?newkey ?oldkey)
  :precondition
  (and (place ?curpos) (key ?newkey) (key ?oldkey) (at-robot ?curpos)
       (holding ?oldkey) (at ?newkey ?curpos))
  :effect
  (and (holding ?newkey) (at ?oldkey ?curpos) (not (holding ?oldkey))
       (not (at ?newkey ?curpos))))
 (:action ugly4ugly2ugly3unlock :parameters (?curpos ?lockpos ?key ?shape)
  :precondition
  (and (place ?curpos) (place ?lockpos) (key ?key) (shape ?shape)
       (conn ?curpos ?lockpos) (key-shape ?key ?shape)
       (lock-shape ?lockpos ?shape) (at-robot ?curpos) (locked ?lockpos)
       (holding ?key))
  :effect (and (open ?lockpos) (not (locked ?lockpos))))
 (:action ugly5ugly4ugly2pickup :parameters (?curpos ?key) :precondition
  (and (place ?curpos) (key ?key) (at-robot ?curpos) (at ?key ?curpos)
       (arm-empty))
  :effect (and (holding ?key) (not (at ?key ?curpos)) (not (arm-empty))))) 