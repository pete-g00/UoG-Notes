Tree huffman(Map<char, int> frequency):
    // the list of all the nodes in the tree
    List<Node> nodes = []
    // add each character node to the list
    for char key in frequency:
        Node node = CharNode(key)
        node.weight = frequency[key]
        nodes.add(node)
    
    Node node = null
    
    // until there's only one thing left in the list
    while not nodes.length > 1:
        // remove the two smallest values from the list
        Node left = nodes.removeSmallest(node => node.weight)
        Node right = nodes.removeSmallest(node => node.weight)
        
        // create the parent node
        node = Node(left, right)

        // set the weight to the sum of left and right weight
        node.weight = left.weight + right.weight
        
        // add it to the list
        nodes.add(node)
    
    // the root of the tree is the remaining node
    return Tree(nodes[0])