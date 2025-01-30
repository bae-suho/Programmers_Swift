import Foundation

func solution(_ n:Int) -> Int {
    // n이 홀수이면 n 이하의 모든 양의 정수를 더한다
    // n이 짝수이면 n 이하의 모든 양의 정수의 제곱을 더한다
    // 1. n -> 홀/짝
    // 2. n 이하의 모든 정수 배열 구하기
    // 3. 홀 -> reduce (0, +)
    //    짝 -> map{$0*$0}.reduce(0,+)
    var arr:[Int] = []
    for i in stride(from: n%2, through: n, by: 2){
        arr.append(i)
    }
       
    return n % 2 != 0 ? arr.reduce(0, +) : arr.map{$0 * $0}.reduce(0, +) 
}