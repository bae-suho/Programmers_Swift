// input 받기
let input = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (input[0],input[1])
var board:[Array<Character>] = []
for _ in 0..<n {
    board.append(Array(readLine()!))
}


// 체스판 자르기 8*8 로 만들어야함

var result = m*n

for i in 0...(n-8) {
    for j in 0...(m-8) {
        result = min(result, getResult(i, j))
    }
}

print(result)

func getResult(_ i: Int, _ j: Int) -> Int{
    var count = 0
    let rightBoard = ["BWBWBWBW", "WBWBWBWB"]
            for row in i..<(i+8) {
                var itr = 0
                for col in j..<(j+8) {
                    let index = rightBoard[row%2].index(rightBoard[row%2].startIndex, offsetBy: itr)
                    if rightBoard[row%2][index] == board[row][col] {
                         count += 1}
                    itr += 1
                }
            }
    return min(64 - count, count)
}