import Foundation

var pieces = [1, 1, 2, 2, 2, 8]
let input = readLine()!.split(separator: " ").map { Int(String($0))! }

for i in 0..<pieces.count {
    print(pieces[i] - input[i], terminator: " ")
}
