
(define (domain driverlog) (:requirements :strips)
 (:predicates (link ?x ?y) (at ?obj ?loc) (path ?x ?y) (location ?loc)
  (obj ?obj) (driver ?d) (truck ?truck) (driving ?d ?v) (in ?obj1 ?obj)
  (empty ?v))
 (:action ugly1ugly1ugly1load-truck :parameters (?obj ?truck ?loc)
  :precondition
  (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (at ?obj ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?truck)))
 (:action ugly2ugly6ugly5board-truck :parameters (?driver ?truck ?loc)
  :precondition
  (and (driver ?driver) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (at ?driver ?loc) (empty ?truck))
  :effect
  (and (not (at ?driver ?loc)) (driving ?driver ?truck) (not (empty ?truck))))
 (:action ugly3ugly4ugly2walk :parameters (?driver ?loc-from ?loc-to)
  :precondition
  (and (driver ?driver) (location ?loc-from) (location ?loc-to)
       (at ?driver ?loc-from) (path ?loc-from ?loc-to))
  :effect (and (not (at ?driver ?loc-from)) (at ?driver ?loc-to)))
 (:action ugly4ugly2ugly6drive-truck :parameters
  (?truck ?loc-from ?loc-to ?driver) :precondition
  (and (truck ?truck) (location ?loc-from) (location ?loc-to) (driver ?driver)
       (at ?truck ?loc-from) (driving ?driver ?truck) (link ?loc-from ?loc-to))
  :effect (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))
 (:action ugly5ugly3ugly4unload-truck :parameters (?obj ?truck ?loc)
  :precondition
  (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (in ?obj ?truck))
  :effect (and (not (in ?obj ?truck)) (at ?obj ?loc)))
 (:action ugly6ugly5ugly3disembark-truck :parameters (?driver ?truck ?loc)
  :precondition
  (and (driver ?driver) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (driving ?driver ?truck))
  :effect
  (and (not (driving ?driver ?truck)) (at ?driver ?loc) (empty ?truck)))) 