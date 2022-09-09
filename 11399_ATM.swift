import Foundation

var number = Int(readLine()!)!
var inputNumbers = readLine()!.split(separator: " ").map { Int(String($0))! }
var sum: Int = 0

inputNumbers.sort()

for i in inputNumbers {
    sum += i * number
    number -= 1
}

print(sum)
