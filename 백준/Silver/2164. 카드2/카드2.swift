
let n = Int(readLine()!)!

var queue = [Int]()
var index = 0
for i in 1...n{
    queue.append(i)
}

while(true){
    index += 1
    if(index == queue.count){
        print(queue[index-1])
        break
    }
    queue.append(queue[index])
    index += 1
}
