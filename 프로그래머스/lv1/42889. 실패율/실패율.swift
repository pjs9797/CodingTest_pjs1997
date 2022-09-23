import Foundation

// let z = 1
// let x = [2]
// //let z = 5
// //let x = [2, 1, 2, 6, 2, 4, 3, 3]
// print(solution(z,x))

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int:Int]()
    var aa = [Int:Float]()
    var ans = [Int]()
    for i in 1...N+1{
        aa[i] = 0
    }
    for i in 0...stages.count-1{
        let person = i+1
        if(dic[stages[i]] != nil){
            dic[stages[i]]! += 1
        }
        else{
            dic[stages[i]] = 1
        }
    }
    var arr = dic.sorted(by: {$0.key < $1.key})
    var cnt = Float(stages.count)
    for i in arr{
        if(i.key == N+1){
            break
        }
        var win = Float(i.value) / cnt
        aa[i.key] = win
        cnt -= Float(i.value)
        if(cnt == 0.0){
            break
        }
    }
    var zz = aa.sorted(by: {
        if($0.value == $1.value){
            return $0.key < $1.key
        }
        
        return $0.value > $1.value
        
    })
    for i in zz{
        if(i.key != N+1){
            ans.append(i.key)
        }
    }
    
    return ans
}
