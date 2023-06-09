/*
 2805 나무 자르기
 https://www.acmicpc.net/problem/2805
 */

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]    // 나무의 수
let m = input[1]    // 필요한 나무의 길이

let array = readLine()!.split(separator: " ").map { Int($0)! }    // 나무의 높이

var start = 0
var end = array.max()!
var result = 0

// 이진 탐색
while (start <= end) {
    var sum = 0
    let mid = (start + end) / 2
    
    for i in array {
        if i > mid {
            sum += i - mid
        }
    }
    if sum < m {
        end = mid - 1
    } else {
        result = mid
        start = mid + 1
    }
}

print(result)
