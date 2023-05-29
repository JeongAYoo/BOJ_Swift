/*
 10825 국영수
 https://www.acmicpc.net/problem/10825
 */

var student = [(name: String, kor: Int, eng: Int, math: Int)]()

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    student.append((String(input[0]), Int(input[1])!, Int(input[2])!, Int(input[3])!))
}

student.sort {
    if $0.kor == $1.kor {
        if $0.eng == $1.eng {
            if $0.math == $1.math {
                return $0.name < $1.name
            } else {
                return $0.math > $1.math
            }
        } else {
            return $0.eng < $1.eng
        }
    } else {
        return $0.kor > $1.kor
    }
}

for i in student {
    print(i.name)
}
