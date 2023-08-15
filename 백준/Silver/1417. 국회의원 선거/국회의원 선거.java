import java.io.*;
import java.math.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int n = Integer.parseInt(br.readLine());
        if(n == 1){
            String a = br.readLine();
            System.out.println(0);
        }
        else {
            Integer [] arr = new Integer[n-1];
            int num = 0;
            for (int i = 0; i < n; i++) {
                if (i == 0){
                    num = Integer.parseInt(br.readLine());
                }
                else {
                    int nn = Integer.parseInt(br.readLine());
                    arr[i-1] = nn;
                }
            }
            int ans = 0;
            Arrays.sort(arr,Collections.reverseOrder());

            if(num > arr[0]){
                System.out.println(0);
            }
            else {
                while (num <= arr[0]) {
                    arr[0]-=1;
                    num+=1;
                    Arrays.sort(arr,Collections.reverseOrder());
                    ans += 1;
                }
                System.out.println(ans);
            }


        }



        bw.flush();
        bw.close();
        br.close();
    }
}

