/*
 10950 A+B - 3
 https://www.acmicpc.net/problem/10950
 */

let t = Int(readLine()!)!

for _ in 1...t {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    print(input[0] + input[1])
}
