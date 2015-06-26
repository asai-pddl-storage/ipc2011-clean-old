

(define (problem BW-rand-10)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10  - block)
(:init
(handempty)
(on b1 b4)
(on b2 b9)
(on b3 b8)
(on b4 b5)
(on b5 b10)
(on b6 b3)
(ontable b7)
(on b8 b1)
(on b9 b6)
(on b10 b7)
(clear b2)
)
(:goal
(and
(on b2 b3)
(on b3 b5)
(on b5 b4)
(on b6 b2)
(on b8 b1)
(on b10 b7))
)
)


