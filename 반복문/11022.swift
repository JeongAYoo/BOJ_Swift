/*
 11022 A+B - 8
 https://www.acmicpc.net/problem/11022
 */

let T = Int(readLine()!)!

for i in 1...T {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    print("Case #\(i): \(input[0]) + \(input[1]) = \(input[0] + input[1])")
}
