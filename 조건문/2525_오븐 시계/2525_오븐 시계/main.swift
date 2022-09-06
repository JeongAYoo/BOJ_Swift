import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var hour: Int = input[0]
var min: Int = input[1]

let time = Int(readLine()!)!

min += time

if min >= 60 {
    hour += min / 60
    min %= 60
}

if hour >= 24 {
    hour %= 24
}

print(hour, min, separator: " ")
