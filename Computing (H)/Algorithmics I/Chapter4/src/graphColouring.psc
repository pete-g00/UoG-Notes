bool graphColouring(Graph graph, int k):
    // choose one of the k colours for each vertex
    for Vertex v in graph:
        v.colour = Colour.random(k)
    
    // check whether vertices with an edge are coloured different
    for Edge edge in graph.edges:
        if edge.to.colour == edge.from.colour:
            return false
    return true