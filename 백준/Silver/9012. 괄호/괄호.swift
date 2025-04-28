let count = Int(readLine()!)!

for _ in 0..<count {
    var stack = 0
    let line = readLine()!
    for item in line {
        if item == "(" {
            stack += 1
        }
        else if item == ")" {
            stack -= 1
            if stack < 0 {
                break
            }
        }
    }
    
    if stack == 0 {
        print("YES")
    }
    else {
        print("NO")
    }
}