var time = readLine()!.split(separator: " ").map{Int($0)!}
let timer = Int(readLine()!)!
let hour = timer / 60
let min = timer % 60

time[0] += hour
time[1] += min

if time[1] / 60 > 0 {
    time[0] += 1
    time[1] %= 60
}
if time[0] / 24 > 0 {
    time[0] %= 24
}
print("\(time[0]) \(time[1])")
