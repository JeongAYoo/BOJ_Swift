/*
 2750 수 정렬하기
 https://www.acmicpc.net/problem/2750
 */

let n = Int(readLine()!)!
var arr: [Int] = []

for _ in 1...n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

for num in arr {
    print(num)
}
