/*
 2606 바이러스
 https://www.acmicpc.net/problem/2606
 */

let computer = Int(readLine()!)!
let pair = Int(readLine()!)!
var gragh: [[Int]] = [[]]
var visited = [Bool](repeating: false, count: computer + 1)

for _ in 0..<computer {
    gragh.append([])
}

for _ in 0..<pair {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    gragh[input[0]].append(input[1])
    gragh[input[1]].append(input[0])
}

dfs(1)
print(visited.filter { $0 }.count - 1)

func dfs(_ node: Int) {
    // 현재 노드를 방문처리
    visited[node] = true
    // 현재 노드와 연결된 다른 노드를 재귀적으로 방문
    for i in gragh[node] {
        if !visited[i] {
            dfs(i)
        }
    }
}
