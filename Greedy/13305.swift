/*
 13305 주유소
 https://www.acmicpc.net/problem/13305
 */

let city = Int(readLine()!)!
let distance = readLine()!.split(separator: " ").map { Int($0)! }
let price = readLine()!.split(separator: " ").map { Int($0)! }

var sum = 0
var minPrice = price[0]

for i in 0..<city-1 {
    minPrice = min(minPrice, price[i])
    sum += minPrice * distance[i]
}

print(sum)
