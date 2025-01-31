import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odds = ""
    var evens = ""
    for n in num_list {
        if(n % 2 == 0){
            //odd
            odds += String(n)
        }
        else {
            evens += String(n)
        }
    }
    return Int(odds)! + Int(evens)!    
}