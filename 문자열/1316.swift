/*
 1316 그룹 단어 체커
 https://www.acmicpc.net/problem/1316
 */

let n = Int(readLine()!)!
var count = 0

for _ in 0..<n {
    let str = readLine()!
    
    var index = 0
    var dict: [Character: Int] = [:]
    var isGrouped: Bool = true
    
    for ch in str {
        if dict[ch] == nil {
            dict[ch] = index
        } else {
            if dict[ch] == (index - 1) {
                dict[ch] = index
            } else {
                isGrouped = false
                break
            }
        }
        
        index += 1
    }
    
    if isGrouped {
        count += 1
    }
}

print(count)
