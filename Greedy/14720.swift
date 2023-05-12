/*
 14720 우유 축제
 https://www.acmicpc.net/problem/14720
 */

let n = Int(readLine()!)!
let info = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0

for i in info {
    if i == count % 3 {
        count += 1
    }
}

print(count)
