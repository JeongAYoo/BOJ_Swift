/*
 20291 파일 정리
 https://www.acmicpc.net/problem/20291
 */

let n = Int(readLine()!)!
var dict: [String: Int] = [:]

for _ in 0..<n {
    let input = readLine()!.split(separator: ".").map { String($0) }[1]
    if dict[input] != nil {
        dict[input]! += 1
    } else {
        dict[input] = 1
    }
}

let extensions = dict.keys.sorted()

for i in extensions {
    print(i, dict[i]!, separator: " ")
}
