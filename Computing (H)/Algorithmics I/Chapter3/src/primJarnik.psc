List<Edge> primJarnik(Graph graph):
    List<Vertex> tv = graph.vertices[:1]
    List<Vertex> ntv = graph.vertices[1:]
    List<Edge> spanTree = []
    
    // until there are no more non-tree vertices,
    while ntv.length > 0:
        // find the edge from a non-tree vertex to a 
        // tree vertex with smallest weight
         Edge edge = _minEdge(tv, ntv)
         // make it a tree vertex
         tv.add(ntv.remove(edge.from))
         // add it to the minimum spanning tree list
         spanTree.add(edge)
         
    return spanTree