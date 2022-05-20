void insert(Trie trie, String word):
    Node node = trie.root
    for char letter in word:
        // if the node has the required child,
        if node.hasChild(letter):
            // move to the next character
            node = node.getChild(letter)
        else:
            // create a node for that character,
            Node child = Node(letter)
            // attach it to the node,
            node.addChild(child)
            // and move to the next character
            node = child
    
    // the final character represents a word
    node.isWord = true