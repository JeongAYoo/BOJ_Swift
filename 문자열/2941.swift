/*
 2941 크로아티아 알파벳
 https://www.acmicpc.net/problem/2941
 */
import Foundation

let check = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var input = readLine()!

for i in check {
    if input.contains(i) {
        input = input.replacingOccurrences(of: i, with: "1")
    }
}

print(input.count)
