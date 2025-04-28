var count = Int(readLine()!)!
var ans = Array<String>()
var stack = Array<Int>()
var find = true
var i = 1
for _ in 1...count {
    let num = Int(readLine()!)!
    while i <= num {
        stack.append(i)
        ans.append("+")
        i += 1
    }
    if stack[stack.count - 1] == num {
        stack.removeLast()
        ans.append("-")
    }
    else {
        find = false
    }
}

if find {
    for a in ans {
        print(a)
    }
}
else {
    print("NO")
}