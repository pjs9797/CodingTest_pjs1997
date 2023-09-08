import java.io.*;
import java.util.*;
import java.math.*;

public class Main {
    public static boolean check = false;
    public static void dfs(int Node,int [][] arr,boolean [] visited,int N){
        visited[Node] = true;
        if(Node == N+1){
            check = true;
            return;
        }
        for (int i = 0; i < N+2; i++) {
            if(arr[Node][i] == 1 && !visited[i]){
                dfs(i,arr,visited,N);
            }
        }
    }
//    0 1 0 0
//    1 0 1 0
//    0 1 0 1
//    0 0 1 0

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int T = Integer.parseInt(br.readLine());
        for (int i = 0; i < T; i++) {
            check = false;
            int N = Integer.parseInt(br.readLine());
            int dest = N+1;
            boolean [] visited = new boolean[N+2];
            int [][] arr = new int[N+2][N+2];
            int [][] AA = new int[N+2][2];
            for (int j = 0; j < N + 2; j++) {
                String [] A = br.readLine().split(" ");
                int x = Integer.parseInt(A[0]);
                int y = Integer.parseInt(A[1]);
                AA[j][0] = x;
                AA[j][1] = y;
            }
            for (int j = 0; j < N + 2; j++) {
                for (int k = j+1; k < N+2; k++) {
                    if(Math.abs(AA[j][0]-AA[k][0])+Math.abs(AA[j][1]-AA[k][1]) <= 1000){
                        arr[j][k] = 1;
                        arr[k][j] = 1;
                    }
                }
            }
            dfs(0,arr,visited,N);
            if(check){
                System.out.println("happy");
            }
            else {
                System.out.println("sad");
            }

        }

        bw.flush();
        bw.close();
        br.close();
    }

}

