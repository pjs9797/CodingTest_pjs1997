class Solution {
    public static int[] solution(String[] park, String[] routes) {
        int[] answer = new int[2];
        String [][] map = new String[park.length][park[0].length()];
        int x = 0;
        int y = 0;
        int n = park.length;
        int m = park[0].length();
        for (int i = 0; i < map.length; i++) {
            for (int j = 0; j < map[0].length; j++) {
                map[i][j] = String.valueOf(park[i].charAt(j));
                if (map[i][j].equals("S")){
                    x = i;
                    y = j;
                }
            }
        }
        for (int i = 0; i < routes.length; i++) {
            String [] A = routes[i].split(" ");
            String dir = A[0];
            int init = Integer.parseInt(A[1]);
            int leng = init;
            int a = x;
            int b = y;
            while (leng > 0) {
                if (dir.equals("E")) {
                    int dx = x;
                    int dy = y+1;
                    if(dx>=0 && dy>= 0 && dx < n && dy < m && !map[dx][dy].equals("X")){
                        leng -= 1;
                        x = dx;
                        y = dy;
                    }
                    else{
                        x = a;
                        y = b;
                        break;
                    }
                }
                else if(dir.equals("W")){
                    int dx = x;
                    int dy = y-1;
                    if(dx>=0 && dy>= 0 && dx < n && dy < m && !map[dx][dy].equals("X")){
                        leng -= 1;
                        x = dx;
                        y = dy;
                    }
                    else{
                        x = a;
                        y = b;
                        break;
                    }
                }
                else if(dir.equals("N")){
                    int dx = x-1;
                    int dy = y;
                    if(dx>=0 && dy>= 0 && dx < n && dy < m && !map[dx][dy].equals("X")){
                        leng -= 1;
                        x = dx;
                        y = dy;
                    }
                    else{
                        x = a;
                        y = b;
                        break;
                    }
                }
                else if(dir.equals("S")){
                    int dx = x+1;
                    int dy = y;
                    if(dx>=0 && dy>= 0 && dx < n && dy < m && !map[dx][dy].equals("X")){
                        leng -= 1;
                        x = dx;
                        y = dy;
                    }
                    else{
                        x = a;
                        y = b;
                        break;
                    }
                }
            }
        }
        answer[0] = x;
        answer[1] = y;
        System.out.println(x+" "+y);
        return answer;
    }
}