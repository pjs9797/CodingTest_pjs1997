import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]

for i in 1...m{
    for j in 1...n{
        print("*",terminator: "")
    }
    print()
}