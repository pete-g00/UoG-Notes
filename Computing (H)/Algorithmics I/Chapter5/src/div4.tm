module div4:
    // move to the end
    while tapehead is 0, 1:
        move right
    move left
    
    // ends with 1 -> not a multiple of 4
    if tapehead is 1:
        changeto 0
        move left
        goto removeLeft
    
    if tapehead is 0:
        changeto blank
        move left
        
        // ends with '00' or '_0' -> multiple of 4
        if tapehead is blank, 0:
            changeto 1
            move left
            goto removeLeft
        
        // ends with '10' -> not a multiple of 4
        if tapehead is 1:
            changeto 0
            move left
            goto removeLeft

module removeLeft:
    // remove everything to the left from now
    while tapehead is 0, 1:
        changeto blank
        move left
    move left
    halt