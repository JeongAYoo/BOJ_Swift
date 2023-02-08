/*
 1110 더하기 사이클
 https://www.acmicpc.net/problem/1110
 */

let input = Int(readLine()!)!
var count = 0
var newNumber = input

while true {
    newNumber = 10 * (newNumber % 10) + (newNumber / 10 + newNumber % 10) % 10
    count += 1
    if newNumber == input {
        print(count)
        break
    }
}


