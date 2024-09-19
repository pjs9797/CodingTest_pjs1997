class Solution {
    static boolean [] visited;
    static int cnt = 0;
    public int solution(int n, int[][] computers) {
        int answer = 0;
        visited = new boolean[n];
        for(int i=0;i<n;i++){
            if(!visited[i]){
                check(n,computers,i);
                cnt++;
            }
        }
        return cnt;
    }
    
    public static void check(int n,int[][] computers,int x){
        visited[x] = true;
        
        for(int j=0;j<n;j++){
            if(computers[x][j] == 1 && !visited[j]){
                  check(n,computers,j);
            }
        }
    }
}