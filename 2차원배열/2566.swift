/*
 2566 최댓값
 https://www.acmicpc.net/problem/2566
 */
//import Foundation

var mat: Array<[Int]> = Array(repeating: Array(repeating: 0, count: 9), count: 9)
var maxValue = 0, maxX = 0, maxY = 0

for i in 0..<9 {
    mat[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
    if let newMax = mat[i].max() {
        if newMax > maxValue {
            maxValue = newMax
            maxX = i
            maxY = mat[i].firstIndex(of: newMax)!
        }
    }
}

print(maxValue)
print(maxX + 1, maxY + 1, separator: " ")
