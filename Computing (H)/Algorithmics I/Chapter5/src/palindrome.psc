bool isPalindrome(String string):
    if string.length < 2:
        return true
    if string[0] != string[-1]:
        return false
    return isPalindrome(string[1:-1])