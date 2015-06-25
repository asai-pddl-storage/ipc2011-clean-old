


(define (problem grid-x8-y8-t8-k8-l8-p100)
(:domain grid)
(:objects 
        f0-0f f1-0f f2-0f f3-0f f4-0f f5-0f f6-0f f7-0f 
        f0-1f f1-1f f2-1f f3-1f f4-1f f5-1f f6-1f f7-1f 
        f0-2f f1-2f f2-2f f3-2f f4-2f f5-2f f6-2f f7-2f 
        f0-3f f1-3f f2-3f f3-3f f4-3f f5-3f f6-3f f7-3f 
        f0-4f f1-4f f2-4f f3-4f f4-4f f5-4f f6-4f f7-4f 
        f0-5f f1-5f f2-5f f3-5f f4-5f f5-5f f6-5f f7-5f 
        f0-6f f1-6f f2-6f f3-6f f4-6f f5-6f f6-6f f7-6f 
        f0-7f f1-7f f2-7f f3-7f f4-7f f5-7f f6-7f f7-7f 
        shape0 shape1 shape2 shape3 shape4 shape5 shape6 shape7 
        key7-0 key7-1 key7-2 key7-3 key7-4 key7-5 key7-6 key7-7 
)
(:init
(arm-empty)
(place f0-0f)
(place f1-0f)
(place f2-0f)
(place f3-0f)
(place f4-0f)
(place f5-0f)
(place f6-0f)
(place f7-0f)
(place f0-1f)
(place f1-1f)
(place f2-1f)
(place f3-1f)
(place f4-1f)
(place f5-1f)
(place f6-1f)
(place f7-1f)
(place f0-2f)
(place f1-2f)
(place f2-2f)
(place f3-2f)
(place f4-2f)
(place f5-2f)
(place f6-2f)
(place f7-2f)
(place f0-3f)
(place f1-3f)
(place f2-3f)
(place f3-3f)
(place f4-3f)
(place f5-3f)
(place f6-3f)
(place f7-3f)
(place f0-4f)
(place f1-4f)
(place f2-4f)
(place f3-4f)
(place f4-4f)
(place f5-4f)
(place f6-4f)
(place f7-4f)
(place f0-5f)
(place f1-5f)
(place f2-5f)
(place f3-5f)
(place f4-5f)
(place f5-5f)
(place f6-5f)
(place f7-5f)
(place f0-6f)
(place f1-6f)
(place f2-6f)
(place f3-6f)
(place f4-6f)
(place f5-6f)
(place f6-6f)
(place f7-6f)
(place f0-7f)
(place f1-7f)
(place f2-7f)
(place f3-7f)
(place f4-7f)
(place f5-7f)
(place f6-7f)
(place f7-7f)
(shape shape0)
(shape shape1)
(shape shape2)
(shape shape3)
(shape shape4)
(shape shape5)
(shape shape6)
(shape shape7)
(key key7-0)
(key-shape key7-0 shape7)
(key key7-1)
(key-shape key7-1 shape7)
(key key7-2)
(key-shape key7-2 shape7)
(key key7-3)
(key-shape key7-3 shape7)
(key key7-4)
(key-shape key7-4 shape7)
(key key7-5)
(key-shape key7-5 shape7)
(key key7-6)
(key-shape key7-6 shape7)
(key key7-7)
(key-shape key7-7 shape7)
(conn f0-0f f1-0f)
(conn f1-0f f2-0f)
(conn f2-0f f3-0f)
(conn f3-0f f4-0f)
(conn f4-0f f5-0f)
(conn f5-0f f6-0f)
(conn f6-0f f7-0f)
(conn f0-1f f1-1f)
(conn f1-1f f2-1f)
(conn f2-1f f3-1f)
(conn f3-1f f4-1f)
(conn f4-1f f5-1f)
(conn f5-1f f6-1f)
(conn f6-1f f7-1f)
(conn f0-2f f1-2f)
(conn f1-2f f2-2f)
(conn f2-2f f3-2f)
(conn f3-2f f4-2f)
(conn f4-2f f5-2f)
(conn f5-2f f6-2f)
(conn f6-2f f7-2f)
(conn f0-3f f1-3f)
(conn f1-3f f2-3f)
(conn f2-3f f3-3f)
(conn f3-3f f4-3f)
(conn f4-3f f5-3f)
(conn f5-3f f6-3f)
(conn f6-3f f7-3f)
(conn f0-4f f1-4f)
(conn f1-4f f2-4f)
(conn f2-4f f3-4f)
(conn f3-4f f4-4f)
(conn f4-4f f5-4f)
(conn f5-4f f6-4f)
(conn f6-4f f7-4f)
(conn f0-5f f1-5f)
(conn f1-5f f2-5f)
(conn f2-5f f3-5f)
(conn f3-5f f4-5f)
(conn f4-5f f5-5f)
(conn f5-5f f6-5f)
(conn f6-5f f7-5f)
(conn f0-6f f1-6f)
(conn f1-6f f2-6f)
(conn f2-6f f3-6f)
(conn f3-6f f4-6f)
(conn f4-6f f5-6f)
(conn f5-6f f6-6f)
(conn f6-6f f7-6f)
(conn f0-7f f1-7f)
(conn f1-7f f2-7f)
(conn f2-7f f3-7f)
(conn f3-7f f4-7f)
(conn f4-7f f5-7f)
(conn f5-7f f6-7f)
(conn f6-7f f7-7f)
(conn f0-0f f0-1f)
(conn f1-0f f1-1f)
(conn f2-0f f2-1f)
(conn f3-0f f3-1f)
(conn f4-0f f4-1f)
(conn f5-0f f5-1f)
(conn f6-0f f6-1f)
(conn f7-0f f7-1f)
(conn f0-1f f0-2f)
(conn f1-1f f1-2f)
(conn f2-1f f2-2f)
(conn f3-1f f3-2f)
(conn f4-1f f4-2f)
(conn f5-1f f5-2f)
(conn f6-1f f6-2f)
(conn f7-1f f7-2f)
(conn f0-2f f0-3f)
(conn f1-2f f1-3f)
(conn f2-2f f2-3f)
(conn f3-2f f3-3f)
(conn f4-2f f4-3f)
(conn f5-2f f5-3f)
(conn f6-2f f6-3f)
(conn f7-2f f7-3f)
(conn f0-3f f0-4f)
(conn f1-3f f1-4f)
(conn f2-3f f2-4f)
(conn f3-3f f3-4f)
(conn f4-3f f4-4f)
(conn f5-3f f5-4f)
(conn f6-3f f6-4f)
(conn f7-3f f7-4f)
(conn f0-4f f0-5f)
(conn f1-4f f1-5f)
(conn f2-4f f2-5f)
(conn f3-4f f3-5f)
(conn f4-4f f4-5f)
(conn f5-4f f5-5f)
(conn f6-4f f6-5f)
(conn f7-4f f7-5f)
(conn f0-5f f0-6f)
(conn f1-5f f1-6f)
(conn f2-5f f2-6f)
(conn f3-5f f3-6f)
(conn f4-5f f4-6f)
(conn f5-5f f5-6f)
(conn f6-5f f6-6f)
(conn f7-5f f7-6f)
(conn f0-6f f0-7f)
(conn f1-6f f1-7f)
(conn f2-6f f2-7f)
(conn f3-6f f3-7f)
(conn f4-6f f4-7f)
(conn f5-6f f5-7f)
(conn f6-6f f6-7f)
(conn f7-6f f7-7f)
(conn f1-0f f0-0f)
(conn f2-0f f1-0f)
(conn f3-0f f2-0f)
(conn f4-0f f3-0f)
(conn f5-0f f4-0f)
(conn f6-0f f5-0f)
(conn f7-0f f6-0f)
(conn f1-1f f0-1f)
(conn f2-1f f1-1f)
(conn f3-1f f2-1f)
(conn f4-1f f3-1f)
(conn f5-1f f4-1f)
(conn f6-1f f5-1f)
(conn f7-1f f6-1f)
(conn f1-2f f0-2f)
(conn f2-2f f1-2f)
(conn f3-2f f2-2f)
(conn f4-2f f3-2f)
(conn f5-2f f4-2f)
(conn f6-2f f5-2f)
(conn f7-2f f6-2f)
(conn f1-3f f0-3f)
(conn f2-3f f1-3f)
(conn f3-3f f2-3f)
(conn f4-3f f3-3f)
(conn f5-3f f4-3f)
(conn f6-3f f5-3f)
(conn f7-3f f6-3f)
(conn f1-4f f0-4f)
(conn f2-4f f1-4f)
(conn f3-4f f2-4f)
(conn f4-4f f3-4f)
(conn f5-4f f4-4f)
(conn f6-4f f5-4f)
(conn f7-4f f6-4f)
(conn f1-5f f0-5f)
(conn f2-5f f1-5f)
(conn f3-5f f2-5f)
(conn f4-5f f3-5f)
(conn f5-5f f4-5f)
(conn f6-5f f5-5f)
(conn f7-5f f6-5f)
(conn f1-6f f0-6f)
(conn f2-6f f1-6f)
(conn f3-6f f2-6f)
(conn f4-6f f3-6f)
(conn f5-6f f4-6f)
(conn f6-6f f5-6f)
(conn f7-6f f6-6f)
(conn f1-7f f0-7f)
(conn f2-7f f1-7f)
(conn f3-7f f2-7f)
(conn f4-7f f3-7f)
(conn f5-7f f4-7f)
(conn f6-7f f5-7f)
(conn f7-7f f6-7f)
(conn f0-1f f0-0f)
(conn f1-1f f1-0f)
(conn f2-1f f2-0f)
(conn f3-1f f3-0f)
(conn f4-1f f4-0f)
(conn f5-1f f5-0f)
(conn f6-1f f6-0f)
(conn f7-1f f7-0f)
(conn f0-2f f0-1f)
(conn f1-2f f1-1f)
(conn f2-2f f2-1f)
(conn f3-2f f3-1f)
(conn f4-2f f4-1f)
(conn f5-2f f5-1f)
(conn f6-2f f6-1f)
(conn f7-2f f7-1f)
(conn f0-3f f0-2f)
(conn f1-3f f1-2f)
(conn f2-3f f2-2f)
(conn f3-3f f3-2f)
(conn f4-3f f4-2f)
(conn f5-3f f5-2f)
(conn f6-3f f6-2f)
(conn f7-3f f7-2f)
(conn f0-4f f0-3f)
(conn f1-4f f1-3f)
(conn f2-4f f2-3f)
(conn f3-4f f3-3f)
(conn f4-4f f4-3f)
(conn f5-4f f5-3f)
(conn f6-4f f6-3f)
(conn f7-4f f7-3f)
(conn f0-5f f0-4f)
(conn f1-5f f1-4f)
(conn f2-5f f2-4f)
(conn f3-5f f3-4f)
(conn f4-5f f4-4f)
(conn f5-5f f5-4f)
(conn f6-5f f6-4f)
(conn f7-5f f7-4f)
(conn f0-6f f0-5f)
(conn f1-6f f1-5f)
(conn f2-6f f2-5f)
(conn f3-6f f3-5f)
(conn f4-6f f4-5f)
(conn f5-6f f5-5f)
(conn f6-6f f6-5f)
(conn f7-6f f7-5f)
(conn f0-7f f0-6f)
(conn f1-7f f1-6f)
(conn f2-7f f2-6f)
(conn f3-7f f3-6f)
(conn f4-7f f4-6f)
(conn f5-7f f5-6f)
(conn f6-7f f6-6f)
(conn f7-7f f7-6f)
(open f0-0f)
(open f1-0f)
(open f2-0f)
(open f3-0f)
(open f4-0f)
(open f5-0f)
(open f6-0f)
(open f7-0f)
(open f0-1f)
(open f1-1f)
(open f3-1f)
(open f4-1f)
(open f5-1f)
(open f6-1f)
(open f7-1f)
(open f0-2f)
(open f1-2f)
(open f2-2f)
(open f3-2f)
(open f5-2f)
(open f6-2f)
(open f0-3f)
(open f1-3f)
(open f2-3f)
(open f3-3f)
(open f4-3f)
(open f5-3f)
(open f6-3f)
(open f0-4f)
(open f1-4f)
(open f2-4f)
(open f3-4f)
(open f5-4f)
(open f6-4f)
(open f7-4f)
(open f0-5f)
(open f1-5f)
(open f2-5f)
(open f3-5f)
(open f5-5f)
(open f6-5f)
(open f7-5f)
(open f0-6f)
(open f1-6f)
(open f2-6f)
(open f3-6f)
(open f4-6f)
(open f5-6f)
(open f6-6f)
(open f7-6f)
(open f0-7f)
(open f1-7f)
(open f4-7f)
(open f5-7f)
(open f6-7f)
(open f7-7f)
(locked f3-7f)
(lock-shape f3-7f shape7)
(locked f2-1f)
(lock-shape f2-1f shape7)
(locked f4-4f)
(lock-shape f4-4f shape7)
(locked f4-5f)
(lock-shape f4-5f shape7)
(locked f2-7f)
(lock-shape f2-7f shape7)
(locked f7-3f)
(lock-shape f7-3f shape7)
(locked f7-2f)
(lock-shape f7-2f shape7)
(locked f4-2f)
(lock-shape f4-2f shape7)
(at key7-0 f3-3f)
(at key7-1 f2-7f)
(at key7-2 f0-1f)
(at key7-3 f3-7f)
(at key7-4 f0-0f)
(at key7-5 f3-1f)
(at key7-6 f6-7f)
(at key7-7 f2-1f)
(at-robot f7-1f)
)
(:goal
(and
(at key7-0 f4-2f)
(at key7-1 f0-6f)
(at key7-2 f2-5f)
(at key7-3 f6-4f)
(at key7-4 f2-6f)
(at key7-5 f6-0f)
(at key7-6 f6-1f)
(at key7-7 f6-2f)
)
)
)


