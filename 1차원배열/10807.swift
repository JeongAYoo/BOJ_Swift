/*
 10807 개수 세기
 https://www.acmicpc.net/problem/10807
 */
import Foundation

let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = Int(readLine()!)!

var count: Int = 0

for number in numbers {
    if v == number {
        count += 1
    }
}

print(count)
