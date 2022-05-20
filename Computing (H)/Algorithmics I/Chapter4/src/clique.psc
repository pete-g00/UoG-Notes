bool clique(Graph graph, int k):
    List<Vertex> vertices = []
    // choose k vertices from the graph
    for int i in range(0, k):
        vertices.add(graph.vertices.random())
    
    // check every distinct pair of vertices has an edge
    for Vertex v1 in vertices:
        for Vertex v2 in vertices:
            if v1 != v2 and not graph.hasEdge(v1, v2):
                return false
    return true