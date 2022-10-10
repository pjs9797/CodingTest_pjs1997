import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var set = Set<Int>()
    for i in 0...numbers.count-2{
        for j in i+1...numbers.count-1{
            set.insert(numbers[i] + numbers[j])
        }
    }
    var arr = set.sorted()
    return arr
}