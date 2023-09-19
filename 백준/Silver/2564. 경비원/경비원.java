import org.w3c.dom.Node;

import java.io.*;
import java.util.*;
import java.math.*;

public class Main {


    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] A = br.readLine().split(" ");
        int M = Integer.parseInt(A[0]);
        int N = Integer.parseInt(A[1]);
        int n = Integer.parseInt(br.readLine());
        int [][] arr = new int[n+1][2];
        for (int i = 0; i <= n; i++) {
            String [] B = br.readLine().split(" ");
            int dir = Integer.parseInt(B[0]);
            int dis = Integer.parseInt(B[1]);
            if(i == n){
                if (dir == 1) {
                    arr[0][0] = 0;
                    arr[0][1] = dis;
                } else if (dir == 2) {
                    arr[0][0] = N;
                    arr[0][1] = dis;
                } else if (dir == 3) {
                    arr[0][0] = dis;
                    arr[0][1] = 0;
                } else {
                    arr[0][0] = dis;
                    arr[0][1] = M;
                }
            }
            else {
                if (dir == 1) {
                    arr[i+1][0] = 0;
                    arr[i+1][1] = dis;
                } else if (dir == 2) {
                    arr[i+1][0] = N;
                    arr[i+1][1] = dis;
                } else if (dir == 3) {
                    arr[i+1][0] = dis;
                    arr[i+1][1] = 0;
                } else {
                    arr[i+1][0] = dis;
                    arr[i+1][1] = M;
                }
            }
        }
        int ans = 0;
        for (int i = 1; i <= n; i++) {
            if(arr[0][0] == 0 || arr[0][0] == N){
                if(Math.abs(arr[0][0] - arr[i][0]) == N || Math.abs(arr[0][0] - arr[i][0]) == 0){
                    if(Math.abs(arr[0][0] - arr[i][0]) == 0){
                        ans += Math.abs(arr[0][1] - arr[i][1]);
                    }
                    else if(Math.abs(arr[0][0] - arr[i][0]) == N){
                        ans += Math.min(arr[0][1]+arr[i][1],2*M-(arr[0][1]+arr[i][1]))+N;
                    }
                    else {
                        ans += Math.abs(arr[0][0]-arr[i][0])+Math.abs(arr[0][1]-arr[i][1]);
                    }
                }
                else {
                    ans += Math.abs(arr[0][0]-arr[i][0])+Math.abs(arr[0][1]-arr[i][1]);
                }
            }
            else {
                if(Math.abs(arr[0][1] - arr[i][1]) == M || Math.abs(arr[0][1] - arr[i][1]) == 0){
                    if(Math.abs(arr[0][1] - arr[i][1]) == 0){
                        ans += Math.abs(arr[0][0] - arr[i][0]);
                    }
                    else if(Math.abs(arr[0][1] - arr[i][1]) == M){
                        ans += Math.min(arr[0][0]+arr[i][0],2*N-(arr[0][0]+arr[i][0]))+M;
                    }
                    else {
                        ans += Math.abs(arr[0][0]-arr[i][0])+Math.abs(arr[0][1]-arr[i][1]);
                    }
                }
                else {
                    ans += Math.abs(arr[0][0]-arr[i][0])+Math.abs(arr[0][1]-arr[i][1]);
                }
            }
            //System.out.println(ans);
        }
        System.out.println(ans);

        bw.flush();
        bw.close();
        br.close();
    }

}

