import Foundation

var reward: Int = 0
var dice: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }

dice.sort(by: >) // 내림차순 정렬

if dice[0] == dice[1] && dice[1] == dice[2] {
    // 세 개 모두 동일
    reward += 10000 + dice[0] * 1000
} else if dice[0] == dice[1] || dice[1] == dice[2] {
    // 두개 동일: 내림차순이므로 셋 중 가운데 값으로 상금 계산
    reward += 1000 + dice[1] * 100
} else {
    reward += dice[0] * 100
}

print(reward)
