/*
 10871 X보다 작은 수
 https://www.acmicpc.net/problem/10871
 */

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], x = input[1]

let numbers = readLine()!.split(separator: " ").map { Int($0)! }

for num in numbers {
    if num < x {
        print(num, terminator: " ")
    }
}
