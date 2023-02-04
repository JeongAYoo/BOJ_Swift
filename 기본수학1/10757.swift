/*
 10757 큰 수 A+B
 https://www.acmicpc.net/problem/10757
 */

let input = readLine()!.split(separator: " ").map { String($0.reversed()) }

func calculatePlus(a: String, b: String) -> String {
    var long: [Character], short: [Character]
    
    if a.count > b.count {
        long = Array(a)
        short = Array(b)
    } else {
        long = Array(b)
        short = Array(a)
    }
    
    let diff = [Character](repeating: "0", count: long.count - short.count)
    short.append(contentsOf: diff)
    
    var result: [String] = []
    var carry = 0   // 올림수
    
    for i in 0..<long.count {
        var sum = Int(String(long[i]))! + Int(String(short[i]))! + carry
        
        carry = sum / 10
        sum %= 10
        result.append("\(sum)")
    }
    
    if carry > 0 {
        result.append("1")
    }
    
    return result.reversed().joined()
}

print(calculatePlus(a: input[0], b: input[1]))
