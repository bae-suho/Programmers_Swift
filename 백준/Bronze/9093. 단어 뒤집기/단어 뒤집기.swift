let count = Int(readLine()!)!

for _ in 0..<count {
    let line = readLine()!.split(separator: " ")
    var str = ""
    for i in 0..<line.count {
        str += line[i].reversed() + " "
    }
    print(str)
}