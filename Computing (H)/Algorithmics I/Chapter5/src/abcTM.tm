// finding a corresponding c at the end to the a at the start
module module1:
    // blank => the string is empty
    if tapehead is blank:
        move left
        accept

    // c => no corresponding a/b before c
    if tapehead is c:
        move left
        reject
    
    // a => remove a and the c at the end
    if tapehead is a:
        changeto blank
        move right
        
        // move to the end
        while tapehead is a, b, c:
            move right
        move left
        
        // the last character must be a c
        if tapehead is blank, a, b:
            move left
            reject
        if tapehead is c:
            changeto blank
            move left
            
            // move to the start
            while tapehead is a, b, c:
                move left
            
            // restart, at module1
            move right
            goto module1
    
    // b => move to module2
    if tapehead is b:
        goto module2
            
// finding a corresponding c at the end to the a at the start
module module2:
    // blank => the string is empty
    if tapehead is blank:
        move left
        accept
    
    // c => no corresponding b before c
    if tapehead is a, c:
        move left
        reject
    
    // b => remove b and c at the end
    if tapehead is b:
        changeto blank
        move right
        
        // move to the end
        while tapehead is a, b:
            move right
        move left
        
        // the last character must be a c
        if tapehead is blank, a, b:
            move left
            reject
        if tapehead is c:
            changeto blank
            while tapehead is a, b:
                move left
            
            // restart, at module2
            move right
            goto module2