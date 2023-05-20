/*
 11725 트리의 부모 찾기
 https://www.acmicpc.net/problem/11725
 */

func dfs(_ node: Int) {
    if visited[node] {
        return
    }
    // 현재 노드를 방문 처리
    visited[node] = true
    
    for i in tree[node] {
        if !visited[i] {
            parent[i] = node
            dfs(i)
        }
    }
}

let N = Int(readLine()!)!

var tree = [[Int]](repeating: Array(repeating: 0, count: 0), count: N + 1)
var parent = [Int](repeating: 0, count: N + 1)
var visited = [Bool](repeating: false, count: N + 1)

for _ in 0..<N - 1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    tree[input[0]].append(input[1])
    tree[input[1]].append(input[0])
}

dfs(1)

for i in 2...N {
    print(parent[i])
}
