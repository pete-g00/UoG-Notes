int bruteForce(String string, String substring):
    // matching string[start:] to substring
    int start = 0
    // the index in string
    int i = 0
    // the index in substring
    int j = 0
    
    // until there is no possible alignment
    while start <= string.length-substring.length:
        // if the values match, consider the next character
        if string[i] == substring[j]:
            i++
            j++
            
            // if we had a complete match, return the start index
            if j == substring.length:
                return start
        // otherwise, move to next starting position and restart
        else:
            start++
            i = start
            j = 0
    
    // we couldn't find the substring
    return -1