let dic:[String:Int] = ["A":3,"B":2,"C":1,"D":2,"E":3,"F":3,"G":3,"H":3,"I":1,"J":1,"K":3,"L":1,"M":3,"N":3,"O":1,"P":2,"Q":2,"R":2,"S":1,"T":2,"U":1,"V":1,"W":2,"X":2,"Y":2,"Z":1]


let str = readLine()!.map{String($0)}

var arr = [Int]()

for i in str{
    arr.append(dic[i]!)
}

var ans = [Int]()
while(true){
    for i in stride(from: 0, to: arr.count, by: 2){
        if(i + 1 <= arr.count-1){
            ans.append(arr[i]+arr[i+1])
        }
        else{
            ans.append(arr[i])
        }
    }
    if(ans.count == 1){
        break
    }
    arr = ans
    ans.removeAll()
}
if(ans[0] % 2 == 1){
    print("I'm a winner!")
}
else{
    print("You're the winner?")
}

