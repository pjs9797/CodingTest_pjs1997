import java.util.*;

class Solution {
    public int solution(String[] friends, String[] gifts) {
        int answer = 0;
        int n = friends.length;
        Integer [] ansArr = new Integer[n];
        for (int i = 0; i < ansArr.length; i++) {
                ansArr[i] = 0;
            }
        int [][] arr = new int [n][n];
        int [][] present = new int[n][3];
        
        Map<String, Integer> friendMap = new HashMap<>();
        for (int i = 0; i < n; i++) {
            friendMap.put(friends[i], i);
        }

        // 선물 기록 처리
        for (String gift : gifts) {
            String[] pair = gift.split(" ");
            int giver = friendMap.get(pair[0]);
            int receiver = friendMap.get(pair[1]);

            arr[giver][receiver] += 1;
            present[giver][0] += 1; // 선물을 준 횟수
            present[receiver][1] += 1; // 선물을 받은 횟수
        }
        
        for(int i=0;i<n;i++){
            present[i][2] = present[i][0] - present[i][1];
        }
        
        for(int i=0;i<n;i++){
            for(int j=i+1;j<n;j++){
                if(arr[i][j] > arr[j][i]){
                    ansArr[i] += 1;
                }
                else if(arr[i][j] < arr[j][i]){
                    ansArr[j] += 1;
                }
                else{
                    if(present[i][2] > present[j][2]){
                        ansArr[i] += 1;
                    }
                    else if(present[i][2] < present[j][2]){
                        ansArr[j] += 1;
                    }
                }
            }
        }
        
        Arrays.sort(ansArr, (o1,o2) ->{
            return o2-o1;
        });
        
        answer = ansArr[0];
        
        return answer;
    }
}