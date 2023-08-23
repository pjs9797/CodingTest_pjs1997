import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] a = br.readLine().split(" ");
        int M = Integer.parseInt(a[0]);
        int N = Integer.parseInt(a[1]);

        int [] ans = new int[5];
        
        String [][] arr = new String[M*5+1][N*5+1];
        boolean [][] visited = new boolean[M*5+1][N*5+1];

        for (int i = 0; i < M * 5 + 1; i++) {
            String [] aa = br.readLine().split("");
            for (int j = 0; j < N * 5 + 1; j++) {
                arr[i][j] = aa[j];
            }
        }

        for (int i = 0; i < M * 5 + 1; i++) {
            for (int j = 0; j < N * 5 + 1; j++) {
                if(!arr[i][j].equals("#")){
                    if(!visited[i][j]){
                        boolean check = false;
                        for (int k = i; k < i+4; k++) {
                            if(arr[k][j].equals(".")){
                                ans[k-i] += 1;
                                check = true;
                                break;
                            }
                        }
                        if(!check){
                            ans[4] += 1;
                        }
                        for (int k = i; k < i+4; k++) {
                            for (int l = j; l < j+4; l++) {
                                visited[k][l] = true;
                            }
                        }
                    }
                }
            }
        }

        for (int i = 0; i < 5; i++) {
            System.out.print(ans[i] + " ");
        }


        bw.flush();
        bw.close();
        br.close();
    }

}

