/*
 14495 피보나치 비스무리한 수열
 https://www.acmicpc.net/problem/14495
 */

import Foundation

let n: Int = Int(readLine()!)!

var arr: [Int] = Array(repeating: 1, count: 117)

if n > 3 {
  for i in 4...n {
    arr[i] = arr[i - 1] + arr[i - 3]
  }
}

print(arr[n])
