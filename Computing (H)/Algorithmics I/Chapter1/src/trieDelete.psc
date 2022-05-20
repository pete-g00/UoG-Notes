bool delete(Trie trie, String word):
    Node node = trie.root
    
    for char letter in word:
        // if the node has the required child,
        if node.hasChild(letter):
            // move to the next character
            node = node.getChild(letter)
        // otherwise, the word isn't present
        else:
            return false
    
    // we can only delete a word
    if not node.isWord:
        return false
        
    // the node no longer represents a word
    node.isWord = false
    
    // while a node can be deleted,
    while node != trie.root and node.hasChild and not node.isWord:
        // delete it
        node.remove()
        node = node.parent
    
    // the word was present in the trie
    return true