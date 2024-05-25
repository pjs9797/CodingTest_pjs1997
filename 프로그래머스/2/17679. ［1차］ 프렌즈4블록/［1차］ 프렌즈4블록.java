import java.util.*;
class Solution {
    public static int solution(int mm, int nn, String[] board) {
        int answer = 0;
        int m = nn;
        int n = mm;
        String [][] arr = new String[n][m];
        String [][] subArr = new String[n][m];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                arr[i][j] = String.valueOf(board[i].charAt(j));
                subArr[i][j] = arr[i][j];
            }
        }

        int [] dx = {0,1,0,1};
        int [] dy = {0,0,1,1};

        boolean doIt = true;
        while (doIt) {
            doIt = false;
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < m; j++) {
                    subArr[i][j] = arr[i][j];
                }
            }
            for (int i = 0; i < n - 1; i++) {
                for (int j = 0; j < m - 1; j++) {
                    boolean correct = true;
                    for (int k = 0; k < 4; k++) {
                        int ax = i + dx[k];
                        int ay = j + dy[k];
                        if (arr[i][j].equals("@") || !arr[i][j].equals(arr[ax][ay])) {
                            correct = false;
                            break;
                        }
                    }
                    if (correct) {
                        doIt = true;
                        for (int k = 0; k < 4; k++) {
                            int ax = i + dx[k];
                            int ay = j + dy[k];
                            subArr[ax][ay] = "@";
                        }
                    }
                }
            }
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < m; j++) {
                    arr[i][j] = "@";
                }
            }
            for (int i = 0; i < m; i++) {
                Queue<String> queue = new LinkedList<>();
                for (int j = n-1; j >=0; j--) {
                    if (!subArr[j][i].equals("@")) {
                        queue.add(subArr[j][i]);
                    }
                }
                int index = n-1;
                while (!queue.isEmpty()){
                    String a = queue.poll();
                    arr[index][i] = a;
                    index--;
                }
            }
        }
        int cnt = 0;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (arr[i][j].equals("@")){
                    cnt+=1;
                }
            }
        }

        return cnt;
    }
}