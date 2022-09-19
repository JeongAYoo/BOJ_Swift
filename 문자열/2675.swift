/*
 2675 문자열 반복
 https://www.acmicpc.net/problem/2675
 */
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let r = Int(input[0])!
    let str = input[1]
    
    for ch in str {
        for _ in 0..<r {
            print(ch, terminator: "")
        }
    }
    print("")
}
