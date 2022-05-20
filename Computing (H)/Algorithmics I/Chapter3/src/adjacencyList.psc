class AdjListNode:
    int vertexIndex;
    
    AdjListNode(int i):
        vertexIndex = i
    
class Vertex:
    int index;
    LinkedList<AdjListNode> adjList;
    
    Vertex(int i):
        index = i
        adjList = []

    void addToAdjList(int j):
        adjList.addLast(AdjListNode(j))
    
    int get vertexDegree:
        return adjList.length

class Graph:
    List<Vertex> vertices;
    int _numVertices = 0
    
    Graph(int n):
        _numVertices = n
        vertices = List(n)
        for (int i=0; i<n; i++):
            vertices[i] = Vertex(i)
    
    int get size:
        return _numVertices