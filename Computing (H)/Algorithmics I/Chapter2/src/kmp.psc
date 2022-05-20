int kmp(String string, String substring):
    // the index in string
    int i = 0
    // the index in substring
    int j = 0
    
    List<int> borderTable = _createBorderTable(substring)
    
    // until we cannot find a match,
    while j <= substring.length:
        // if the values match, consider the next character
        if string[i] == substring[j]:
            i++
            j++
            // return if end of substring
            if j == substring.length:
                return i-j
        // otherwise, 
        else:
            // if there is a border, go to end of border prefix
            if borderTable[j] > 0:
                j = borderTable[j]
            // if this is substring[0], increment string index
            else if j == 0:
                i++
            // otherwise, search the substring from start
            else:
                j = 0
    
    // the substring wasn't found
    return -1