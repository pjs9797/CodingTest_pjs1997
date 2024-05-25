import java.util.*;
class Solution {
    public int solution(int n, int[][] wires) {
        int answer = Integer.MAX_VALUE;
        int [][] arr = new int[n+1][n+1];
        for (int i = 0; i < wires.length; i++) {
            arr[wires[i][0]][wires[i][1]] = 1;
            arr[wires[i][1]][wires[i][0]] = 1;
        }
        for (int i = 0; i < wires.length; i++) {

            arr[wires[i][0]][wires[i][1]] = 0;
            arr[wires[i][1]][wires[i][0]] = 0;

            boolean [] visited = new boolean[n+1];
            dfs(arr,visited,wires[i][0]);
            
            int b = n-cnt;
            answer = Math.min(answer,Math.abs(b-cnt));
            arr[wires[i][0]][wires[i][1]] = 1;
            arr[wires[i][1]][wires[i][0]] = 1;
            cnt = 0;
        }

        return answer;
    }
    static int cnt = 0;
    static void dfs(int[][] arr, boolean [] visited,int node){
        visited[node] = true;
        cnt+=1;
        for (int i = 0; i < arr[0].length; i++) {
            if (arr[node][i] == 1 && !visited[i]){
                dfs(arr,visited,i);
            }
        }
    }
}