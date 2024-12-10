def solution(s):
    answer = []
    char_index = {}
    for i, char in enumerate(s):
        if  char in char_index:
            answer.append(i-char_index[char])
        else:
            answer.append(-1)
        char_index[char] = i
    return answer