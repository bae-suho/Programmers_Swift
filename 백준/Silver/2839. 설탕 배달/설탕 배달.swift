let input = Int(readLine()!)!

var fiveBag = input / 5
while fiveBag >= 0 {
    let threeBag = (input - fiveBag * 5) / 3
    if (input - ( fiveBag * 5 ) - ( threeBag * 3 )) == 0 {
        print(fiveBag + threeBag)
        break
    }
    else {
        fiveBag -= 1
        
        if fiveBag == -1 {
            print(-1)
        }
    }
}

