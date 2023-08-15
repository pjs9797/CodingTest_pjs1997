import java.io.*;
import java.math.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int n = Integer.parseInt(br.readLine());

        for (int i = 0; i < n; i++) {
            String [] a = br.readLine().split(" ");
            int [] arr = new int[a.length-1];
            for (int j = 0; j < arr.length; j++) {
                arr[j] = Integer.parseInt(a[j+1]);
            }

            Arrays.sort(arr);
//            for (int j = 0; j < arr.length; j++) {
//                System.out.println(arr[j]);
//            }

            int max = arr[arr.length-1];
            int min = arr[0];
            int z = 0;

            for (int j = 1; j < arr.length; j++) {
                if (arr[j] - arr[j-1] > z){
                    z = arr[j] - arr[j-1];
                }
            }

            System.out.println("Class "+(i+1));
            System.out.println("Max "+max+", Min "+min+", Largest gap "+z);

        }


        bw.flush();
        bw.close();
        br.close();
    }
}

