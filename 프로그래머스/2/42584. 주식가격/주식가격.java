import java.util.*;

class Solution {
    public int[] solution(int[] arr) {
        int [] ans = new int[arr.length];

        for (int i = 0; i < arr.length; i++) {
            int num = arr[i];
            int cnt = 0;
            if(i <= arr.length - 1){
                for (int j = i+1; j < arr.length; j++) {
                    cnt += 1;
                    if(num <= arr[j]){
                        continue;
                    }
                    else {
                        break;
                    }
                }

            }
            ans[i] = cnt;
        }
        return ans;
    }
}