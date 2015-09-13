
(define (domain genome-edit-distance) (:requirements :equality :action-costs)
 (:predicates (splice-point-2 ?x) (normal ?x) (have-cut) (splice-point-1 ?x)
  (splicing) (s-first ?x) (cw ?x ?y) (cutting) (idle) (inverse-splicing-last)
  (s-next ?x ?y) (cut-point-1 ?x) (free ?x) (duplicate ?x ?y) (splicing-last)
  (swappable ?x ?y) (splice-next ?x) (inverse-splicing) (present ?x) (finished)
  (inverted ?x) (last-cut-point ?x) (gone ?x) (cut-point-2 ?x) (s-last ?x)
  (inverse-splice-next ?x))
 (:functions (total-cost) - number)
 (:action
  ugly11052ugly11061ugly11071ugly11057ugly11070ugly8ugly20ugly14ugly11continue-cut
  :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (cutting) (s-last ?x) (cw ?x ?y)) :effect
  (and (not (cw ?x ?y)) (not (s-last ?x)) (s-next ?x ?y) (s-last ?y)))
 (:action
  ugly11053ugly11060ugly11054ugly11072ugly11065ugly1ugly18ugly12ugly5begin-cut
  :parameters (?x ?y) :precondition (and (not (= ?x ?y)) (idle) (cw ?x ?y))
  :effect
  (and (not (idle)) (cutting) (not (cw ?x ?y)) (cut-point-1 ?x)
       (last-cut-point ?x) (s-first ?y) (s-last ?y)))
 (:action
  ugly11054ugly11072ugly11065ugly11052ugly11061ugly20ugly14ugly11ugly2end-inverse-splice-1a
  :parameters (?x ?y) :precondition
  (and (inverse-splicing) (normal ?x) (splice-point-1 ?y) (s-first ?x)
       (s-last ?x))
  :effect
  (and (not (inverse-splicing)) (inverse-splicing-last)
       (not (splice-point-1 ?y)) (not (s-first ?x)) (not (s-last ?x))
       (not (normal ?x)) (cw ?y ?x) (splice-point-1 ?x) (inverted ?x)))
 (:action
  ugly11055ugly11062ugly11058ugly11064ugly11067ugly4ugly13ugly9ugly19reset-1
  :parameters (?x) :precondition (and (finished) (last-cut-point ?x)) :effect
  (and (not (last-cut-point ?x)) (not (finished)) (idle)))
 (:action
  ugly11056ugly11063ugly11053ugly11060ugly11054ugly21ugly6ugly17ugly4continue-inverse-splice-1a
  :parameters (?x ?y) :precondition
  (and (inverse-splicing) (normal ?x) (s-last ?x) (s-next ?y ?x)) :effect
  (and (not (s-last ?x)) (not (s-next ?y ?x)) (not (normal ?x)) (s-last ?y)
       (not (inverse-splicing)) (inverse-splice-next ?x) (inverted ?x)))
 (:action
  ugly11057ugly11070ugly11059ugly11068ugly11066ugly18ugly12ugly5ugly1end-inverse-splice-2
  :parameters (?x ?y) :precondition
  (and (inverse-splicing-last) (splice-point-1 ?x) (splice-point-2 ?y)) :effect
  (and (not (inverse-splicing-last)) (not (splice-point-1 ?x))
       (not (splice-point-2 ?y)) (finished) (cw ?x ?y)))
 (:action
  ugly11058ugly11064ugly11067ugly11055ugly11062ugly7ugly15ugly8ugly20continue-inverse-splice-1b
  :parameters (?x ?y) :precondition
  (and (inverse-splicing) (inverted ?x) (s-last ?x) (s-next ?y ?x)) :effect
  (and (not (s-last ?x)) (not (s-next ?y ?x)) (not (inverted ?x)) (s-last ?y)
       (not (inverse-splicing)) (inverse-splice-next ?x) (normal ?x)))
 (:action
  ugly11059ugly11068ugly11066ugly11069ugly11056ugly12ugly5ugly1ugly18begin-inverse-splice-special-case
  :parameters (?x) :precondition
  (and (have-cut) (cw ?x ?x) (last-cut-point ?x)) :effect
  (and (not (have-cut)) (not (cw ?x ?x)) (inverse-splicing) (splice-point-1 ?x)
       (splice-point-2 ?x) (increase (total-cost) 1)))
 (:action
  ugly11060ugly11054ugly11072ugly11065ugly11052ugly10ugly3ugly10ugly3begin-transverse-splice
  :parameters (?x ?y) :precondition (and (not (= ?x ?y)) (have-cut) (cw ?x ?y))
  :effect
  (and (not (have-cut)) (not (cw ?x ?y)) (inverse-splicing) (splice-point-1 ?x)
       (splice-point-2 ?y) (increase (total-cost) 2)))
 (:action
  ugly11061ugly11071ugly11057ugly11070ugly11059ugly17ugly4ugly13ugly9invert-single-gene-a
  :parameters (?x) :precondition (and (idle) (normal ?x)) :effect
  (and (not (normal ?x)) (inverted ?x) (increase (total-cost) 1)))
 (:action
  ugly11062ugly11058ugly11064ugly11067ugly11055ugly11ugly2ugly16ugly7continue-inverse-splice-2
  :parameters (?x ?y) :precondition
  (and (inverse-splice-next ?x) (splice-point-1 ?y)) :effect
  (and (not (inverse-splice-next ?x)) (not (splice-point-1 ?y))
       (inverse-splicing) (cw ?y ?x) (splice-point-1 ?x)))
 (:action
  ugly11063ugly11053ugly11060ugly11054ugly11072ugly14ugly11ugly2ugly16continue-splice-2
  :parameters (?x ?y) :precondition (and (splice-next ?x) (splice-point-1 ?y))
  :effect
  (and (not (splice-point-1 ?y)) (not (splice-next ?x)) (cw ?y ?x)
       (splice-point-1 ?x) (splicing)))
 (:action
  ugly11064ugly11067ugly11055ugly11062ugly11058ugly13ugly9ugly19ugly21continue-splice-1
  :parameters (?x ?y) :precondition
  (and (splicing) (s-first ?x) (s-next ?x ?y)) :effect
  (and (not (s-first ?x)) (not (s-next ?x ?y)) (not (splicing)) (s-first ?y)
       (splice-next ?x)))
 (:action
  ugly11065ugly11052ugly11061ugly11071ugly11057ugly19ugly21ugly6ugly17end-cut-2
  :parameters (?x ?y) :precondition
  (and (cutting) (cut-point-1 ?x) (cut-point-2 ?y)) :effect
  (and (not (cutting)) (not (cut-point-1 ?x)) (not (cut-point-2 ?y)) (have-cut)
       (cw ?x ?y)))
 (:action
  ugly11066ugly11069ugly11056ugly11063ugly11053ugly9ugly19ugly21ugly6end-inverse-splice-1b
  :parameters (?x ?y) :precondition
  (and (inverse-splicing) (inverted ?x) (splice-point-1 ?y) (s-first ?x)
       (s-last ?x))
  :effect
  (and (not (inverse-splicing)) (inverse-splicing-last)
       (not (splice-point-1 ?y)) (not (s-first ?x)) (not (s-last ?x))
       (not (inverted ?x)) (cw ?y ?x) (splice-point-1 ?x) (normal ?x)))
 (:action
  ugly11067ugly11055ugly11062ugly11058ugly11064ugly16ugly7ugly15ugly8invert-single-gene-b
  :parameters (?x) :precondition (and (idle) (inverted ?x)) :effect
  (and (not (inverted ?x)) (normal ?x) (increase (total-cost) 1)))
 (:action
  ugly11068ugly11066ugly11069ugly11056ugly11063ugly2ugly16ugly7ugly15end-splice-1
  :parameters (?x ?y) :precondition
  (and (splicing) (splice-point-1 ?y) (s-first ?x) (s-last ?x)) :effect
  (and (not (splicing)) (not (s-first ?x)) (not (s-last ?x))
       (not (splice-point-1 ?y)) (splicing-last) (cw ?y ?x)
       (splice-point-1 ?x)))
 (:action
  ugly11069ugly11056ugly11063ugly11053ugly11060ugly3ugly10ugly3ugly10end-cut-1
  :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (cutting) (s-last ?x) (cw ?x ?y)) :effect
  (and (not (cw ?x ?y)) (cut-point-2 ?y)))
 (:action
  ugly11070ugly11059ugly11068ugly11066ugly11069ugly5ugly1ugly18ugly12begin-transpose-splice
  :parameters (?x ?y) :precondition (and (not (= ?x ?y)) (have-cut) (cw ?x ?y))
  :effect
  (and (not (have-cut)) (not (cw ?x ?y)) (splicing) (splice-point-1 ?x)
       (splice-point-2 ?y) (increase (total-cost) 2)))
 (:action
  ugly11071ugly11057ugly11070ugly11059ugly11068ugly15ugly8ugly20ugly14begin-inverse-splice
  :parameters (?x ?y) :precondition
  (and (not (= ?x ?y)) (have-cut) (cw ?x ?y) (last-cut-point ?x)) :effect
  (and (not (have-cut)) (not (cw ?x ?y)) (inverse-splicing) (splice-point-1 ?x)
       (splice-point-2 ?y) (increase (total-cost) 1)))
 (:action
  ugly11072ugly11065ugly11052ugly11061ugly11071ugly6ugly17ugly4ugly13end-splice-2
  :parameters (?x ?y) :precondition
  (and (splicing-last) (splice-point-1 ?x) (splice-point-2 ?y)) :effect
  (and (not (splicing-last)) (not (splice-point-1 ?x))
       (not (splice-point-2 ?y)) (finished) (cw ?x ?y)))) 