import org.w3c.dom.Node;

import java.io.*;
import java.util.*;
import java.math.*;

public class Main {
    public static int N;
    public static int M;
    public static boolean [][] arr;
    public static int [] dxdy = new int[4];
    public static void dfs(int a,int b){
        int x = a;
        int y = b;
        while (true) {

            boolean check = false;
            for (int i = 0; i < 4; i++) {
                if (dxdy[i] == 1) {

                    while (true) {
                        int dx = x - 1;
                        int dy = y;
                        if (dx >= 0 && dy >= 0 && dx < N && dy < M) {
                            if (!arr[dx][dy]) {
                                arr[dx][dy] = true;
                                check = true;
                                x = dx;
                                y = dy;

                            }
                            else {
                                break;
                            }
                        }
                        else {break;}
                    }
                } else if (dxdy[i] == 2) {

                    while (true) {
                        int dx = x + 1;
                        int dy = y;
                        if (dx >= 0 && dy >= 0 && dx < N && dy < M) {
                            if (!arr[dx][dy]) {
                                arr[dx][dy] = true;
                                check = true;
                                x = dx;
                                y = dy;

                            }
                            else {
                                break;
                            }
                        }
                        else {
                            break;
                        }
                    }
                } else if (dxdy[i] == 3) {


                    while (true) {
                        int dx = x;
                        int dy = y - 1;
                        if (dx >= 0 && dy >= 0 && dx < N && dy < M) {
                            if (!arr[dx][dy]) {
                                arr[dx][dy] = true;
                                check = true;
                                x = dx;
                                y = dy;

                            }
                            else {
                                break;
                            }
                        }
                        else {
                            break;
                        }
                    }
                } else if (dxdy[i] == 4) {

                    while (true) {
                        int dx = x;
                        int dy = y + 1;
                        if (dx >= 0 && dy >= 0 && dx < N && dy < M) {
                            if (!arr[dx][dy]) {
                                arr[dx][dy] = true;
                                check = true;
                                x = dx;
                                y = dy;

                            }
                            else {
                                break;
                            }
                        }
                        else {
                            break;
                        }
                    }
                }
            }
            if (!check) {
                System.out.println(x + " " + y);
                return;
            }
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] A = br.readLine().split(" ");
        N = Integer.parseInt(A[0]);
        M = Integer.parseInt(A[1]);
        arr = new boolean[N][M];
        int K = Integer.parseInt(br.readLine());
        for (int i = 0; i < K; i++) {
            String [] B = br.readLine().split(" ");
            arr[Integer.parseInt(B[0])][Integer.parseInt(B[1])] = true;
        }

        String [] C = br.readLine().split(" ");
        String [] D = br.readLine().split(" ");
        for (int i = 0; i < D.length; i++) {
            dxdy[i] = Integer.parseInt(D[i]);
        }

        arr[Integer.parseInt(C[0])][Integer.parseInt(C[1])] = true;
        dfs(Integer.parseInt(C[0]),Integer.parseInt(C[1]));


        bw.flush();
        bw.close();
        br.close();
    }

}

