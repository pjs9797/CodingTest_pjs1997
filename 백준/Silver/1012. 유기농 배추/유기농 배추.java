import java.io.*;
import java.util.*;

public class Main {

    public static int m;
    public static int n;
    public static int [] dx = {1,-1,0,0};
    public static int [] dy = {0,0,1,-1};
    public static boolean [][] check = new boolean[n][m];
    public static int [][] arr;
    public static int cnt;

    public class Node{
        int x,y;

        public Node(int x,int y){
            this.x = x;
            this.y = y;
        }
    }

    public static void dfs(int x,int y){
        arr[x][y] = 0;
        for (int i = 0; i < 4; i++) {
            int ax = x + dx[i];
            int ay = y + dy[i];

            if(ax >= 0 && ay >= 0 && ax < n && ay < m && arr[ax][ay] == 1){
                dfs(ax,ay);
            }
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());

        for (int i = 0; i < N; i++) {
            cnt = 0;

            String [] A = br.readLine().split(" ");
            m = Integer.parseInt(A[0]);
            n = Integer.parseInt(A[1]);
            int k = Integer.parseInt(A[2]);
            arr = new int[n][m];

            for (int j = 0; j < k; j++) {
                String [] B = br.readLine().split(" ");
                int a = Integer.parseInt(B[0]);
                int b = Integer.parseInt(B[1]);
                arr[b][a] = 1;
            }
            for (int j = 0; j < n; j++) {
                for (int l = 0; l < m; l++) {
                    if(arr[j][l] == 1){
                        dfs(j,l);
                        cnt++;
                    }
                }
            }
            System.out.println(cnt);
        }




    }


}
