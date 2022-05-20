List<Edge> dijkstraRefinement(Graph graph):
    // the tree vertices
    List<Vertex> tv = graph.vertices[:1]
    // the non-tree vertices
    List<Vertex> ntv = graph.vertices[1:]
    // the edges in the minimum spanning tree
    List<Edge> spanTree = []
        
    // initialise the best tree-vertex -> it is the first vertex
    for Vertex v1 in ntv:
        v1.bestTV = graph.vertices[0]
    
    // until there are no more non-tree vertices,
    while ntv.length > 0:
        // find the edge from a non-tree vertex to a 
        // tree vertex with smallest weight
        Edge edge = _minEdge(ntv)
        // make it a tree vertex
         tv.add(tv.remove(edge.from))
         // add it to the minimum spanning tree list
         spanTree.add(edge)
         
         // update the best tree vertices using the new vertex
         for Vertex v2 in ntv:
             if graph.weight(v2, v2.bestTV) > graph.weight(v2, 
             edge.from):
                 v2.bestTV = edge.from
                 
    return spanTree