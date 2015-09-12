
(define (domain woodworking) (:requirements :typing :action-costs)
 (:predicates (colour ?obj - part ?colour - acolour)
  (in-highspeed-saw ?b - board ?m - highspeed-saw)
  (grind-treatment-change ?old ?new - treatmentstatus) (unused ?obj - part)
  (wood ?obj - woodobj ?wood - awood)
  (surface-condition ?obj - woodobj ?surface - surface)
  (has-colour ?machine - machine ?colour - acolour)
  (boardsize-successor ?size1 ?size2 - aboardsize)
  (contains-part ?b - board ?p - part) (available ?obj - woodobj)
  (is-smooth ?surface - surface)
  (treatment ?obj - part ?treatment - treatmentstatus)
  (empty ?m - highspeed-saw) (boardsize ?board - board ?size - aboardsize)
  (goalsize ?part - part ?size - apartsize))
 (:types acolour awood woodobj machine surface treatmentstatus aboardsize
  apartsize - object highspeed-saw glazer grinder immersion-varnisher planer
  saw spray-varnisher - machine board part - woodobj)
 (:constants verysmooth smooth rough - surface varnished glazed untreated
  colourfragments - treatmentstatus natural - acolour small medium large -
  apartsize)
 (:functions (total-cost) - number)
 (:action ugly1450435ugly9ugly1ugly2ugly5do-saw-large :parameters
  (?b - board ?p - part ?m - saw ?w - awood ?surface - surface ?size_before ?s1
   ?s2 ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p large) (available ?b) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1) (boardsize-successor ?s1 ?s2)
       (boardsize-successor ?s2 ?size_before))
  :effect
  (and (increase (total-cost) 30) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly1450436ugly8ugly4ugly6ugly7do-saw-small :parameters
  (?b - board ?p - part ?m - saw ?w - awood ?surface - surface ?size_before
   ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p small) (available ?b) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?size_before))
  :effect
  (and (increase (total-cost) 30) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly1450437ugly7ugly11ugly12ugly3cut-board-large :parameters
  (?b - board ?p - part ?m - highspeed-saw ?w - awood ?surface - surface
   ?size_before ?s1 ?s2 ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p large) (in-highspeed-saw ?b ?m) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1) (boardsize-successor ?s1 ?s2)
       (boardsize-successor ?s2 ?size_before))
  :effect
  (and (increase (total-cost) 10) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly1450438ugly5ugly13ugly9ugly1do-spray-varnish :parameters
  (?x - part ?m - spray-varnisher ?newcolour - acolour ?surface - surface)
  :precondition
  (and (available ?x) (has-colour ?m ?newcolour)
       (surface-condition ?x ?surface) (is-smooth ?surface)
       (treatment ?x untreated))
  :effect
  (and (increase (total-cost) (spray-varnish-cost ?x))
       (not (treatment ?x untreated)) (treatment ?x varnished)
       (not (colour ?x natural)) (colour ?x ?newcolour)))
 (:action ugly1450439ugly2ugly5ugly13ugly9do-immersion-varnish :parameters
  (?x - part ?m - immersion-varnisher ?newcolour - acolour ?surface - surface)
  :precondition
  (and (available ?x) (has-colour ?m ?newcolour)
       (surface-condition ?x ?surface) (is-smooth ?surface)
       (treatment ?x untreated))
  :effect
  (and (increase (total-cost) 10) (not (treatment ?x untreated))
       (treatment ?x varnished) (not (colour ?x natural))
       (colour ?x ?newcolour)))
 (:action ugly1450440ugly11ugly12ugly3ugly10cut-board-small :parameters
  (?b - board ?p - part ?m - highspeed-saw ?w - awood ?surface - surface
   ?size_before ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p small) (in-highspeed-saw ?b ?m) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?size_before))
  :effect
  (and (increase (total-cost) 10) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly1450441ugly12ugly3ugly10ugly8do-grind :parameters
  (?x - part ?m - grinder ?oldsurface - surface ?oldcolour - acolour
   ?oldtreatment ?newtreatment - treatmentstatus)
  :precondition
  (and (available ?x) (surface-condition ?x ?oldsurface)
       (is-smooth ?oldsurface) (colour ?x ?oldcolour)
       (treatment ?x ?oldtreatment)
       (grind-treatment-change ?oldtreatment ?newtreatment))
  :effect
  (and (increase (total-cost) (grind-cost ?x))
       (not (surface-condition ?x ?oldsurface))
       (surface-condition ?x verysmooth) (not (treatment ?x ?oldtreatment))
       (treatment ?x ?newtreatment) (not (colour ?x ?oldcolour))
       (colour ?x natural)))
 (:action ugly1450442ugly6ugly7ugly11ugly12do-glaze :parameters
  (?x - part ?m - glazer ?newcolour - acolour) :precondition
  (and (available ?x) (has-colour ?m ?newcolour) (treatment ?x untreated))
  :effect
  (and (increase (total-cost) (glaze-cost ?x)) (not (treatment ?x untreated))
       (treatment ?x glazed) (not (colour ?x natural)) (colour ?x ?newcolour)))
 (:action ugly1450443ugly1ugly2ugly5ugly13cut-board-medium :parameters
  (?b - board ?p - part ?m - highspeed-saw ?w - awood ?surface - surface
   ?size_before ?s1 ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p medium) (in-highspeed-saw ?b ?m) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1)
       (boardsize-successor ?s1 ?size_before))
  :effect
  (and (increase (total-cost) 10) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly1450444ugly10ugly8ugly4ugly6unload-highspeed-saw :parameters
  (?b - board ?m - highspeed-saw) :precondition (in-highspeed-saw ?b ?m)
  :effect
  (and (increase (total-cost) 10) (available ?b) (not (in-highspeed-saw ?b ?m))
       (empty ?m)))
 (:action ugly1450445ugly4ugly6ugly7ugly11do-saw-medium :parameters
  (?b - board ?p - part ?m - saw ?w - awood ?surface - surface ?size_before ?s1
   ?size_after - aboardsize)
  :precondition
  (and (unused ?p) (goalsize ?p medium) (available ?b) (wood ?b ?w)
       (surface-condition ?b ?surface) (boardsize ?b ?size_before)
       (boardsize-successor ?size_after ?s1)
       (boardsize-successor ?s1 ?size_before))
  :effect
  (and (increase (total-cost) 30) (not (unused ?p)) (available ?p) (wood ?p ?w)
       (surface-condition ?p ?surface) (colour ?p natural)
       (treatment ?p untreated) (boardsize ?b ?size_after)))
 (:action ugly1450446ugly13ugly9ugly1ugly2do-plane :parameters
  (?x - part ?m - planer ?oldsurface - surface ?oldcolour - acolour
   ?oldtreatment - treatmentstatus)
  :precondition
  (and (available ?x) (surface-condition ?x ?oldsurface)
       (treatment ?x ?oldtreatment) (colour ?x ?oldcolour))
  :effect
  (and (increase (total-cost) (plane-cost ?x))
       (not (surface-condition ?x ?oldsurface)) (surface-condition ?x smooth)
       (not (treatment ?x ?oldtreatment)) (treatment ?x untreated)
       (not (colour ?x ?oldcolour)) (colour ?x natural)))
 (:action ugly1450447ugly3ugly10ugly8ugly4load-highspeed-saw :parameters
  (?b - board ?m - highspeed-saw) :precondition (and (empty ?m) (available ?b))
  :effect
  (and (increase (total-cost) 30) (not (available ?b)) (not (empty ?m))
       (in-highspeed-saw ?b ?m)))) 