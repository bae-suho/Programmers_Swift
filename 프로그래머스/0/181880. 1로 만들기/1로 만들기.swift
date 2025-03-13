import Foundation

func solution(_ num_list:[Int]) -> Int {
   return num_list.map{
       var count = 0
       var x = $0
       while true {
            if x == 1 {
                return count
            }
            x = x % 2 == 0 ? x/2 : (x-1)/2
            count += 1 
       }
   }.reduce(0, +)
}