/*
 1546 평균
 https://www.acmicpc.net/problem/1546
 */

let n = Double(readLine()!)!
let input = readLine()!.split(separator: " ").map { Double($0)! }

let max = input.max()!
var sum: Double = 0

for i in input {
    sum += i / max * 100
}

print(sum / n)
