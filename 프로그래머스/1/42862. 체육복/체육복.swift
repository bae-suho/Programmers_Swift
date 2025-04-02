import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var stu = Array(repeating: 1, count: n+2)
    stu[0] = 0
    stu[n+1] = 0
    for re in reserve {
        stu[re] += 1
    }
    
    for lo in lost {
        stu[lo] -= 1
    }
    for i in 1...n {
        if stu[i] == 0 {
            if stu[i-1] == 2 {
                stu[i-1] = 1
                stu[i] = 1
            }
            else if stu[i+1] == 2 {
                stu[i+1] = 1
                stu[i] = 1
            }
        }
    }
    return stu.filter{$0 > 0}.count
}