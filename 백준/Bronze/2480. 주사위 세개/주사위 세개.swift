//같은 눈이 3개가 나오면 10,000원+(같은 눈)×1,000원의 상금을 받게 된다.
//같은 눈이 2개만 나오는 경우에는 1,000원+(같은 눈)×100원의 상금을 받게 된다.
//모두 다른 눈이 나오는 경우에는 (그 중 가장 큰 눈)×100원의 상금을 받게 된다.

let dices = readLine()!.split(separator: " ").map{Int($0)!}
if dices[0] == dices[1] && dices[0] == dices[2] {
    print(dices[0] * 1000 + 10000) 
}
else if dices[0] == dices[1] && dices[0] != dices[2] {
    print(1000 + dices[0] * 100)
}
else if dices[1] == dices[2] && dices[1] != dices[0] {
    print(1000 + dices[1] * 100)
}
else if dices[0] == dices[2] && dices[0] != dices[1] {
    print(1000 + dices[2] * 100)
}
else {
    print(dices.sorted(){$0 > $1}[0] * 100)
}