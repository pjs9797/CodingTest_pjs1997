import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var oneArr = [1,2,3,4,5]
    var twoArr = [2,1,2,3,2,4,2,5]
    var threeArr = [3,3,1,1,2,2,4,4,5,5]
    var i = 0
    var a = 0
    var b = 0
    var c = 0
    var one = 0
    var two = 0
    var three = 0
    while(i < answers.count){
        if(a > oneArr.count-1){
            a = 0
        }
        if(b > twoArr.count-1){
            b = 0
        }
        if(c > threeArr.count-1){
            c = 0
        }
        if(oneArr[a] == answers[i]){
            one += 1
            //print(oneArr[a],a)
            //print(answers[i],i)
        }
        if(twoArr[b] == answers[i]){
            two += 1
            //print(answers[i],i)
        }
        if(threeArr[c] == answers[i]){
            three += 1
        }
        i += 1
        a += 1
        b += 1
        c += 1
    }
    var arr = [one,two,three]
    var max = 0
    for i in arr{
        if(max < i){
            max = i
        }
    }
    var z = [Int]()
    for i in 0...arr.count-1{
        if(max == arr[i]){
            z.append(i+1)
        }
    }
    return z
}