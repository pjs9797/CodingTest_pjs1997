import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        String [] a = br.readLine().split(" ");
        int [] arr = new int[a.length];
        for (int i = 0; i < N; i++) {
            arr[i] = Integer.parseInt(a[i]);
        }
        Arrays.sort(arr);
        int min = 1000000000;
        int ans = 0;
        ArrayList<Integer> list = new ArrayList<>();
        for (int i = 0; i < arr.length; i++) {
            int sum = 0;
            for (int j = 0; j < arr.length; j++) {
                sum += Math.abs(arr[j]-arr[i]);
            }
            if(sum < min){
                min = sum;
                ans = arr[i];
            }
        }

        System.out.println(ans);

        bw.flush();
        bw.close();
        br.close();
    }

}

