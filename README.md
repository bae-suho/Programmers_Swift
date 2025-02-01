
# Swift Coding Test Preparation

Swift 코딩 테스트 준비를 위한 연습 문제 풀이와 학습 자료입니다.

## Progress

### 코딩 기초 트레이닝
- 총 문제: 124문제
- 더 좋은 풀이가 있는 문제:
  - **181943. 문자열 겹쳐쓰기**
  - **181942. 문자열 섞기**
  - **181926. 수 조작하기 1**
  - **181925. 수 조작하기 2**
---

## 181943. 문자열 겹쳐쓰기

### 내 풀이

```swift
func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var result = Array(my_string)
    let overwrite = Array(overwrite_string)
    
    for i in 0..<overwrite_string.count {
        result[i + s] = overwrite[i]
    }
    return String(result)
}
```

### 다른 풀이: `replaceSubrange` 사용

```swift
func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var result = my_string
    let startIndex = result.index(result.startIndex, offsetBy: s)
    let endIndex = result.index(startIndex, offsetBy: overwrite_string.count)
    let range = startIndex..<endIndex
    
    result.replaceSubrange(range, with: overwrite_string)
    return result
}
```
### 코드 해설:
- `result.index(result.startIndex, offsetBy: s)`: 덮어쓸 시작 위치를 구합니다.
- `result.index(startIndex, offsetBy: overwrite_string.count)`: 덮어쓰기가 끝나는 위치를 구합니다.
- `replaceSubrange(range, with: overwrite_string)`: 지정된 범위(range)를 overwrite_string으로 대체합니다.

### 학습 포인트
- 문자열 조작 시 배열 변환 없이 `replaceSubrange`로 효율적으로 작업 가능.
- Range<String.Index>를 활용한 범위 지정 및 문자열 수정.
- 두 가지 방식의 장단점 비교:
  - 배열 변환 방식: 직관적이지만 변환 오버헤드 발생.
  - `replaceSubrange` 방식: 문자열 그대로 작업 가능해 간결하고 효율적.
---

## 181942. 문자열 섞기

### 내 풀이

```swift
func solution(_ str1:String, _ str2:String) -> String {
    var result = ""
    let str1_arr = Array(str1)
    let str2_arr = Array(str2)
    for i in 0..<str1_arr.count { 
        result += String(str1_arr[i]) + String(str2_arr[i])
    }
    return result
}
```

### 다른 풀이: `zip` 활용

```swift
func solution(_ str1:String, _ str2:String) -> String {
    return zip(str1, str2).map { String($0) + String($1) }.joined()
}
```

### 코드 해설:
- `zip(str1, str2)`: 두 문자열을 순서대로 묶어서 튜플로 반환합니다.
- `map { String($0) + String($1) }`: 각 튜플을 문자열로 변환하고, 결합하여 새로운 배열을 만듭니다.
- `joined()`: 배열의 모든 요소를 하나의 문자열로 결합합니다.

### 학습 포인트
- `zip`을 사용하여 두 문자열을 동시에 순회하면서 처리할 수 있습니다.
- `map`과 `joined()`를 활용해 문자열을 결합하는 방식이 간결하고 효율적입니다.
- 두 가지 방식의 장단점 비교:
  - 배열 방식: 직관적이고 이해하기 쉬우나 배열 변환과 반복문으로 코드가 길어질 수 있음.
  - `zip` 변환 방식: 고차 함수를 이용해 간결하고 깔끔한 코드 작성 가능, 코드가 더 효율적이고 짧음.
---

## 181926. 수 조작하기 1

### 내 풀이

```swift
func solution(_ n:Int, _ control:String) -> Int {
    var ret = n
    for c in control {
        switch c {
            case "w" : ret += 1
            case "s" : ret += -1
            case "d" : ret += 10
            case "a" : ret += -10
            default : return 0;
        }
    }
    return ret
}
```

### 다른 풀이: `Dictionary` 사용

```swift
func solution(_ n:Int, _ control:String) -> Int {
    let op: [Character: Int] = ["w": 1, "s": -1, "d": 10, "a": -10]
    return control.map{ op[$0]! }.reduce(n, +)
}
```
### 코드 해설:
- `op: [Character: Int]`: 문자와 조작값을 딕셔너리 형태로 저장하여 효율적으로 조회합니다.
- `control.map { op[$0]! }`: control 문자열의 각 문자를 op에서 대응하는 값으로 변환합니다.
- `.reduce(n, +)`: n을 초기값으로 설정하고 변환된 값을 누적하여 최종 결과를 반환합니다.

### 학습 포인트
- Dictionary를 활용하면 `switch` 문보다 간결하고 효율적으로 값을 매핑할 수 있습니다.
- 두 가지 방식의 장단점 비교:
    - `switch` 문 방식: 직관적이지만, 조건 분기가 많아질 경우 코드가 길어질 수 있음.
    - Dictionary 방식: `map`과 `reduce`를 활용하여 코드가 간결해지지만, 존재하지 않는 키를 강제 언래핑(!)할 경우 런타임 오류 발생 가능.
---

## 181925. 수 조작하기 2

### 내 풀이

```swift
func solution(_ numLog:[Int]) -> String {
    let op: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    var prev = numLog[0]
    var ret = ""
    for i in 1..<numLog.count {
        ret.append(op[numLog[i] - prev]!)
        prev = numLog[i]
    }
    return ret
}
```

### 다른 풀이: `(1..<count).map` 사용

```swift
func solution(_ numLog:[Int]) -> String {
    let op: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    return (1..<numLog.count).map{ op[numLog[$0] - numLog[$0 - 1]]! }.joined()
}
```
### 코드 해설:
- `op: [Int: String]`: 문자와 조작값을 딕셔너리 형태로 저장하여 효율적으로 조회합니다.
- `(1..<numLog.count).map { op[numLog[$0] - numLog[$0 -1]]! }`: `numLog[n] - numLog[n-1]`의 인덱스 차이를 계산하기 위해 인덱스 배열을 `map`으로 순회하고 대응하는 문자로 변환합니다.

### 학습 포인트
- 배열 인덱스를 `map`을 활용하여 두 인덱스 값을 비교하는 코드를 더 간결하게 작성할 수 있습니다.
- 두 가지 방식의 장단점 비교:
  - for 반복문: 명확하고 직관적이지만 코드가 길어질 수 있음.
  - `(1..<count).map`: 인덱스 접근을 `map`을 통해 간결하게 가능하지만, `count`는 인덱스 배열보다 크므로 고려해서 코드를 작성해야함.
---
