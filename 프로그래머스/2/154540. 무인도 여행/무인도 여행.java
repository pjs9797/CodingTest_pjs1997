import java.util.*;

class Solution {
    
    static int [] dx = {-1,1,0,0};
    static int [] dy = {0,0,1,-1};
    public int[] solution(String[] maps) {
        int[] answer = {};
        String[][] arr = new String[maps.length][maps[0].length()];
        boolean [][] visited = new boolean[maps.length][maps[0].length()];
        
        for(int i = 0;i<arr.length;i++){
            String [] A = maps[i].split("");
            for(int j=0;j<A.length;j++){
                arr[i][j] = A[j];
                if(A[j].equals("X")){
                    visited[i][j] = true;
                }
            }
        }
        
        ArrayList<Integer> list = new ArrayList<>();
        
        for(int i=0;i<arr.length;i++){
            for(int j=0;j<arr[0].length;j++){
                if(!arr[i][j].equals("X") && !visited[i][j]){
                    int cnt = 0;
                    Queue<Node> queue = new LinkedList<>();
                    queue.add(new Node(i,j));
                    cnt += Integer.parseInt(arr[i][j]);
                    System.out.println(i+" "+j+" "+cnt);
                    visited[i][j] = true;
                    while(!queue.isEmpty()){
                        Node node = queue.poll();
                        for(int k=0;k<4;k++){
                            int ax = node.x+dx[k];
                            int ay = node.y+dy[k];
                            if(ax>=0 && ay>=0 && ax<arr.length && ay<arr[0].length){
                                if(!visited[ax][ay]){
                                    queue.add(new Node(ax,ay));
                                    cnt += Integer.parseInt(arr[ax][ay]);
                                    System.out.println(node.x+" "+node.y+" "+cnt);
                                    visited[ax][ay] = true;
                                }
                            }
                        }
                    }
                    list.add(cnt);
                }
            }
        }
        
        Collections.sort(list,(o1,o2)->{
            return o1-o2;
        });
        if(list.isEmpty()){
            answer = new int[]{-1};
        }
        else{
            answer = new int[list.size()];
            for(int i=0;i<list.size();i++){
                answer[i] = list.get(i);
            }
        }
        return answer;
    }
    
    public static class Node{
        int x;
        int y;
        
        public Node(int x,int y){
            this.x=x;
            this.y=y;
        }
    }
}