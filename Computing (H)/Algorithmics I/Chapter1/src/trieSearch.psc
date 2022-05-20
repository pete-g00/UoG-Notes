bool search(Trie trie, String word):
    Node node = trie.root
    
    for char letter in word:
        // if the node has the required child, 
        if node.hasChild(letter):
            // move to the next character
            node = node.getChild(letter)
        // otherwise, the word isn't present
        else:
            return false
    
    // for the trie to have a word, it actually needs to be a word
    return child.isWord