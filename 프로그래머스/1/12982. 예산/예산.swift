import Foundation

func solution(_ d: [Int], _ budget: Int) -> Int {
    // 부서별 신청 금액을 오름차순으로 정렬
    let sortedD = d.sorted()
    // 지원 가능한 부서의 수
    var count = 0
    // 남은 예산
    var remainingBudget = budget
    
    // 정렬된 신청 금액을 순회
    for amount in sortedD {
        // 예산이 해당 신청 금액을 지원할 수 있는 경우
        if remainingBudget - amount >= 0 {
            remainingBudget -= amount // 예산에서 해당 금액 차감
            count += 1 // 지원한 부서 수 증가
        } else {
            break // 예산이 부족한 경우 반복 종료
        }
    }
    
    return count // 지원 가능한 최대 부서 수 반환
}
