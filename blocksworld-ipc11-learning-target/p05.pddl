

(define (problem BW-rand-10)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init
(handempty)
(on b1 b4)
(on b2 b3)
(on b3 b9)
(on b4 b8)
(on b5 b1)
(on b6 b7)
(ontable b7)
(ontable b8)
(on b9 b5)
(on b10 b6)
(clear b2)
(clear b10)
)
(:goal
(and
(on b1 b6)
(on b2 b8)
(on b4 b9)
(on b5 b10)
(on b7 b1)
(on b8 b7)
(on b9 b3)
(on b10 b4))
)
)


