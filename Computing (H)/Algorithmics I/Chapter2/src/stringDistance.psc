int stringDistance(String word1, String word2):
    // initialise the distance (with base case)
    List<List<int>> distance = List.generate(word1.length+1, 
        (i) => List.generate(word2.length+1, (j) => i+j))
    
    // for each entry in the table,
    for int i in range(0, word1.length+1):
        for int j in range(0, word2.length+1):
            // if the values match, take the diagonal distance
            if word1[i-1] == word2[j-1]:
                distance[i, j] = distance[i-1, j-1]
            // otherwise, add 1 to the minimum entry
            else:
                distance[i, j] = 1 + min(distance[i-1, j-1], distance[i, j-1], distance[i-1, j])
    
    // return the last cell
    return distance[word1.length, word2.length]