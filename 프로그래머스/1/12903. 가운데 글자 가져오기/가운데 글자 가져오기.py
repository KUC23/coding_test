def solution(s):
    x = int((len(s)-1)/2)

    if len(s)%2 == 1:
        answer = s[x]
    else:
        answer = s[x:x+2]
    return answer