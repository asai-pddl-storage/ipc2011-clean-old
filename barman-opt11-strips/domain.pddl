
(define (domain barman) (:requirements :strips :typing :action-costs)
 (:predicates (clean ?c - container) (handempty ?h - hand) (shaked ?s - shaker)
  (cocktail-part2 ?c - cocktail ?i - ingredient)
  (shaker-empty-level ?s - shaker ?l - level) (next ?l1 ?l2 - level)
  (ontable ?c - container) (unshaked ?s - shaker)
  (cocktail-part1 ?c - cocktail ?i - ingredient)
  (shaker-level ?s - shaker ?l - level) (holding ?h - hand ?c - container)
  (contains ?c - container ?b - beverage) (empty ?c - container)
  (used ?c - container ?b - beverage)
  (dispenses ?d - dispenser ?i - ingredient))
 (:types hand level beverage dispenser container - object ingredient cocktail -
  beverage shot shaker - container)
 (:functions (total-cost) - number)
 (:action ugly1ugly2ugly5grasp :parameters (?h - hand ?c - container)
  :precondition (and (ontable ?c) (handempty ?h)) :effect
  (and (not (ontable ?c)) (not (handempty ?h)) (holding ?h ?c)
       (increase (total-cost) 1)))
 (:action ugly2ugly5ugly1leave :parameters (?h - hand ?c - container)
  :precondition (holding ?h ?c) :effect
  (and (not (holding ?h ?c)) (handempty ?h) (ontable ?c)
       (increase (total-cost) 1)))
 (:action ugly3ugly10ugly8refill-shot :parameters
  (?s - shot ?i - ingredient ?h1 ?h2 - hand ?d - dispenser) :precondition
  (and (holding ?h1 ?s) (handempty ?h2) (dispenses ?d ?i) (empty ?s)
       (used ?s ?i))
  :effect (and (not (empty ?s)) (contains ?s ?i) (increase (total-cost) 10)))
 (:action ugly4ugly6ugly7shake :parameters
  (?b - cocktail ?d1 ?d2 - ingredient ?s - shaker ?h1 ?h2 - hand) :precondition
  (and (holding ?h1 ?s) (handempty ?h2) (contains ?s ?d1) (contains ?s ?d2)
       (cocktail-part1 ?b ?d1) (cocktail-part2 ?b ?d2) (unshaked ?s))
  :effect
  (and (not (unshaked ?s)) (not (contains ?s ?d1)) (not (contains ?s ?d2))
       (shaked ?s) (contains ?s ?b) (increase (total-cost) 1)))
 (:action ugly5ugly1ugly2empty-shot :parameters
  (?h - hand ?p - shot ?b - beverage) :precondition
  (and (holding ?h ?p) (contains ?p ?b)) :effect
  (and (not (contains ?p ?b)) (empty ?p) (increase (total-cost) 1)))
 (:action ugly6ugly7ugly11pour-shaker-to-shot :parameters
  (?b - beverage ?d - shot ?h - hand ?s - shaker ?l ?l1 - level) :precondition
  (and (holding ?h ?s) (shaked ?s) (empty ?d) (clean ?d) (contains ?s ?b)
       (shaker-level ?s ?l) (next ?l1 ?l))
  :effect
  (and (not (clean ?d)) (not (empty ?d)) (contains ?d ?b) (shaker-level ?s ?l1)
       (not (shaker-level ?s ?l)) (increase (total-cost) 1)))
 (:action ugly7ugly11ugly12fill-shot :parameters
  (?s - shot ?i - ingredient ?h1 ?h2 - hand ?d - dispenser) :precondition
  (and (holding ?h1 ?s) (handempty ?h2) (dispenses ?d ?i) (empty ?s)
       (clean ?s))
  :effect
  (and (not (empty ?s)) (contains ?s ?i) (not (clean ?s)) (used ?s ?i)
       (increase (total-cost) 10)))
 (:action ugly8ugly4ugly6pour-shot-to-clean-shaker :parameters
  (?s - shot ?i - ingredient ?d - shaker ?h1 - hand ?l ?l1 - level)
  :precondition
  (and (holding ?h1 ?s) (contains ?s ?i) (empty ?d) (clean ?d)
       (shaker-level ?d ?l) (next ?l ?l1))
  :effect
  (and (not (contains ?s ?i)) (empty ?s) (contains ?d ?i) (not (empty ?d))
       (not (clean ?d)) (unshaked ?d) (not (shaker-level ?d ?l))
       (shaker-level ?d ?l1) (increase (total-cost) 1)))
 (:action ugly9ugly9ugly9empty-shaker :parameters
  (?h - hand ?s - shaker ?b - cocktail ?l ?l1 - level) :precondition
  (and (holding ?h ?s) (contains ?s ?b) (shaked ?s) (shaker-level ?s ?l)
       (shaker-empty-level ?s ?l1))
  :effect
  (and (not (shaked ?s)) (not (shaker-level ?s ?l)) (shaker-level ?s ?l1)
       (not (contains ?s ?b)) (empty ?s) (increase (total-cost) 1)))
 (:action ugly10ugly8ugly4clean-shot :parameters
  (?s - shot ?b - beverage ?h1 ?h2 - hand) :precondition
  (and (holding ?h1 ?s) (handempty ?h2) (empty ?s) (used ?s ?b)) :effect
  (and (not (used ?s ?b)) (clean ?s) (increase (total-cost) 1)))
 (:action ugly11ugly12ugly3clean-shaker :parameters
  (?h1 ?h2 - hand ?s - shaker) :precondition
  (and (holding ?h1 ?s) (handempty ?h2) (empty ?s)) :effect
  (and (clean ?s) (increase (total-cost) 1)))
 (:action ugly12ugly3ugly10pour-shot-to-used-shaker :parameters
  (?s - shot ?i - ingredient ?d - shaker ?h1 - hand ?l ?l1 - level)
  :precondition
  (and (holding ?h1 ?s) (contains ?s ?i) (unshaked ?d) (shaker-level ?d ?l)
       (next ?l ?l1))
  :effect
  (and (not (contains ?s ?i)) (contains ?d ?i) (empty ?s)
       (not (shaker-level ?d ?l)) (shaker-level ?d ?l1)
       (increase (total-cost) 1)))) 