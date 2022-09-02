var arr = Array(repeating: 0, count: 31)

for _ in 1...28{
    let n = Int(readLine()!)!
    arr[n] = 1
}

for i in 1...30{
    if(arr[i] == 0){
        print(i)
    }
}
