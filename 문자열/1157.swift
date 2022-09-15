/*
 1157 단어 공부
 https://www.acmicpc.net/problem/1157
 */
import Foundation

let word = readLine()!.uppercased()
var dict: [Character: Int] = [:]
var result: [Character] = []

for chr in word {
    if dict[chr] == nil {
        dict[chr] = 1
    } else {
        dict[chr]! += 1
    }
}

for key in dict.keys {
    if dict[key] == dict.values.max() {
        result.append(key)
    }
}

print(result.count > 1 ? "?" : result[0])
