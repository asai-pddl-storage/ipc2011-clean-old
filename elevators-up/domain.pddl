
(define (domain elevators-sequencedstrips)
 (:requirements :typing :action-costs)
 (:predicates (reachable-floor ?lift - elevator ?floor - count)
  (can-hold ?lift - elevator ?n - count) (next ?n1 - count ?n2 - count)
  (passengers ?lift - elevator ?n - count)
  (boarded ?person - passenger ?lift - elevator)
  (above ?floor1 - count ?floor2 - count)
  (lift-at ?lift - elevator ?floor - count)
  (passenger-at ?person - passenger ?floor - count))
 (:types elevator - object slow-elevator fast-elevator - elevator passenger -
  object count - object)
 (:functions (total-cost) - number)
 (:action ugly1ugly3ugly6move-up-slow :parameters
  (?lift - slow-elevator ?f1 - count ?f2 - count) :precondition
  (and (lift-at ?lift ?f1) (above ?f1 ?f2) (reachable-floor ?lift ?f2)) :effect
  (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))))
 (:action ugly2ugly5ugly4move-down-slow :parameters
  (?lift - slow-elevator ?f1 - count ?f2 - count) :precondition
  (and (lift-at ?lift ?f1) (above ?f2 ?f1) (reachable-floor ?lift ?f2)) :effect
  (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))))
 (:action ugly3ugly6ugly1move-up-fast :parameters
  (?lift - fast-elevator ?f1 - count ?f2 - count) :precondition
  (and (lift-at ?lift ?f1) (above ?f1 ?f2) (reachable-floor ?lift ?f2)) :effect
  (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))
       (increase (total-cost) (travel-fast ?f1 ?f2))))
 (:action ugly4ugly2ugly5move-down-fast :parameters
  (?lift - fast-elevator ?f1 - count ?f2 - count) :precondition
  (and (lift-at ?lift ?f1) (above ?f2 ?f1) (reachable-floor ?lift ?f2)) :effect
  (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))))
 (:action ugly5ugly4ugly2board :parameters
  (?p - passenger ?lift - elevator ?f - count ?n1 - count ?n2 - count)
  :precondition
  (and (lift-at ?lift ?f) (passenger-at ?p ?f) (passengers ?lift ?n1)
       (next ?n1 ?n2) (can-hold ?lift ?n2))
  :effect
  (and (not (passenger-at ?p ?f)) (boarded ?p ?lift)
       (not (passengers ?lift ?n1)) (passengers ?lift ?n2)))
 (:action ugly6ugly1ugly3leave :parameters
  (?p - passenger ?lift - elevator ?f - count ?n1 - count ?n2 - count)
  :precondition
  (and (lift-at ?lift ?f) (boarded ?p ?lift) (passengers ?lift ?n1)
       (next ?n2 ?n1))
  :effect
  (and (passenger-at ?p ?f) (not (boarded ?p ?lift))
       (not (passengers ?lift ?n1)) (passengers ?lift ?n2)))) 