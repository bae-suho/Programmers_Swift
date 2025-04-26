let count = Int(readLine()!)!

var stack:[Int] = []
for _ in 0..<count {
    let command = readLine()!
    if command.hasPrefix("push") {
        stack.append(Int(command.split(separator: " ")[1])!)
    }
    else if command == "pop" {
        if !stack.isEmpty {
            print(stack[stack.count-1])
            stack.removeLast()
        }
        else {
            print(-1)
        }
    }
    else if command == "size" {
        print(stack.count)
    }
    else if command == "empty" {
        print(stack.isEmpty ? 1 : 0)
    }
    else if command == "top" {
        if !stack.isEmpty {
            print(stack[stack.count-1])
        }
        else {
            print(-1)
        }
    }
}