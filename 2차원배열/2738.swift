/*
 2738 행렬 덧셈
 https://www.acmicpc.net/problem/2738
 */
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0], m = input[1]

var mat1: Array<[Int]> = Array(repeating: Array(repeating: 0, count: m), count: n)
var mat2: Array<[Int]> = Array(repeating: Array(repeating: 0, count: m), count: n)

for i in 0..<n {
    mat1[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for j in 0..<n {
    mat2[j] = readLine()!.split(separator: " ").map { Int(String($0))! }

}

for i in 0..<n {
    for j in 0..<m {
        print(mat1[i][j] + mat2[i][j], terminator: " ")
    }
    print("")
}
