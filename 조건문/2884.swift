/*
 2884 알람시계
 https://www.acmicpc.net/problem/2884
 */

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var hour = input[0]
var min = input[1] - 45

if min < 0 {
    min += 60
    hour -= 1
    
    if hour < 0 {
        hour += 24
    }
    
    print(hour, min)
} else {
    print(hour, min)
}
