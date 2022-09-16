let input = readLine()!.split(separator: " ").map{Int(String($0))!}

var n = input[0]
var m = input[1]

var check = 0
var cnt = 0

dfs(n,cnt)

if(check == 0){
    print(-1)
}
else{
    print(cnt+1)
}

func dfs(_ n:Int, _ k:Int){
    if(n > m){
        return
    }
    if(n == m){
        check = 1
        cnt = k
        return
    }
    var a = n
    a *= 2
    dfs(a,k+1)
    var b = n
    b = Int(String(b) + String(1))!
    dfs(b,k+1)
}
