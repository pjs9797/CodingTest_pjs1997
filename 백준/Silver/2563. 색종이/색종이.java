import java.io.*;
import java.math.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int n = Integer.parseInt(br.readLine());
        int ans = 0;
        int [][] arr = new int[100][100];

        for (int i = 0; i < n; i++) {
            String [] a = br.readLine().split(" ");
            int x = Integer.parseInt(a[0]);
            int y = Integer.parseInt(a[1]);

            for (int j = x; j < x+10; j++) {
                for (int k = y; k < y+10; k++) {
                    arr[j][k] = 1;
                }
            }

        }

        for (int i = 0; i < 100; i++) {
            for (int j = 0; j < 100; j++) {
                if(arr[i][j] == 1){
                    ans+=1;
                }
            }
        }
        System.out.println(ans);


        bw.flush();
        bw.close();
        br.close();
    }
}

