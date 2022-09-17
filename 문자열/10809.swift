/*
 10809 알파벳 찾기
 https://www.acmicpc.net/problem/10809
 */
let string = Array(readLine()!)

for i in Character("a").asciiValue!...Character("z").asciiValue! {
    // ASCII to Character
    let chr = Character(UnicodeScalar(i))
    if let index = string.firstIndex(of: chr) {
        print(index, terminator: " ")
        continue
    }
    print("-1", terminator: " ")
}
