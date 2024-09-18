import java.util.*;

class Solution {
    public int solution(int[] elements) {
        int answer = 0;
        int n = elements.length;
        Set<Integer> set = new HashSet<>();
        int [] arr = new int[elements.length*2];
        for(int i = 0; i< elements.length;i++){
            arr[i] = elements[i];
        }
        for(int i = 0; i< elements.length;i++){
            arr[i+n] = elements[i];
        }
        for(int i = 1;i<=n;i++){
            for(int j=0;j<n;j++){
                int sum=0;
                for(int k = 0;k<i;k++){
                    sum += arr[j+k];
                }
                set.add(sum);
            }
        }
        answer = set.size();
        return answer;
    }
}