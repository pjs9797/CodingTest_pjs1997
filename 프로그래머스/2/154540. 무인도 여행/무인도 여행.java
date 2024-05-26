import java.util.*;
class Solution {
    public static int[] solution(String[] maps) {
        int[] answer = {};
        ArrayList<Integer> list = new ArrayList<>();
        int [][] map = new int[maps.length][maps[0].length()];
        int n = map.length;
        int m = map[0].length;
        Queue<Node> queue = new LinkedList<>();
        boolean [][] visited = new boolean[n][m];
        int [] dx = {-1,1,0,0};
        int [] dy = {0,0,-1,1};
        for (int i = 0; i < maps.length; i++) {
            for (int j = 0; j < maps[i].length(); j++) {
                if (maps[i].charAt(j) == 'X'){
                    map[i][j] = -1;
                    visited[i][j] = true;
                }
                else {
                    map[i][j] = Integer.parseInt(String.valueOf(maps[i].charAt(j)));
                }
            }
        }
        for (int i = 0; i < map.length; i++) {
            for (int j = 0; j < map[i].length; j++) {
                int count = 0;
                if (map[i][j] != -1 && !visited[i][j]){
                    queue.add(new Node(i,j,map[i][j]));
                    visited[i][j] = true;
                    while (!queue.isEmpty()){
                        Node node = queue.poll();
                        map[node.x][node.y] = -1;
                        count += node.cnt;
                        for (int k = 0; k < 4; k++) {
                            int ax = node.x+dx[k];
                            int ay = node.y+dy[k];
                            if (ax>=0 && ay>=0 && ax<n && ay<m){
                                if (map[ax][ay] != -1 && !visited[ax][ay]){
                                    queue.add(new Node(ax,ay,map[ax][ay]));
                                    visited[ax][ay] = true;
                                }
                            }
                        }
                    }
                }
                if (count != 0) {
                    list.add(count);
                }
            }
        }

        Collections.sort(list);
        if (list.isEmpty()){
            int [] a = {-1};
            return a;
        }
        else {
            answer = new int[list.size()];
            for (int i = 0; i < list.size(); i++) {
                answer[i] = list.get(i);
            }
            return answer;
        }
    }

    static class Node{
        int x;
        int y;
        int cnt;
        Node(int x, int y, int cnt){
            this.x = x;
            this.y = y;
            this.cnt = cnt;
        }
    }
}