/*
 10951 A+B - 4
 https://www.acmicpc.net/problem/10951
 */

while let input = readLine() {
    print(input.split(separator: " ").map { Int($0)! }.reduce(0, +))
}
