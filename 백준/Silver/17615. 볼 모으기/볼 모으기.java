import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        String [] arr = br.readLine().split("");
        int redCnt = 0;
        int blueCnt = 0;

        for (int i = 0; i < N; i++) {
            if(arr[i].equals("R")){
                redCnt += 1;
            }
            else {
                blueCnt += 1;
            }
        }
        int min = 100000000;
        int cnt = 0;
        if(arr[0].equals("R")) {
            for (int i = 0; i < N; i++) {
                if(arr[i].equals("R")){
                    cnt += 1;
                }
                else {
                    break;
                }
            }
            min = Math.min(min,redCnt - cnt);
        }
        cnt = 0;
        if(arr[arr.length-1].equals("R")){
            for (int i = N-1; i >= 0; i--) {
                if(arr[i].equals("R")){
                    cnt += 1;
                }
                else {
                    break;
                }
            }
            min = Math.min(min,redCnt - cnt);
        }
        cnt = 0;
        if(arr[0].equals("B")) {
            for (int i = 0; i < N; i++) {
                if(arr[i].equals("B")){
                    cnt += 1;
                }
                else {
                    break;
                }
            }
            min = Math.min(min,blueCnt - cnt);
        }
        cnt = 0;
        if(arr[arr.length-1].equals("B")){
            for (int i = N-1; i >= 0; i--) {
                if(arr[i].equals("B")){
                    cnt += 1;
                }
                else {
                    break;
                }
            }
            min = Math.min(min,blueCnt - cnt);
        }
        min = Math.min(min,Math.min(redCnt,blueCnt));
        System.out.println(min);


        bw.flush();
        bw.close();
        br.close();
    }

}

