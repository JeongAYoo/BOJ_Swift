/*
 10815 숫자 카드
 https://www.acmicpc.net/problem/10815
 */
import Foundation

let n = Int(readLine()!)!
var cards = Set<Int>( readLine()!.split(separator: " ").map { Int(String($0))! } )
let m = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map { Int(String($0))! }

for target in targets {
    cards.contains(target) ? print("1", terminator: " ") : print("0", terminator: " ")
}
