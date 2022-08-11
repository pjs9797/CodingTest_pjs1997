let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

arr.insert(0, at: 0)

var position = Int(readLine()!)!

var set = Set<Int>()
set.insert(position)

dfs(position)

print(set.count)

func dfs(_ x:Int){
    if(x + arr[x] <= arr.count-1){
        position = x + arr[x]
        set.insert(position)
        dfs(position)
        
    }
    
    
    if(x - arr[x] >= 1){
        position = x - arr[x]
        set.insert(position)
        dfs(position)
        
    }
    
}
