int bm(String string, String substring):
    int m = string.length
    int n = substring.length
    
    // matching string[start:] to substring
    int start = 0
    // the index in string
    int i = string.length-1
    // the index in substring
    int j = substring.length-1
    
    Map<String, int> lastOcurrence = _lastOcurrence(substring)
    
    // until there is no possible alignment
    while start <= string.length-substring.length:
        // if the values match, consider the previous character
        if string[i] == substring[j]:
            i--
            j--
            // if we had a complete match, return the start index
            if j == -1:
                return start
                
        // otherwise,
        else:
            int value = lastOcurrence[substring[i]]
            // if the character doesn't occur, then align after i
            if value == null:
                start = 1 + i
            // if we are past value, increment the alignment
            else if j > value:
                start ++
            // otherwise, fix substring[value] to this index
            else:
                start = 1 - value
                
            i = start + substring.length - 1
            j = substring.length - 1
    
    // we couldn't find the substring
    return -1