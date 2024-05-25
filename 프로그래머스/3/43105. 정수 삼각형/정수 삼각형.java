import java.util.*;
class Solution {
    public static int solution(int[][] triangle) {
        int answer = 0;
        int n = triangle.length;
        if (n == 1){
            answer = triangle[0][0];
        }
        else if (n == 2){
            answer = Math.max(triangle[1][0]+triangle[0][0],triangle[1][1]+triangle[0][0]);
        }
        else {
            int[][] arr = new int[n][n];
            for (int i = 0; i < n; i++) {
                arr[n - 1][i] = triangle[n - 1][i];
            }
            for (int i = n - 2; i >=0; i--) {
                for (int j = 0; j < triangle[i].length; j++) {
                    arr[i][j] = Math.max(arr[i + 1][j] + triangle[i][j], arr[i + 1][j + 1] + triangle[i][j]);
                }
            }
            answer = arr[0][0];
        }
        return answer;
    }
}