
(define (domain woodworking) (:requirements :typing :action-costs)
 (:predicates (colour ?obj - part ?colour - acolour)
  (boardsize ?board - board ?size - aboardsize) (unused ?obj - part)
  (empty ?m - highspeed-saw)
  (treatment ?obj - part ?treatment - treatmentstatus)
  (boardsize-successor ?size1 ?size2 - aboardsize)
  (has-colour ?machine - machine ?colour - acolour)
  (surface-condition ?obj - woodobj ?surface - surface)
  (is-smooth ?surface - surface)
  (in-highspeed-saw ?b - board ?m - highspeed-saw)
  (grind-treatment-change ?old ?new - treatmentstatus)
  (contains-part ?b - board ?p - part) (wood ?obj - woodobj ?wood - awood)
  (goalsize ?part - part ?size - apartsize) (available ?obj - woodobj))
 (:types acolour awood woodobj machine surface treatmentstatus aboardsize
  apartsize - object highspeed-saw glazer grinder immersion-varnisher planer
  saw spray-varnisher - machine board part - woodobj)
 (:constants verysmooth smooth rough - surface varnished glazed untreated
  colourfragments - treatmentstatus natural - acolour small medium large -
  apartsize)
 (:functions (total-cost) - number)
 (:action ugly1ugly2do-plane :parameters
  (?x - part ?m - planer ?oldsurface - surface ?oldcolour - acolour
   ?oldtreatment - treatmentstatus)
  :precondition
  (and (available ?x) (surface-condition ?x ?oldsurface)
       (treatment ?x ?oldtreatment) (colour ?x ?oldcolour))
  :effect
  (and (not (surface-condition ?x ?oldsurface)) (surface-condition ?x smooth)
       (not (treatment ?x ?oldtreatment)) (treatment ?x untreated)
       (not (colour ?x ?oldcolour)) (colour ?x natural)))
 (:action ugly2ugly5do-saw-large :parameters
  (?b - board ?p - part ?m - saw ?w - awood ?surface - surface ?size_before ?s1
   ?s2 ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p large) (available ?b) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1) (boardsize-successor ?s1 ?s2)
       (boardsize-successor ?s2 ?size_before))
  :effect
  (and (increase (total-cost) 1) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly3ugly10cut-board-small :parameters
  (?b - board ?p - part ?m - highspeed-saw ?w - awood ?surface - surface
   ?size_before ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p small) (in-highspeed-saw ?b ?m) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?size_before))
  :effect
  (and (increase (total-cost) 1) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly4ugly6unload-highspeed-saw :parameters
  (?b - board ?m - highspeed-saw) :precondition (in-highspeed-saw ?b ?m)
  :effect (and (available ?b) (not (in-highspeed-saw ?b ?m)) (empty ?m)))
 (:action ugly5ugly13cut-board-medium :parameters
  (?b - board ?p - part ?m - highspeed-saw ?w - awood ?surface - surface
   ?size_before ?s1 ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p medium) (in-highspeed-saw ?b ?m) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1)
       (boardsize-successor ?s1 ?size_before))
  :effect
  (and (increase (total-cost) 1) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly6ugly7do-saw-small :parameters
  (?b - board ?p - part ?m - saw ?w - awood ?surface - surface ?size_before
   ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p small) (available ?b) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?size_before))
  :effect
  (and (increase (total-cost) 1) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly7ugly11do-saw-medium :parameters
  (?b - board ?p - part ?m - saw ?w - awood ?surface - surface ?size_before ?s1
   ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p medium) (available ?b) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1)
       (boardsize-successor ?s1 ?size_before))
  :effect
  (and (increase (total-cost) 1) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly8ugly4load-highspeed-saw :parameters
  (?b - board ?m - highspeed-saw) :precondition (and (empty ?m) (available ?b))
  :effect (and (not (available ?b)) (not (empty ?m)) (in-highspeed-saw ?b ?m)))
 (:action ugly9ugly1do-spray-varnish :parameters
  (?x - part ?m - spray-varnisher ?newcolour - acolour ?surface - surface)
  :precondition
  (and (available ?x) (has-colour ?m ?newcolour)
       (surface-condition ?x ?surface) (is-smooth ?surface)
       (treatment ?x untreated))
  :effect
  (and (not (treatment ?x untreated)) (treatment ?x varnished)
       (not (colour ?x natural)) (colour ?x ?newcolour)))
 (:action ugly10ugly8do-grind :parameters
  (?x - part ?m - grinder ?oldsurface - surface ?oldcolour - acolour
   ?oldtreatment ?newtreatment - treatmentstatus)
  :precondition
  (and (available ?x) (surface-condition ?x ?oldsurface)
       (is-smooth ?oldsurface) (colour ?x ?oldcolour)
       (treatment ?x ?oldtreatment)
       (grind-treatment-change ?oldtreatment ?newtreatment))
  :effect
  (and (not (surface-condition ?x ?oldsurface))
       (surface-condition ?x verysmooth) (not (treatment ?x ?oldtreatment))
       (treatment ?x ?newtreatment) (not (colour ?x ?oldcolour))
       (colour ?x natural)))
 (:action ugly11ugly12do-glaze :parameters
  (?x - part ?m - glazer ?newcolour - acolour) :precondition
  (and (available ?x) (has-colour ?m ?newcolour) (treatment ?x untreated))
  :effect
  (and (not (treatment ?x untreated)) (treatment ?x glazed)
       (not (colour ?x natural)) (colour ?x ?newcolour)))
 (:action ugly12ugly3cut-board-large :parameters
  (?b - board ?p - part ?m - highspeed-saw ?w - awood ?surface - surface
   ?size_before ?s1 ?s2 ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p large) (in-highspeed-saw ?b ?m) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1) (boardsize-successor ?s1 ?s2)
       (boardsize-successor ?s2 ?size_before))
  :effect
  (and (increase (total-cost) 1) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly13ugly9do-immersion-varnish :parameters
  (?x - part ?m - immersion-varnisher ?newcolour - acolour ?surface - surface)
  :precondition
  (and (available ?x) (has-colour ?m ?newcolour)
       (surface-condition ?x ?surface) (is-smooth ?surface)
       (treatment ?x untreated))
  :effect
  (and (not (treatment ?x untreated)) (treatment ?x varnished)
       (not (colour ?x natural)) (colour ?x ?newcolour)))) 