/*
 1541 잃어버린 괄호
 https://www.acmicpc.net/problem/1541
 */

let input = readLine()!.split(separator: "-")

var sum = 0
var array = [Int]()

for group in input {
    let groupSum = group.split(separator: "+").map { Int($0)! }.reduce(0, +)
    array.append(groupSum)
}

sum += array[0]

for i in 1..<array.count {
    sum -= array[i]
}

print(sum)
