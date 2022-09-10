/*
 25304 영수증
 https://www.acmicpc.net/problem/25304
 */
import Foundation

var price: Int = 0
var total = Int(readLine()!)
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    price += input[0] * input[1]
}

price == total ? print("Yes") : print("No")
