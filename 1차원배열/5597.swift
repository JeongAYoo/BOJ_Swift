/*
 5597 과제 안 내신 분..?
 https://www.acmicpc.net/problem/5597
 */
import Foundation

var numbers = Set<Int>([])

for _ in 1...28 {
    numbers.insert(Int(readLine()!)!)
}

for n in 1...30 {
    if !numbers.contains(n) {
        print(n)
    }
}
