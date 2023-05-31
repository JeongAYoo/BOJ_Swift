/*
 18310 안테나
 https://www.acmicpc.net/problem/18310
 */

let N = Int(readLine()!)!
var house = readLine()!.split(separator: " ").map { Int($0)! }

house.sort()
print(house[(N-1) / 2]) // 중간값
