import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var ans:Int = 0
    for i in 0...absolutes.count-1{
        if(signs[i]){
            ans += absolutes[i]
        }
        else{
            ans -= absolutes[i]
        }
    }
    return ans
}

