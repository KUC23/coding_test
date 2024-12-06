def solution(n):
    x = 0
    while True:
        x += 1
        if n % x == 1:
            answer = x
            break
        else:
            continue
    return answer