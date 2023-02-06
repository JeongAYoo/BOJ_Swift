/*
 11021 A+B - 7
 https://www.acmicpc.net/problem/11021
 */

let T = Int(readLine()!)!

for i in 1...T {
    let sum = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
    print("Case #\(i): \(sum)")
}
