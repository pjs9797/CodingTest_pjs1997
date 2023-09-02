import java.math.*;

class Solution {
    int solution(int[][] land) {
        int answer = 0;
        int [][] arr = new int[land.length][4];
        for(int i=0;i<4;i++){
            arr[0][i] = land[0][i];
        }
        if(land.length > 1){
            for(int i = 1;i<land.length;i++){
                arr[i][0] = land[i][0] + Math.max(arr[i-1][1],Math.max(arr[i-1][2],arr[i-1][3]));
                arr[i][1] = land[i][1] + Math.max(arr[i-1][0],Math.max(arr[i-1][2],arr[i-1][3]));
                arr[i][2] = land[i][2] + Math.max(arr[i-1][0],Math.max(arr[i-1][1],arr[i-1][3]));
                arr[i][3] = land[i][3] + Math.max(arr[i-1][0],Math.max(arr[i-1][2],arr[i-1][1]));
            }
        }
        int n = land.length-1;
        answer = Math.max(arr[n][0],Math.max(arr[n][1],Math.max(arr[n][2],arr[n][3])));
        
        // for(int i=0;i<=n;i++){
        //     System.out.println(arr[i][0]+" "+arr[i][1]+" "+arr[i][2]+ " "+ arr[i][3]);
        // }
        
        
        return answer;
    }
}