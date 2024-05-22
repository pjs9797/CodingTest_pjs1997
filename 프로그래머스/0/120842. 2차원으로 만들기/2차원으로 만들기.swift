import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [[Int]] {
    var arr = [[Int]]()
    var a = [Int]()
    
    for i in 0..<num_list.count {
        a.append(num_list[i])
        if a.count == n {
            arr.append(a)
            a = [Int]()
        }
    }
    
    // 만약 마지막 그룹이 n보다 작아서 남아 있는 경우 추가
    if !a.isEmpty {
        arr.append(a)
    }
    
    return arr
}
