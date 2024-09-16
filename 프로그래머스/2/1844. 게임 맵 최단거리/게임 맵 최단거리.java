import java.util.*;

class Solution {
    static int [] dx = {1,-1,0,0};
    static int [] dy = {0,0,-1,1};
    
    public int solution(int[][] maps) {
        int answer = -1;
        int n = maps.length;
        int m = maps[0].length;
        Queue<Node> queue = new LinkedList<>();
        queue.add(new Node(0,0,1));
        boolean[][] visited = new boolean[n][m];
        visited[0][0] = true;
        
        while(!queue.isEmpty()){
            Node node = queue.poll();
            int x = node.x;
            int y = node.y;
            int cnt = node.cnt;
            if (x==n-1 && y == m-1){
                answer = cnt;
                break;
            }
            for(int i=0;i<4;i++){
                int ax = x+dx[i];
                int ay = y+dy[i];
                if(ax>=0 && ay>=00 && ax<n && ay<m && maps[ax][ay] == 1){
                    if(!visited[ax][ay]){
                        queue.add(new Node(ax,ay,cnt+1));
                        visited[ax][ay] = true;
                    }
                }
            }
        }
        
        
        return answer;
    }
    
    static class Node{
        int x;
        int y;
        int cnt;
        
        public Node(int x, int y, int cnt){
            this.x=x;
            this.y=y;
            this.cnt = cnt;
        }
    }
}