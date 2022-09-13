import Foundation

// 입력할 때 먼저 let file = FileIO() 선언
// 정수나 문자를 공백을 기준으로 하나씩만 받는다.
// 1을 받을 때 let a = file.readInt()
// 1 2 3을 받을 때
// var arr:[Int] = [] 선언 후
// arr.append(file.readInt(),file.readInt(),file.readInt()) 또는
// for i in 1...3{ arr.append(file.readInt()) }

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}

let file = FileIO()


//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = file.readInt()
let m = file.readInt()

var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for i in 0...m-1{
    //let input2 = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = file.readInt()
    let b = file.readInt()
    arr[a][b] = 1
    arr[b][a] = 1
}

var cnt = 0

for i in 1...n-2{
    for j in i+1...n-1{
        for k in j+1...n{
            if(arr[i][j] != 1 && arr[i][k] != 1 && arr[j][k] != 1){
                cnt += 1
            }
        }
    }
}
print(cnt)

//func check(_ i:Int, _ j:Int, _ k:Int) -> Bool{
//    for l in 0...m-1{
//        let a = arr[l][0]
//        let b = arr[l][1]
//        if(a == i && b == j){
//            return false
//        }
//        else if(a == i && b == k){
//            return false
//        }
//        else if(a == j && b == k){
//            return false
//        }
//        else if(b == i && a == j){
//            return false
//        }
//        else if(b == i && a == k){
//            return false
//        }
//        else if(b == j && a == k){
//            return false
//        }
//        else{
//            continue
//        }
//    }
//    return true
//}
