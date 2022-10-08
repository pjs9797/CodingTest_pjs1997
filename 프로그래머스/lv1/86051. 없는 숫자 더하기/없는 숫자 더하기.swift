import Foundation

func solution(_ numbers:[Int]) -> Int {
    var ans = 45
    for num in numbers{
        ans -= num
    }
    return ans
}