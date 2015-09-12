
(define (domain logistics) (:requirements :strips)
 (:predicates (at ?obj ?loc) (airport ?airport) (truck ?truck)
  (airplane ?airplane) (location ?loc) (in ?obj ?obj) (city ?city)
  (package ?obj) (in-city ?obj ?city))
 (:action ugly1432996ugly6ugly5ugly1ugly3fly-airplane :parameters
  (?airplane ?loc-from ?loc-to) :precondition
  (and (airplane ?airplane) (airport ?loc-from) (airport ?loc-to)
       (at ?airplane ?loc-from))
  :effect (and (not (at ?airplane ?loc-from)) (at ?airplane ?loc-to)))
 (:action ugly1432997ugly1ugly3ugly6ugly5load-truck :parameters
  (?obj ?truck ?loc) :precondition
  (and (package ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (at ?obj ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?truck)))
 (:action ugly1432998ugly4ugly4ugly4ugly4unload-airplane :parameters
  (?obj ?airplane ?loc) :precondition
  (and (package ?obj) (airplane ?airplane) (location ?loc) (in ?obj ?airplane)
       (at ?airplane ?loc))
  :effect (and (not (in ?obj ?airplane)) (at ?obj ?loc)))
 (:action ugly1432999ugly2ugly2ugly2ugly2load-airplane :parameters
  (?obj ?airplane ?loc) :precondition
  (and (package ?obj) (airplane ?airplane) (location ?loc) (at ?obj ?loc)
       (at ?airplane ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?airplane)))
 (:action ugly1433000ugly3ugly6ugly5ugly1unload-truck :parameters
  (?obj ?truck ?loc) :precondition
  (and (package ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (in ?obj ?truck))
  :effect (and (not (in ?obj ?truck)) (at ?obj ?loc)))
 (:action ugly1433001ugly5ugly1ugly3ugly6drive-truck :parameters
  (?truck ?loc-from ?loc-to ?city) :precondition
  (and (truck ?truck) (location ?loc-from) (location ?loc-to) (city ?city)
       (at ?truck ?loc-from) (in-city ?loc-from ?city) (in-city ?loc-to ?city))
  :effect (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))) 