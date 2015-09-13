
(define (domain logistics) (:requirements :strips :action-costs)
 (:predicates (location ?loc) (truck ?truck) (airport ?airport)
  (airplane ?airplane) (package ?obj) (at ?obj ?loc) (in-city ?obj ?city)
  (city ?city) (in ?obj ?obj))
 (:functions (total-cost) - number)
 (:action
  ugly11085ugly11088ugly11086ugly11085ugly11088ugly2ugly2ugly2ugly2load-airplane
  :parameters (?obj ?airplane ?loc) :precondition
  (and (package ?obj) (airplane ?airplane) (location ?loc) (at ?obj ?loc)
       (at ?airplane ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?airplane)))
 (:action
  ugly11086ugly11085ugly11088ugly11086ugly11085ugly4ugly4ugly4ugly4unload-airplane
  :parameters (?obj ?airplane ?loc) :precondition
  (and (package ?obj) (airplane ?airplane) (location ?loc) (in ?obj ?airplane)
       (at ?airplane ?loc))
  :effect (and (not (in ?obj ?airplane)) (at ?obj ?loc)))
 (:action
  ugly11087ugly11087ugly11087ugly11087ugly11087ugly3ugly6ugly5ugly1unload-truck
  :parameters (?obj ?truck ?loc) :precondition
  (and (package ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (in ?obj ?truck))
  :effect (and (not (in ?obj ?truck)) (at ?obj ?loc)))
 (:action
  ugly11088ugly11086ugly11085ugly11088ugly11086ugly1ugly3ugly6ugly5load-truck
  :parameters (?obj ?truck ?loc) :precondition
  (and (package ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc)
       (at ?obj ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?truck)))
 (:action
  ugly11089ugly11089ugly11089ugly11089ugly11089ugly5ugly1ugly3ugly6drive-truck
  :parameters (?truck ?loc-from ?loc-to ?city) :precondition
  (and (truck ?truck) (location ?loc-from) (location ?loc-to) (city ?city)
       (at ?truck ?loc-from) (in-city ?loc-from ?city) (in-city ?loc-to ?city))
  :effect
  (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)
       (increase (total-cost) 1)))
 (:action
  ugly11090ugly11090ugly11090ugly11090ugly11090ugly6ugly5ugly1ugly3fly-airplane
  :parameters (?airplane ?loc-from ?loc-to) :precondition
  (and (airplane ?airplane) (airport ?loc-from) (airport ?loc-to)
       (at ?airplane ?loc-from))
  :effect
  (and (not (at ?airplane ?loc-from)) (at ?airplane ?loc-to)
       (increase (total-cost) 5)))) 