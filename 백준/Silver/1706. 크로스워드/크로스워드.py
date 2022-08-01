import sys
input = sys.stdin.readline

r,c = map(int,input().split())

board = [input()[:-1] for i in range(r)]
result = []

for y in range(r):
    temp = ""
    for x in range(c):
        if board[y][x] != "#":
            temp += board[y][x]
        else:
            if len(temp) > 1:
                result.append(temp)
                temp =""
                continue
            else:
                temp = ""
                continue
    if len(temp) > 1:
        result.append(temp)

for x in range(c):
    temp = ""
    for y in range(r):
        if board[y][x] != "#":
            temp += board[y][x]
        else:
            if len(temp) > 1:
                result.append(temp)
                temp =""
                continue
            else:
                temp = ""
                continue
    if len(temp) > 1:
        result.append(temp)
result.sort()
print(result[0])