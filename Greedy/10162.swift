/*
 10162 전자레인지
 https://www.acmicpc.net/problem/10162
 */

var time = Int(readLine()!)!
let button = [300, 60, 10]
var click: [Int] = []

for i in button {
    click.append(time / i)
    time %= i
}

time == 0 ? print(click.map { String($0) }.joined(separator: " ")) : print("-1")
