var time = readLine()!.split(separator: " ").map{Int($0)!}
if time[1] - 45 < 0 {
   time[0] = time[0] == 0 ? 24 : time[0]
   time[0] -= 1
   time[1] += 15
} 
else {
    time[1] -= 45
}
print("\(time[0]) \(time[1])")