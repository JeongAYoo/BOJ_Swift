/*
 10818 최소, 최대
 https://www.acmicpc.net/problem/10818
 */

let n = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }

print(numbers.min()!, numbers.max()!, separator: " ")
