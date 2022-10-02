/*
 2563 색종이
 https://www.acmicpc.net/problem/2563
 */

var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 100), count: 100)
var sum = 0

let n = Int(readLine()!)!

for _ in 1...n {
    let coordinate = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x = coordinate[0]
    let y = coordinate[1]
    
    for i in x...x+9 {
        for j in y...y+9 {
            arr[i][j] = 1
        }
    }
}

for x in 0..<100 {
    for y in 0..<100 {
        if arr[x][y] == 1 {
            sum += 1
        }
    }
}

print(sum)
