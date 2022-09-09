import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let verifier = input.map { $0 * $0 }.reduce(0) { $0 + $1 } % 10

print(verifier)

