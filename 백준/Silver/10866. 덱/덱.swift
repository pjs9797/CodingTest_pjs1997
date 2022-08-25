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

let n = file.readInt()
var str = ""
var deque = [String]()
for _ in 1...n{
    let a = file.readString()
    if(a == "push_front"){
        let b = file.readString()
        deque.insert(b, at: 0)
    }
    else if(a == "push_back"){
        let b = file.readString()
        deque.append(b)
    }
    else if(a == "pop_front"){
        if(deque.isEmpty){
            str += "-1\n"
        }
        else{
            str += "\(deque.removeFirst())\n"
        }
    }
    else if(a == "pop_back"){
        if(deque.isEmpty){
            str += "-1\n"
        }
        else{
            str += "\(deque.removeLast())\n"
        }
    }
    else if(a == "size"){
        str += "\(deque.count)\n"
    }
    else if(a == "empty"){
        if(deque.isEmpty){
            str += "1\n"
        }
        else{
            str += "0\n"
        }
    }
    else if(a == "front"){
        if(deque.isEmpty){
            str += "-1\n"
        }
        else{
            str += "\(deque.first!)\n"
        }
    }
    else{
        if(deque.isEmpty){
            str += "-1\n"
        }
        else{
            str += "\(deque.last!)\n"
        }
    }
}
print(str)
