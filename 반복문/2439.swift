/*
 2439 별 찍기 - 2
 https://www.acmicpc.net/problem/2439
 */

let n = Int(readLine()!)!

for i in 1...n {
    print(String(repeating: " ", count: n - i), String(repeating: "*", count: i), separator: "")
}
