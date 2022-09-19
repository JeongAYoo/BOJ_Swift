/*
 2908 상수
 https://www.acmicpc.net/problem/2908
 */
import Foundation

var input = readLine()!.components(separatedBy: " ")

let a = Int(String(input[0].reversed()))!
let b = Int(String(input[1].reversed()))!

print(a > b ? a : b)
