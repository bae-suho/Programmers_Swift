let inp1 = Int(readLine()!)!
let inp2 = readLine()!.map{Int(String($0))!}

for i in inp2.reversed() {
    print(inp1 * i)
} 
print(inp1 * Int(inp2.reduce(""){ $0 + String($1)})!)