/*
 4344 평균은 넘겠지
 https://www.acmicpc.net/problem/4344
 */
import Foundation

let c = Int(readLine()!)!

for _ in 1...c {
    var input = readLine()!.split(separator: " ").map { Double($0)! }
    let n = input[0]
    input.removeFirst()
    
    let average: Double = input.reduce(0, +) / n
    let count = Double(input.filter { $0 > average }.count)
    
    print(String(format: "%.3f", count / n * 100) + "%")
}
