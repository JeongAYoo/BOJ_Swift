/*
 14681 사분면 고르기
 https://www.acmicpc.net/problem/14681
 */

let x = Int(readLine()!)!
let y = Int(readLine()!)!

if x > 0 {
    y > 0 ? print(1) : print(4)
} else {
    y > 0 ? print(2) : print(3)
}
