import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let nums = Set([a,b,c])
    let box = (a * a * a) + (b * b * b) + (c * c * c)
    let square = (a * a) + (b * b) + (c * c)
    let point = a + b + c
    var ret = 0
    
    if nums.count == 3 {
        ret = point
    }
    else if nums.count == 2 {
        ret = point * square
    }
    else if nums.count == 1 {
        ret = point * square * box
    }
    
    
    return ret
}