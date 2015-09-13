
(define (domain driverlog) (:requirements :strips :action-costs)
 (:predicates (at ?obj ?loc) (link ?x ?y) (location ?loc) (in ?obj1 ?obj)
  (path ?x ?y) (truck ?truck) (driving ?d ?v) (obj ?obj) (driver ?d)
  (empty ?v))
 (:functions (total-cost) - number)
 (:action
  ugly11039ugly11044ugly11039ugly11044ugly11039ugly11044ugly1ugly1ugly1ugly1load-truck
  :parameters (?obj ?truck ?loc) :precondition
  (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (at ?obj ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?truck)))
 (:action
  ugly11040ugly11042ugly11040ugly11042ugly11040ugly11042ugly2ugly6ugly5ugly3disembark-truck
  :parameters (?driver ?truck ?loc) :precondition
  (and (driver ?driver) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (driving ?driver ?truck))
  :effect
  (and (not (driving ?driver ?truck)) (at ?driver ?loc) (empty ?truck)))
 (:action
  ugly11041ugly11043ugly11041ugly11043ugly11041ugly11043ugly3ugly4ugly2ugly6drive-truck
  :parameters (?truck ?loc-from ?loc-to ?driver) :precondition
  (and (truck ?truck) (location ?loc-from) (location ?loc-to) (driver ?driver)
       (at ?truck ?loc-from) (driving ?driver ?truck) (link ?loc-from ?loc-to))
  :effect
  (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)
       (increase (total-cost) 1)))
 (:action
  ugly11042ugly11040ugly11042ugly11040ugly11042ugly11040ugly4ugly2ugly6ugly5board-truck
  :parameters (?driver ?truck ?loc) :precondition
  (and (driver ?driver) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (at ?driver ?loc) (empty ?truck))
  :effect
  (and (not (at ?driver ?loc)) (driving ?driver ?truck) (not (empty ?truck))))
 (:action
  ugly11043ugly11041ugly11043ugly11041ugly11043ugly11041ugly5ugly3ugly4ugly2walk
  :parameters (?driver ?loc-from ?loc-to) :precondition
  (and (driver ?driver) (location ?loc-from) (location ?loc-to)
       (at ?driver ?loc-from) (path ?loc-from ?loc-to))
  :effect (and (not (at ?driver ?loc-from)) (at ?driver ?loc-to)))
 (:action
  ugly11044ugly11039ugly11044ugly11039ugly11044ugly11039ugly6ugly5ugly3ugly4unload-truck
  :parameters (?obj ?truck ?loc) :precondition
  (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (in ?obj ?truck))
  :effect (and (not (in ?obj ?truck)) (at ?obj ?loc)))) 