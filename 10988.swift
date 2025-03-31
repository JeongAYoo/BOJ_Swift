/*
 10988 팰린드롬인지 확인하기
 https://www.acmicpc.net/problem/10988
 */
import Foundation

let word = readLine()!
let reversed = String(word.reversed())

print(word == reversed ? 1 : 0)

