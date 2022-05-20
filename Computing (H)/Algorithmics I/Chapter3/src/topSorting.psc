List<Vertex> topSort(Graph graph):
    // initialise the count
    for Vertex v1 in graph.vertices:
        v1.count = v1.inDegree
    
    // the queue containing all the source vertices
    Queue<Vertex> sourceQueue = <>
    
    // add to the source queue all the source vertices
    for Vertex v2 in graph.vertices:
        if v2.count == 0:
            sourceQueue.add(v2)
    
    // the vertices in their topologically sorted order
    List<Vertex> vertices = []
    
    // until the source queue is empty,
    while not sourceQueue.isEmpty:
        // remove the first element
        Vertex v3 = sourceQueue.delete()
        label[v3] = nextLabel ++
        
        // lower the count for all the incident vertices 
        for Vertex v4 in graph.incidentVertices:
            v4.count--
            
            // if it is now a sink, add it to the queue
            if v4.count == 0:
                sourceQueue.add(v4)