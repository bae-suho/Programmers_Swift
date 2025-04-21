let input = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (input[0], input[1])
let cards = readLine()!.split(separator: " ").map{Int($0)!}
var result = 0

for i in 0..<(n-2) {
    for j in (i + 1)..<(n-1) {
        for k in (j + 1)..<n {
            let sum = cards[i] + cards[j] + cards[k]
            if sum == m {
                result = sum
                break
            }
            else if result < sum && sum <= m {
                result = sum    
            } 
        }
    }
}

print(result)