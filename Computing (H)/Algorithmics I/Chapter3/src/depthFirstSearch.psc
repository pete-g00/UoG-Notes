void visit(Vertex vertex1):
    // this vertex has now been visited
    vertex1.visited = true
    
    // for a vertex that is incident to vertex1
    for Vertex vertex2 in vertex1.incidentVertices:
        // if this vertex hasn't been visited, visit it        
        if not vertex2.visited:
            visit(vertex2)

void dfs(Graph graph):
    // visit a vertex if it has not been visited
    for Vertex vertex in vertices:
        if not vertex.visited:
            visit(vertex)