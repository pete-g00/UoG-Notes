String lzwDecompress(String bits, int k, Map<Code, String> dict,
    Code code):
    // read the first k bits from the compressed file
    String string = dict[bits[:k]]
    // the index of the text
    int i = k
    
    // until there are bits left to read,
    while i < bits.length:
        // read the old string
        String oldS = string[-k:]
        
        // increase the codeword length if required
        if dict.isFull:
            k++
        
        // interpret the bit to string and add it to the file
        String s = dict[bits[i:i+k].toCode()]
        string += s
        
        // add the new string
        dict[code.next()] = oldS + s[0]
        
        // move past the code we just read
        i += k
        
    return string