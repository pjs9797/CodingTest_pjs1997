import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] A = br.readLine().split(" ");
        int N = Integer.parseInt(A[0]);
        int M = Integer.parseInt(A[1]);
        //HashMap<String,String> map = new HashMap<>();
        TreeMap<String,String> map = new TreeMap<>();
        for (int i = 0; i < N; i++) {
            String [] AA = br.readLine().split(" ");
            map.put(AA[0],AA[1]);
        }
        for (int i = 0; i < M; i++) {
            String a = br.readLine();
            bw.write(map.get(a));
            bw.newLine();
        }

        bw.flush();
        bw.close();
        br.close();
    }

}

