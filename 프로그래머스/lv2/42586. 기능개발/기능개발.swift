import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var arr = progresses
    var zzz = speeds
    var n = progresses.count
    var ans:[Int] = []
    while(n > 0){
        for i in 0...arr.count-1{
            arr[i] += zzz[i]
        }
        var cnt = 0
        if(arr.first! >= 100){
            
            var i = 0
            var a = 0
            while(i <= arr.count-1){
                if(arr[i] >= 100){
                    n -= 1
                    cnt += 1
                    arr.remove(at: 0)
                    zzz.remove(at: 0)
                    i -= 1
                    a = 1
                }
                else{
                    break
                }
                i += 1
            }
            ans.append(cnt)
        }
        
    }
    return ans
}

