import java.util.*;
class Solution {
    public int solution(int[][] maps) {
        int answer = -1;
        Queue<Node> queue = new LinkedList<>();
        int n = maps.length;
        int m = maps[0].length;
        int [] dx = {-1,1,0,0};
        int [] dy = {0,0,-1,1};
        boolean [][] visited = new boolean[n][m];
        visited[0][0] = true;
        queue.add(new Node(0,0,1));
        while (!queue.isEmpty()){
            Node node = queue.poll();
            if (node.x == n-1 && node.y == m-1){
                answer = node.cnt;
                break;
            }
            for (int i = 0; i < 4; i++) {
                int ax = node.x+dx[i];
                int ay = node.y+dy[i];
                if (ax>=0 && ay>=0 && ax < n && ay < m){
                    if (!visited[ax][ay] && maps[ax][ay] == 1) {
                        queue.add(new Node(ax, ay, node.cnt + 1));
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
        Node(int x, int y,int cnt){
            this.x = x;
            this.y = y;
            this.cnt = cnt;
        }
    }
}