import java.util.*;

class Solution {
    public static class Node{
        int x;
        int y;
        int cnt;
        public Node(int x,int y,int cnt){
            this.x = x;
            this.y = y;
            this.cnt = cnt;
        }
    }
    public static ArrayList<Integer>list = new ArrayList<>();
    public static int [] dx = {-1,1,0,0};
    public static int [] dy = {0,0,1,-1};
    public static void bfs(Node node,int [][] maps,boolean [][] visited){
        int n = maps.length;
        int m = maps[0].length;
        visited[node.x][node.y] = true;
        Queue<Node>queue = new LinkedList<>();
        queue.add(node);
        while(!queue.isEmpty()){
            Node a = queue.poll();
            if(a.x == n-1 && a.y == m-1){
                list.add(a.cnt);
                break;
            }
            for(int i=0;i<4;i++){
                int ax = a.x+dx[i];
                int ay = a.y+dy[i];
                if(ax>=0&&ay>=0&&ax<n&&ay<m){
                    if(!visited[ax][ay]){
                        if(maps[ax][ay] == 1){
                            visited[ax][ay] = true;
                            queue.add(new Node(ax,ay,a.cnt+1));
                        }
                    }
                }
            }
        }
    }
    public int solution(int[][] maps) {
        int answer = 0;
        boolean [][] visited = new boolean[maps.length][maps[0].length];
        Node node = new Node(0,0,1);
        bfs(node,maps,visited);
        if(list.isEmpty()){
            return -1;
        }
        else{
        return list.get(0);
        }
    }
}