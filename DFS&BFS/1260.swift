/*
 1260 DFS와 BFS
 https://www.acmicpc.net/problem/1260
 */

func dfs(_ node: Int) {
    if visited[node] {
        return
    }
    // 현재 노드를 방문 처리
    visited[node] = true
    print(node, terminator: " ")
    
    for i in gragh[node].sorted(by: <) {
        if !visited[i] {
            dfs(i)
        }
    }
}

func bfs(_ node: Int) {
    var queue: [Int] = []
    queue.append(node)
    // 현재 노드를 방문처리
    visited[node] = true
    
    // 큐가 빌 때까지 반복
    while !queue.isEmpty {
        // 큐에서 하나의 원소를 뽑아 출력
        let v = queue.removeFirst()
        print(v, terminator: " ")
        
        // 해당 원소와 연결된, 아직 방문하지 않은 원소들을 큐에 삽입
        for i in gragh[v].sorted(by: <) {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

// 입력
let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let V = input[2]

// 배열 초기화
var gragh: [[Int]] = [[]]
var visited = [Bool](repeating: false, count: N + 1)

for _ in 0..<N {
    gragh.append([])
}

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    gragh[input[0]].append(input[1])
    gragh[input[1]].append(input[0])
}

// 함수 실행
dfs(V)
print()
visited = [Bool](repeating: false, count: N + 1)
bfs(V)
