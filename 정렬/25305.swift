/*
 25305 커트라인
 https://www.acmicpc.net/problem/25305
 */

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], k = input[1]

var scoreArray = readLine()!.split(separator: " ").map { Int(String($0))! }
scoreArray.sort(by: >)

print(scoreArray[k-1])
