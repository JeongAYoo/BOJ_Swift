/*
 22864 피로도
 https://www.acmicpc.net/problem/22864
 */

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]    // 일할 때 쌓이는 피로도
let b = input[1]    // 처리할 수 있는 일
let c = input[2]    // 휴식시 줄어드는 피로도
let m = input[3]    // 피로도의 최대값

var fatigue = 0
var work = 0

for _ in 1...24 {
    if fatigue + a > m {
        fatigue -= c
        if fatigue < 0 {
            fatigue = 0
        }
    } else {
        work += b
        fatigue += a
    }
}

print(work)
