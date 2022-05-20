List<int> radixSort(List<int> list, int m, int b):
    // the number of iterations
    int numIterations = m/b
    // the number of buckets
    int numBuckets = 2**b
    
    // initialise the buckets
    List<List<int>> buckets = List.generate(i => [])
    
    for int i in range(1, numIterations+1):
        // clear the buckets
        for List<int> bucket in buckets:
            buckets.clear()
        
        // add each number to the right bucket
        for int value in list:
            int k = value.toBitString()[b*(i-1):b*i].toInt(2)
            buckets[k].add(value)
        
        // concatentate the buckets at the end
        list = buckets.reduce(concatenate)
    return list