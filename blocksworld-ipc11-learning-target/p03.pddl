

(define (problem BW-rand-10)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init
(handempty)
(ontable b1)
(on b2 b1)
(on b3 b10)
(ontable b4)
(on b5 b4)
(on b6 b5)
(on b7 b9)
(on b8 b7)
(ontable b9)
(ontable b10)
(clear b2)
(clear b3)
(clear b6)
(clear b8)
)
(:goal
(and
(on b1 b5)
(on b2 b8)
(on b3 b1)
(on b4 b2)
(on b5 b7)
(on b6 b3)
(on b8 b10)
(on b9 b6))
)
)


