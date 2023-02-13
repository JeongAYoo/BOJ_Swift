/*
 3052 나머지
 https://www.acmicpc.net/problem/3052
 */

var remains = Set<Int>()

for _ in 1...10 {
    let n = Int(readLine()!)!
    remains.insert(n % 42)
}

print(remains.count)
