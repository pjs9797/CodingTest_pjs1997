import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());

        int [][] arr = new int[2][12];

        for (int i = 0; i < 6; i++) {
            String [] a = br.readLine().split(" ");
            int dir = Integer.parseInt(a[0]);
            int dis = Integer.parseInt(a[1]);
            arr[0][i] = dir;
            arr[0][i+6] = dir;
            arr[1][i] = dis;
            arr[1][i+6] = dis;
        }

        int hap = 0;
        int sub = 0;

        for (int i = 0; i < 9; i++) {
            if (arr[0][i] == arr[0][i+2] && arr[0][i+1] == arr[0][i+3]){
                sub = arr[1][i+1] * arr[1][i+2];
                hap = (arr[1][i]+arr[1][i+2])*(arr[1][i+1]+arr[1][i+3]) - sub;
                break;
            }
        }

        System.out.println(hap*N);

        bw.flush();
        bw.close();
        br.close();
    }

}

