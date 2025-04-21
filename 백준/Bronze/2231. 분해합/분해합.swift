var result = 0
let n = Int(readLine()!)!
for i in 1..<n {
    if i + String(i).map{Int(String($0))!}.reduce(0, +) == n {
        result = i
        break
    }
}
print(result)