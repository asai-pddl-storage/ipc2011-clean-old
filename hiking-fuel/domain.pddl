
(define (domain hiking) (:requirements :strips :equality :typing)
 (:predicates (at_tent ?x1 - tent ?x2 - place) (at_car ?x1 - car ?x2 - place)
  (down ?x1 - tent) (next ?x1 - place ?x2 - place)
  (at_person ?x1 - person ?x2 - place) (walked ?x1 - couple ?x2 - place)
  (partners ?x1 - couple ?x2 - person ?x3 - person) (up ?x1 - tent))
 (:types car tent person couple place) (:functions (total-cost) - number)
 (:action ugly11078ugly11082ugly11081ugly11083ugly2ugly5ugly4ugly2drive_tent
  :parameters (?x1 - person ?x2 - place ?x3 - place ?x4 - car ?x5 - tent)
  :precondition
  (and (at_person ?x1 ?x2) (at_car ?x4 ?x2) (at_tent ?x5 ?x2) (down ?x5))
  :effect
  (and (at_person ?x1 ?x3) (not (at_person ?x1 ?x2)) (at_car ?x4 ?x3)
       (not (at_car ?x4 ?x2)) (at_tent ?x5 ?x3) (not (at_tent ?x5 ?x2))
       (increase (total-cost) 1)))
 (:action ugly11079ugly11078ugly11082ugly11081ugly6ugly1ugly3ugly6put_down
  :parameters (?x1 - person ?x2 - place ?x3 - tent) :precondition
  (and (at_person ?x1 ?x2) (at_tent ?x3 ?x2) (up ?x3)) :effect
  (and (down ?x3) (not (up ?x3))))
 (:action
  ugly11080ugly11084ugly11080ugly11084ugly3ugly6ugly1ugly3drive_tent_passenger
  :parameters
  (?x1 - person ?x2 - place ?x3 - place ?x4 - car ?x5 - tent ?x6 - person)
  :precondition
  (and (at_person ?x1 ?x2) (at_car ?x4 ?x2) (at_tent ?x5 ?x2) (down ?x5)
       (at_person ?x6 ?x2) (not (= ?x1 ?x6)))
  :effect
  (and (at_person ?x1 ?x3) (not (at_person ?x1 ?x2)) (at_car ?x4 ?x3)
       (not (at_car ?x4 ?x2)) (at_tent ?x5 ?x3) (not (at_tent ?x5 ?x2))
       (at_person ?x6 ?x3) (not (at_person ?x6 ?x2))
       (increase (total-cost) 1)))
 (:action ugly11081ugly11083ugly11079ugly11078ugly5ugly4ugly2ugly5drive
  :parameters (?x1 - person ?x2 - place ?x3 - place ?x4 - car) :precondition
  (and (at_person ?x1 ?x2) (at_car ?x4 ?x2)) :effect
  (and (at_person ?x1 ?x3) (not (at_person ?x1 ?x2)) (at_car ?x4 ?x3)
       (not (at_car ?x4 ?x2)) (increase (total-cost) 1)))
 (:action
  ugly11082ugly11081ugly11083ugly11079ugly1ugly3ugly6ugly1drive_passenger
  :parameters (?x1 - person ?x2 - place ?x3 - place ?x4 - car ?x5 - person)
  :precondition
  (and (at_person ?x1 ?x2) (at_car ?x4 ?x2) (at_person ?x5 ?x2)
       (not (= ?x1 ?x5)))
  :effect
  (and (at_person ?x1 ?x3) (not (at_person ?x1 ?x2)) (at_car ?x4 ?x3)
       (not (at_car ?x4 ?x2)) (at_person ?x5 ?x3) (not (at_person ?x5 ?x2))
       (increase (total-cost) 1)))
 (:action ugly11083ugly11079ugly11078ugly11082ugly4ugly2ugly5ugly4put_up
  :parameters (?x1 - person ?x2 - place ?x3 - tent) :precondition
  (and (at_person ?x1 ?x2) (at_tent ?x3 ?x2) (down ?x3)) :effect
  (and (up ?x3) (not (down ?x3))))
 (:action ugly11084ugly11080ugly11084ugly11080ugly7ugly7ugly7ugly7walk_together
  :parameters
  (?x1 - tent ?x2 - place ?x3 - person ?x4 - place ?x5 - person ?x6 - couple)
  :precondition
  (and (at_tent ?x1 ?x2) (up ?x1) (at_person ?x3 ?x4) (next ?x4 ?x2)
       (at_person ?x5 ?x4) (not (= ?x3 ?x5)) (walked ?x6 ?x4)
       (partners ?x6 ?x3 ?x5))
  :effect
  (and (at_person ?x3 ?x2) (not (at_person ?x3 ?x4)) (at_person ?x5 ?x2)
       (not (at_person ?x5 ?x4)) (walked ?x6 ?x2) (not (walked ?x6 ?x4))))) 