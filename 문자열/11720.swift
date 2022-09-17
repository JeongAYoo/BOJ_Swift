/*
 11720 숫자의 합
 https://www.acmicpc.net/problem/11720
 */
let n = readLine()!
var numbers = Array(readLine()!)
var sum = numbers.map { Int(String($0))! }.reduce(0) { $0 + $1 }

print(sum)
