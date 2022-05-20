void visit(Queue<Vertex> queue):
    // until the queue is empty
    while not queue.isEmpty:
        // remove a vertex from the queue
        Vertex vertex1 = queue.delete()
        // it will now be visited
        vertex1.visited = true
        
        // for a vertex that is incident to vertex1,
        for Vertex vertex2 in v.incidentNodes:
            int i = node.vertexIndex
            
            // if this vertex hasn't been visited, visit it
            if not vertex2.visited:
                queue.add(vertex2)

void bfs(Graph graph):
    // initialise the queue
    Queue<Vertex> queue = Queue()
    
    // if it has not been visited,
    for Vertex vertex in graph.vertices:
        if not vertex.visited:
            // add it to the queue and visit it
            queue.add(vertex)
            visit(queue)