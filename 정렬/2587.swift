/*
 2587 대표값2
 https://www.acmicpc.net/problem/2587
 */
var arr: [Int] = []
var sum = 0

for _ in 1...5 {
    let input = Int(readLine()!)!
    arr.append(input)
    sum += input
}

arr.sort()

print(sum / 5, arr[2], separator: "\n")
