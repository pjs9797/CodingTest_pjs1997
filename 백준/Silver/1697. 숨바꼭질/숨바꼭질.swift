let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let x = input[0]
let y = input[1]

let dx = [-1,1]

var queue = [(Int,Int)]()
var index = 0
var visited:[Bool] = Array(repeating: false, count: 100001)
queue.append((x,0))

while(index < queue.count){
    let element = queue[index]
    let point = element.0
    let count = element.1
    if(point == y){
        print(count)
        break
    }
    index += 1
    if(point - 1 >= 0){
        if(!visited[point-1]){
            visited[point-1] = true
            queue.append((point-1,count+1))
        }
    }
    if(point+1 <= 100000 && !visited[point+1]){
        visited[point+1] = true
        queue.append((point+1,count+1))
    }
    if(point*2 <= 100000 && !visited[point*2]){
        visited[point*2] = true
        queue.append((point*2,count+1))
    }
}
