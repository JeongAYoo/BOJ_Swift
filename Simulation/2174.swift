/*
 2174 로봇 시뮬레이션
 https://www.acmicpc.net/problem/2174
 */

// 입력
let inputSize = readLine()!.split(separator: " ").map { Int($0)!}
let width = inputSize[0]    // A
let height = inputSize[1]   // B

var land = Array(repeating: Array(repeating: 0, count: width + 1), count: height + 1)

let inputContent = readLine()!.split(separator: " ").map { Int($0)! }
let numberOfRobot = inputContent[0]     // N
let numberOfCommand = inputContent[1]   // M

// 북 동 남 서
let dx = [0, 1, 0, -1]
let dy = [1, 0, -1, 0]

var robots: [(x: Int, y: Int, direction: Int)] = []
robots.append((-1, -1, -1)) // 0번째 의미없는 값 넣음

for i in 1...numberOfRobot {
    let input = readLine()!.split(separator: " ")
    let x = Int(input[0])!
    let y = Int(input[1])!
    var direction: Int
    
    switch String(input[2]) {
    case "N":
        direction = 0
    case "E":
        direction = 1
    case "S":
        direction = 2
    default:
        direction = 3
    }
    
    robots.append((x, y, direction))
    land[y][x] = i
}

// 명령을 입력 받아 수행
var crashWallRobot = 0
var crashingRobot = 0
var crashedRobot = 0

for _ in 0..<numberOfCommand {
    let commandInput = readLine()!.split(separator: " ")
    let index = Int(commandInput[0])!
    let typeOfCommand = String(commandInput[1])
    let iterator = Int(commandInput[2])!
    
    if crashWallRobot != 0 || crashingRobot != 0 {
        continue
    }
    
    var x = robots[index].x
    var y = robots[index].y
    var direction = robots[index].direction
    
commandLoop: for _ in 0..<iterator {
        switch typeOfCommand {
        case "L":
            direction -= 1
            if direction == -1 {
                direction = 3
            }
            robots[index].direction = direction
            
        case "R":
            direction += 1
            if direction == 4 {
                direction = 0
            }
            robots[index].direction = direction
            
        case "F":
            land[y][x] = 0  // 현재 위치 지움
            
            y += dy[direction]
            x += dx[direction]
            
            if x < 1 || x > width || y < 1 || y > height {
                crashWallRobot = index
                break commandLoop
                
            } else if land[y][x] != 0 {
                crashingRobot = index
                crashedRobot = land[y][x]
                break commandLoop
                
            } else {
                land[y][x] = index
                robots[index].y = y
                robots[index].x = x
            }
        default:
            break
        }
    }
}

// 출력
if crashWallRobot != 0 {
    print("Robot \(crashWallRobot) crashes into the wall")
} else if crashingRobot != 0 {
    print("Robot \(crashingRobot) crashes into robot \(crashedRobot)")
} else {
    print("OK")
}
