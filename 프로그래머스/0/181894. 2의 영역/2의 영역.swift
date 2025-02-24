import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = []
    let s = arr.firstIndex{$0 == 2}
    let e = arr.lastIndex{$0 == 2}
    if s == nil {
        result.append(-1)
    }
    else if s == e {
        result.append(arr[s!])
    }
    else {
        for i in s!...e! {
            result.append(arr[i])
        }
    }
    return result
}
