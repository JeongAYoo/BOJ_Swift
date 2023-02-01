/*
 2753 윤년
 https://www.acmicpc.net/problem/2753
 */

let year = Int(readLine()!)!

(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) ? print(1) : print(0)
