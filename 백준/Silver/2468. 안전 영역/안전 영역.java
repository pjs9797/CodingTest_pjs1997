import java.io.*;
import java.util.*;

public class Main {

    static int N;
    static int [] dx = {-1,1,0,0};
    static int [] dy = {0,0,1,-1};
    static int [][] arr;
    static boolean [][] check;
    static int max = 0;
    static int cnt = 0;

    static void dfs(int x,int y){
        check[x][y] = true;

        for (int i = 0; i < 4; i++) {
            int ax = x + dx[i];
            int ay = y + dy[i];

            if(ax>=0 && ay>=0 && ax < N && ay < N && !check[ax][ay]){
                dfs(ax,ay);
            }
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int ans = 1;
        N = Integer.parseInt(br.readLine());
        arr = new int[N][N];
        for (int i = 0; i < N; i++) {
            String [] A = br.readLine().split(" ");
            for (int j = 0; j < N; j++) {
                arr[i][j] = Integer.parseInt(A[j]);
                if(max < arr[i][j]){
                    max = arr[i][j];
                }
            }
        }

        for (int k = 1; k <= max; k++) {
            check = new boolean[N][N];
            cnt = 0;
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    if(arr[i][j] <= k){
                        check[i][j] = true;
                    }
                }
            }

            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    if(!check[i][j]){
                        dfs(i,j);
                        cnt++;
                    }
                }
            }
            //System.out.println(cnt);
            if(cnt > ans){
                ans = cnt;
            }

        }

        System.out.println(ans);
    }


}
