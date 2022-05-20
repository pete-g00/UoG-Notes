module palindrome:
    // empty string is ok
    if tapehead is blank:
        move left
        accept
    
    // a => find a/blank at the end
    if tapehead is a:
        changeto blank
        move right
        
        // move to the end
        while tapehead is a, b:
            move right
        move left
        
        // blank => a was the last character
        if tapehead is blank:
            move left
            accept
        // b => doesn't match a
        if tapehead is b:
            move left
            reject
        // a => remove and restart
        if tapehead is a:
            changeto blank
            move left
            
            while tapehead is a, b:
                move left
            move right
            goto palindrome
    
    // b => find b/blank at the end
    if tapehead is b:
        changeto blank
        move right
        
        // move to the end
        while tapehead is a, b:
            move right
        move left
        
        // blank => b was the last character
        if tapehead is blank:
            move left
            accept
        // a => doesn't match b
        if tapehead is a:
            move left
            reject
        // b => remove and restart
        if tapehead is b:
            changeto blank
            move left
            
            while tapehead is a, b:
                move left
            move right
            goto palindrome