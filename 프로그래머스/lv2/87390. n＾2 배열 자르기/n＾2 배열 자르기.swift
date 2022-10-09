import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    
    let left = Int(left)
    let right = Int(right)
    var ans = [Int]()
    
    for i in left...right{
        var Max = max(i%n + 1,i/n + 1)
        ans.append(Max)
    }
    
    
    
    return ans
}