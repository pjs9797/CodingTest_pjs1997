
import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var arr = [Int](repeating: 1, count: n+1)
    var cnt = 0
    for no in section{
        arr[no] = 0
    }
    
    for i in 1..<arr.count {
        if arr[i] == 0{
            if i >= n-m+2{
                for j in i..<arr.count {
                    arr[j] = 1
                }
            }
            else{
                for j in 0..<m {
                    arr[i+j] = 1
                }
            }
            cnt += 1
        }
    }
    
    return cnt
}