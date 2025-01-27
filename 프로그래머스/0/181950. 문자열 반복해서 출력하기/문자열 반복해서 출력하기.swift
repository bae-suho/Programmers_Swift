import Foundation

let input = readLine()!.split(separator: " ")
let (str, n) = (input[0], Int(input[1])!)

var result = ""
for _ in 0..<n {
    result = result + str
}

print(result)