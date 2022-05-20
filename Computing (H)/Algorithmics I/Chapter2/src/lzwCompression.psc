String lzwCompress(String string, int k, Map<String, Code> dict, 
    Code code):
    // the index in the string
    int i = 0
    
    // the compressed file
    String bits = ""
    
    // until we've not looked at all the characters,
    while string.length < i:
        // find out how many letters we can find in the dictionary
        int j = 1
        while string[i:i+j] in dict:
            j++
        
        // add the string to the dictionary
        String s = string[i:i+j]
        dict[s+string[i]] = code.next()
        
        // add the code to the text
        String bits = dict[string[i:i+j]].toString(length=k)
        bits += s
        
        // move past the matched characters
        i += j
    return bits