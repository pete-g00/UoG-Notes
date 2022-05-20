u = 0 // dummy variable
z = 0 // product

A: if x == 0 goto C // end of outer loop
    x = x-1 // perform this loop x times
    v = y+1 // each time around the loop, set v to equal y
    v = v-1 // in a slightly contrived way
    
B: if v == 0 goto A // end of inner loop
    v = v-1 // perform this loop v times (i.e. y)
    z = z+1 // each time, incrementing z
    
    if u == 0 goto B // always goes to B

C: halt