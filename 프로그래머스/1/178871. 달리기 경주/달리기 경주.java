import java.util.*;
class Solution {
    public static String[] solution(String[] players, String[] callings) {
        // 선수의 현재 위치를 저장하는 맵
        HashMap<String, Integer> positionMap = new HashMap<>();
        // 현재 등수 배열 (인덱스가 등수, 값이 선수 이름)
        String[] currentPositions = players.clone();
        
        // 초기 위치 설정
        for (int i = 0; i < players.length; i++) {
            positionMap.put(players[i], i);
        }

        // 호출된 선수들의 위치 업데이트
        for (String calling : callings) {
            int currentPosition = positionMap.get(calling);
            if (currentPosition > 0) {
                int newPosition = currentPosition - 1;
                
                // 앞선 선수와 위치 교환
                String overtakenPlayer = currentPositions[newPosition];
                currentPositions[newPosition] = calling;
                currentPositions[currentPosition] = overtakenPlayer;
                
                // 위치 맵 업데이트
                positionMap.put(calling, newPosition);
                positionMap.put(overtakenPlayer, currentPosition);
            }
        }

        return currentPositions;
    }
}