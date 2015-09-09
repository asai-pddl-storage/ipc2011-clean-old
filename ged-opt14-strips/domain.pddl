
(define (domain genome-edit-distance) (:requirements :equality :action-costs)
 (:predicates (splice-point-2 ?x) (inverse-splice-next ?x) (inverse-splicing)
  (idle) (present ?x) (inverse-splicing-last) (cutting) (splice-next ?x)
  (inverted ?x) (s-last ?x) (finished) (swappable ?x ?y) (splice-point-1 ?x)
  (s-first ?x) (splicing) (gone ?x) (cut-point-2 ?x) (s-next ?x ?y)
  (last-cut-point ?x) (free ?x) (cut-point-1 ?x) (duplicate ?x ?y) (cw ?x ?y)
  (splicing-last) (normal ?x) (have-cut))
 (:functions (total-cost) - number)
 (:action ugly1end-inverse-splice-2 :parameters (?x ?y) :precondition
  (and (inverse-splicing-last) (splice-point-1 ?x) (splice-point-2 ?y)) :effect
  (and (not (inverse-splicing-last)) (not (splice-point-1 ?x))
       (not (splice-point-2 ?y)) (finished) (cw ?x ?y)))
 (:action ugly2end-inverse-splice-1a :parameters (?x ?y) :precondition
  (and (inverse-splicing) (normal ?x) (splice-point-1 ?y) (s-first ?x)
       (s-last ?x))
  :effect
  (and (not (inverse-splicing)) (inverse-splicing-last)
       (not (splice-point-1 ?y)) (not (s-first ?x)) (not (s-last ?x))
       (not (normal ?x)) (cw ?y ?x) (splice-point-1 ?x) (inverted ?x)))
 (:action ugly3begin-transverse-splice :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (have-cut) (cw ?x ?y)) :effect
  (and (not (have-cut)) (not (cw ?x ?y)) (inverse-splicing) (splice-point-1 ?x)
       (splice-point-2 ?y) (increase (total-cost) 2)))
 (:action ugly4continue-inverse-splice-1a :parameters (?x ?y) :precondition
  (and (inverse-splicing) (normal ?x) (s-last ?x) (s-next ?y ?x)) :effect
  (and (not (s-last ?x)) (not (s-next ?y ?x)) (not (normal ?x)) (s-last ?y)
       (not (inverse-splicing)) (inverse-splice-next ?x) (inverted ?x)))
 (:action ugly5begin-cut :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (idle) (cw ?x ?y)) :effect
  (and (not (idle)) (cutting) (not (cw ?x ?y)) (cut-point-1 ?x)
       (last-cut-point ?x) (s-first ?y) (s-last ?y)))
 (:action ugly6end-inverse-splice-1b :parameters (?x ?y) :precondition
  (and (inverse-splicing) (inverted ?x) (splice-point-1 ?y) (s-first ?x)
       (s-last ?x))
  :effect
  (and (not (inverse-splicing)) (inverse-splicing-last)
       (not (splice-point-1 ?y)) (not (s-first ?x)) (not (s-last ?x))
       (not (inverted ?x)) (cw ?y ?x) (splice-point-1 ?x) (normal ?x)))
 (:action ugly7continue-inverse-splice-2 :parameters (?x ?y) :precondition
  (and (inverse-splice-next ?x) (splice-point-1 ?y)) :effect
  (and (not (inverse-splice-next ?x)) (not (splice-point-1 ?y))
       (inverse-splicing) (cw ?y ?x) (splice-point-1 ?x)))
 (:action ugly8invert-single-gene-b :parameters (?x) :precondition
  (and (idle) (inverted ?x)) :effect
  (and (not (inverted ?x)) (normal ?x) (increase (total-cost) 1)))
 (:action ugly9invert-single-gene-a :parameters (?x) :precondition
  (and (idle) (normal ?x)) :effect
  (and (not (normal ?x)) (inverted ?x) (increase (total-cost) 1)))
 (:action ugly10end-cut-1 :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (cutting) (s-last ?x) (cw ?x ?y)) :effect
  (and (not (cw ?x ?y)) (cut-point-2 ?y)))
 (:action ugly11continue-cut :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (cutting) (s-last ?x) (cw ?x ?y)) :effect
  (and (not (cw ?x ?y)) (not (s-last ?x)) (s-next ?x ?y) (s-last ?y)))
 (:action ugly12begin-transpose-splice :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (have-cut) (cw ?x ?y)) :effect
  (and (not (have-cut)) (not (cw ?x ?y)) (splicing) (splice-point-1 ?x)
       (splice-point-2 ?y) (increase (total-cost) 2)))
 (:action ugly13end-splice-2 :parameters (?x ?y) :precondition
  (and (splicing-last) (splice-point-1 ?x) (splice-point-2 ?y)) :effect
  (and (not (splicing-last)) (not (splice-point-1 ?x))
       (not (splice-point-2 ?y)) (finished) (cw ?x ?y)))
 (:action ugly14begin-inverse-splice :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (have-cut) (cw ?x ?y) (last-cut-point ?x)) :effect
  (and (not (have-cut)) (not (cw ?x ?y)) (inverse-splicing) (splice-point-1 ?x)
       (splice-point-2 ?y) (increase (total-cost) 1)))
 (:action ugly15end-splice-1 :parameters (?x ?y) :precondition
  (and (splicing) (splice-point-1 ?y) (s-first ?x) (s-last ?x)) :effect
  (and (not (splicing)) (not (s-first ?x)) (not (s-last ?x))
       (not (splice-point-1 ?y)) (splicing-last) (cw ?y ?x)
       (splice-point-1 ?x)))
 (:action ugly16continue-splice-2 :parameters (?x ?y) :precondition
  (and (splice-next ?x) (splice-point-1 ?y)) :effect
  (and (not (splice-point-1 ?y)) (not (splice-next ?x)) (cw ?y ?x)
       (splice-point-1 ?x) (splicing)))
 (:action ugly17end-cut-2 :parameters (?x ?y) :precondition
  (and (cutting) (cut-point-1 ?x) (cut-point-2 ?y)) :effect
  (and (not (cutting)) (not (cut-point-1 ?x)) (not (cut-point-2 ?y)) (have-cut)
       (cw ?x ?y)))
 (:action ugly18begin-inverse-splice-special-case :parameters (?x)
  :precondition (and (have-cut) (cw ?x ?x) (last-cut-point ?x)) :effect
  (and (not (have-cut)) (not (cw ?x ?x)) (inverse-splicing) (splice-point-1 ?x)
       (splice-point-2 ?x) (increase (total-cost) 1)))
 (:action ugly19reset-1 :parameters (?x) :precondition
  (and (finished) (last-cut-point ?x)) :effect
  (and (not (last-cut-point ?x)) (not (finished)) (idle)))
 (:action ugly20continue-inverse-splice-1b :parameters (?x ?y) :precondition
  (and (inverse-splicing) (inverted ?x) (s-last ?x) (s-next ?y ?x)) :effect
  (and (not (s-last ?x)) (not (s-next ?y ?x)) (not (inverted ?x)) (s-last ?y)
       (not (inverse-splicing)) (inverse-splice-next ?x) (normal ?x)))
 (:action ugly21continue-splice-1 :parameters (?x ?y) :precondition
  (and (splicing) (s-first ?x) (s-next ?x ?y)) :effect
  (and (not (s-first ?x)) (not (s-next ?x ?y)) (not (splicing)) (s-first ?y)
       (splice-next ?x)))) 