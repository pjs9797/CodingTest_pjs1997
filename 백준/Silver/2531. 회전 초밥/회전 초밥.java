import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] A = br.readLine().split(" ");

        int N = Integer.parseInt(A[0]);
        int d = Integer.parseInt(A[1]);
        int k = Integer.parseInt(A[2]);
        int c = Integer.parseInt(A[3]);

        int [] arr = new int[N];
        ArrayList<Integer> list = new ArrayList<>();

        for (int i = 0; i < N; i++) {
            int num = Integer.parseInt(br.readLine());
            arr[i] = num;
        }

        for (int i = 0; i < N; i++) {
            Set<Integer> set = new HashSet<>();
            set.add(c);
            for (int j = 0; j < k; j++) {
                int num = 0;
                if(i+j >= N){
                    num = i+j-N;
                }
                else {
                    num = i+j;
                }
                set.add(arr[num]);
            }
            list.add(set.size());
        }
        int max = 0;
        for (int i = 0; i < list.size(); i++) {
            if(list.get(i) > max){
                max = list.get(i);
            }
        }
        System.out.println(max);

        bw.flush();
        bw.close();
        br.close();
    }
}
