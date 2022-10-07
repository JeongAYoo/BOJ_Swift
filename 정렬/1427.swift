/*
 1427 소트인사이드
 https://www.acmicpc.net/problem/1427
 */

var num = Array(readLine()!).map { Int(String($0))! }

num.sort(by: >)

for n in num {
    print(n, terminator: "")
}
