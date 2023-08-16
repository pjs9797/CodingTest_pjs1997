import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));


        int [][] arr = new int[100][100];
        int cnt =0;
        for (int i = 0; i < 4; i++) {
            String [] a = br.readLine().split(" ");
            int x = Integer.parseInt(a[0]);
            int y = Integer.parseInt(a[1]);
            int n = Integer.parseInt(a[2])-Integer.parseInt(a[0]);
            int m = Integer.parseInt(a[3])-Integer.parseInt(a[1]);

            for (int j = x; j < x+n; j++) {
                for (int k = y; k < y+m; k++) {
                    if(arr[j][k] == 0){
                        arr[j][k] = 1;
                        cnt += 1;
                    }
                }
            }

        }
        System.out.println(cnt);




        bw.flush();
        bw.close();
        br.close();
    }
}

