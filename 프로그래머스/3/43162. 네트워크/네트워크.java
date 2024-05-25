class Solution {
    public static int solution(int n, int[][] computers) {
        int answer = 0;
        visited = new boolean[n];
        for (int i = 0; i < n; i++) {
            if (!visited[i]){
                dfs(computers,n,i);
                answer++;
            }
        }
        return answer;
    }
    static boolean [] visited;

    static void dfs(int[][] computers,int n,int node){
        visited[node] = true;
        for (int i = 0; i < n; i++) {
            if (computers[node][i] == 1){
                if (!visited[i]){
                    dfs(computers,n,i);
                }
            }
        }
    }
}