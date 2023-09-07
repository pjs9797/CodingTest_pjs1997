import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static boolean [][] visited;
    public static int N;
    public static int M;
    public static int cnt;
    public static ArrayList<int []> list = new ArrayList<>();
    public static void check(int x, int y, String [][] arr){
        cnt = 1;
        boolean succes = true;
        Loop: while (true){
            int [] dx = {1,0,-1,0};
            int [] dy = {0,1,0,-1};

            for (int i = 0; i < 4; i++) {
                dx[i] = dx[i]*cnt;
                dy[i] = dy[i]*cnt;
            }
            for (int i = 0; i < 4; i++) {
                int ax = x+dx[i];
                int ay = y+dy[i];
                if (ax >= 0 && ax < N && ay >= 0 && ay < M){
                    if(arr[ax][ay].equals("*")){
                        continue;
                    }
                    else {
                        succes = false;
                        break Loop;
                    }
                }
                else {
                    succes = false;
                    break Loop;
                }
            }
            cnt += 1;
        }
        if(cnt == 1){
            if(!succes){

            }
        }
        else {
            if(!succes){
                visited[x][y] = false;
                for (int i = 1; i <= cnt-1; i++) {
                    visited[x+i][y] = false;
                    visited[x-i][y] = false;
                    visited[x][y+i] = false;
                    visited[x][y-i] = false;
                }
                int [] ans = new int[3];
                ans[0] = x+1;
                ans[1] = y+1;
                ans[2] = cnt-1;
                list.add(ans);
            }
        }



    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] A = br.readLine().split(" ");
        N = Integer.parseInt(A[0]);
        M = Integer.parseInt(A[1]);
        String [][] arr = new String[N][M];
        visited = new boolean[N][M];
        for (int i = 0; i < N; i++) {
            String [] AA = br.readLine().split("");
            for (int j = 0; j < M; j++) {
                arr[i][j] = AA[j];
                if(arr[i][j].equals("*")){
                    visited[i][j] = true;
                }
            }
        }

        for (int i = 0; i < N; i++) {
            for (int j = 0; j < M; j++) {
                if(arr[i][j].equals("*")){
                    check(i,j,arr);
                }
            }
        }
        boolean suc = true;
        Loop:for (int i = 0; i < N; i++) {
            for (int j = 0; j < M; j++) {
                if(visited[i][j]){
                    suc = false;
                    break Loop;
                }
            }
        }
        if (suc){
            System.out.println(list.size());
            for (int i = 0; i < list.size(); i++) {
                System.out.println(list.get(i)[0] + " " + list.get(i)[1] + " "+ list.get(i)[2]);
            }
        }
        else {
            System.out.println(-1);
        }


        bw.flush();
        bw.close();
        br.close();
    }

}

