module add1:
    // move to the end
    while tapehead is 0, 1:
        move right
    move left
    
    // find the 0/blank at the end and change it to 1
    while tapehead is 1:
        move left
    changeto 1
    move right
    
    // make all the 1's after it a 0
    while tapehead is 1:
        changeto 0
        move right
    
    move left
    halt