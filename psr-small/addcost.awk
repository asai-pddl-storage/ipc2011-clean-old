#!/usr/bin/awk -f

/:action/{
    moveaction=0
}

/:action OPEN/{
    moveaction=1
}

/:effect/{
    print
    if (moveaction==1){
        print "(increase (total-cost) 1)"
    }
    next
}

{
    print
}
