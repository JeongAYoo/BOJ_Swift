/*
 1065 한수
 https://www.acmicpc.net/problem/1065
 */

func checkCommonDiff(_ n: Int) {
    var count = 99
    
    for num in 100...n {
        let first = num / 100
        let second = num % 100 / 10
        let third = num % 10
        
        if first - second == second - third {
            count += 1
        }
    }
    
    print(count)
}

let n = Int(readLine()!)!

switch n {
case 1..<100:
    print(n)
case 100..<1000:
    checkCommonDiff(n)
default:
    checkCommonDiff(n - 1)
}
