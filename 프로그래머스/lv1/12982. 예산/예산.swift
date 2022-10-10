import Foundation



func solution(_ d:[Int], _ budget:Int) -> Int {
    var arr = d
    arr.sort()
    var k = budget
    var cnt = 0
    for i in arr{
        if(k - i >= 0){
            k -= i
            cnt += 1
        }
        else{
            break
        }
    }
    
    return cnt
}

