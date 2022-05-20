Map<Vertex, int> dijkstra(Graph graph, Vertex v1):
    // the set of vertices for which we know the optimal distance
    Set<Vertex> S = {v1}
    // the map which gives the corresponding weight for a vertex
    Map<Vertex, int> weights = []
    
    // initialise the weight for each vertex
    for Vertex v2 in graph.vertices:
        weights[v2] = graph.edge(v1, v2).weight
    
    // until S has all the vertices,
    while not S.containsAll(graph.vertices):
        // find the edge with smallest weight from a vertex
        // not in S to one in S
        Vertex v3 = _minVertex(weights, S)
        // add it to S
        S.add(v3)
        // relax all the edges not in S using the new vertex
        for Vertex v4 in graph.vertices:
            if v4 not in S and v4.incidentTo(v3):
                weights[v4] = min(weights[v4], weights[v3] + 
                graph.edge(v3, v4).weight)
                
    return weights