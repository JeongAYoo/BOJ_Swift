/*
 8958 OX퀴즈
 https://www.acmicpc.net/problem/8958
 */

let n = Int(readLine()!)!

for _ in 1...n {
    let input = readLine()!
    
    var count = 0, score = 0
    
    for i in input {
        switch i {
        case "O":
            count += 1
            score += count
        case "X":
            count = 0
        default:
            break
        }
    }
    print(score)
}


