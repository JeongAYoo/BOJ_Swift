/*
 1929 소수 구하기
 https://www.acmicpc.net/problem/1929
 */
import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0]
let n = input[1]

var primeArr = Array(repeating: true, count: n + 1)

primeArr[0] = false
primeArr[1] = false

for i in 2..<primeArr.count where primeArr[i] {
  for j in stride(from: i + i, through: n, by: i) {
    if j > n { break }
    primeArr[j] = false
  }
}

for i in m..<primeArr.count where primeArr[i] {
  print(i)
}
