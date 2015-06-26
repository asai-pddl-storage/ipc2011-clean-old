

(define (problem BW-rand-10)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init
(handempty)
(on b1 b6)
(ontable b2)
(on b3 b7)
(on b4 b5)
(on b5 b1)
(ontable b6)
(on b7 b4)
(on b8 b2)
(on b9 b3)
(ontable b10)
(clear b8)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b8)
(on b3 b7)
(on b6 b10)
(on b7 b6)
(on b8 b9)
(on b10 b4))
)
)


