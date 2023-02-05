/*
 2751 수 정렬하기 2
 https://www.acmicpc.net/problem/2751
 */

let n = Int(readLine()!)!
var numbers: [Int] = []

for _ in 0..<n {
    numbers.append(Int(readLine()!)!)
}

numbers.sort()

for i in 0..<n {
    print("\(numbers[i])")
}
