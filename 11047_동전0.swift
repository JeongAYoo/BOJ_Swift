import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
var k = input[1]
var coins: [Int] = []
var result: Int = 0

for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

coins.sort(by: >)

for coin in coins {
    if coin > k {
        continue
    }
    
    result += k / coin
    k %= coin
}

print(result)
