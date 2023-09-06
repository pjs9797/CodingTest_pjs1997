import java.io.*;
import java.util.*;

public class Main {


    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        int cnt = 0;
        int [][] arr = new int[N][2];
        for (int i = 0; i < N; i++) {
            String [] A = br.readLine().split(" ");
            arr[i][0] = Integer.parseInt(A[0]);
            arr[i][1] = Integer.parseInt(A[1]);
        }

        Arrays.sort(arr, (o1,o2) ->{
            if(o1[1] == o2[1]){
                return o1[0] - o2[0];
            }
            else {
                return o1[1] - o2[1];
            }
        });

        int index = 0;

        for (int i = 0; i < N; i++) {
            if(i == 0){
                index = arr[i][1];
                cnt++;
            }
            else {
                if(index <= arr[i][0]){
                    index = arr[i][1];
                    cnt++;
                }
            }
        }

        System.out.println(cnt);


    }




}
