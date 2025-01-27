
# Swift Coding Test Preparation

Swift 코딩 테스트 준비를 위한 연습 문제 풀이와 학습 자료입니다.

## Progress

### 코딩 기초 트레이닝
- 총 문제: 124문제
- 해결한 문제 중 오래 걸렸던 문제:
  - **181943. 문자열 겹쳐쓰기**

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
- result.index(result.startIndex, offsetBy: s): 덮어쓸 시작 위치를 구합니다.
- result.index(startIndex, offsetBy: overwrite_string.count): 덮어쓰기가 끝나는 위치를 구합니다.
- replaceSubrange(range, with: overwrite_string): 지정된 범위(range)를 overwrite_string으로 대체합니다.

### 학습 포인트

- 문자열 조작 시 배열 변환 없이 replaceSubrange로 효율적으로 작업 가능.
- Range<String.Index>를 활용한 범위 지정 및 문자열 수정.
- 두 가지 방식의 장단점 비교:
  - 배열 변환 방식: 직관적이지만 변환 오버헤드 발생.
  - replaceSubrange 방식: 문자열 그대로 작업 가능해 간결하고 효율적.
