import Foundation

var cnt = 0

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var visited:[Bool] = Array(repeating: false, count: numbers.count)
    dfs(numbers,0,visited,0,target,0)
    return cnt
}

func dfs(_ numbers:[Int],_ index:Int , _ visited:[Bool], _ ans:Int, _ target:Int,_ z:Int){
    var bb = visited
    var i = index
    var aa = ans
    var zz = z
    zz += 1
    if(zz == numbers.count+1){
        if(target == aa){
            cnt += 1
        }
    }
    else{
        for k in 0...1{
            if(k == 0){
                aa += numbers[i]
                dfs(numbers, i+1, bb, aa, target, zz)
                aa -= numbers[i]
            }
            else{
                aa -= numbers[i]
                dfs(numbers, i+1, bb, aa, target, zz)
                aa += numbers[i]
            }
        }
    }
}


