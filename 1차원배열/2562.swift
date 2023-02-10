/*
 2562 최댓값
 https://www.acmicpc.net/problem/2562
 */

var numbers: [Int] = []

for _ in 1...9 {
    numbers.append(Int(readLine()!)!)
}

let max = numbers.max()!
print(max, numbers.firstIndex(of: max)! + 1)
