/*
 4673 셀프 넘버
 https://www.acmicpc.net/problem/4673
 */

func d(_ n: Int) -> Int {
    var result = n
    var temp = n
    
    while temp != 0 {
        result += (temp % 10)
        temp /= 10
    }
    
    return result
}

var nonSelf: Set<Int> = []

for i in 1...10000 {
    nonSelf.insert(d(i))
}

for num in 1...10000 {
    if !nonSelf.contains(num) {
        print(num)
    }
}
