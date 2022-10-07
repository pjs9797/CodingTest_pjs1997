import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var arr = sizes
    var max1 = 0
    var max2 = 0
    
    for i in 0...arr.count-1{
        if(arr[i][0] < arr[i][1]){
            var a = arr[i][0]
            arr[i][0] = arr[i][1]
            arr[i][1] = a
        }
        if(max1 < arr[i][0]){
            max1 = arr[i][0]
        }
        if(max2 < arr[i][1]){
            max2 = arr[i][1]
        }
    }
    
    
    
    return max1 * max2
}