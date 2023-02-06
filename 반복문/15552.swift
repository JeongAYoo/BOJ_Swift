/*
 15552 빠른 A+B
 https://www.acmicpc.net/problem/15552
 */

import Foundation

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }
}

let fIO = FileIO()

let n = fIO.readInt()
for _ in 1...n {
    print(fIO.readInt() + fIO.readInt())
}

// 입력 후 Enter -> Ctrl + D


// 더 빠른 코드

//let fileIO = FileIO()
//let T = fileIO.readInt()
//var result = ""
//
//for _ in 0..<T {
//    result += "\(fileIO.readInt() + fileIO.readInt())\n"
//}
//
//print(result)
