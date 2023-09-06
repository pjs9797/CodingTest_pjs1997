import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        PriorityQueue<Integer> pq = new PriorityQueue<>(Collections.reverseOrder());
        int cnt = 0;
        int ans = 0;
        String [] A = br.readLine().split(" ");
        for (int i = 0; i < N; i++) {
            int n = Integer.parseInt(A[i]);
            pq.add(n);
            cnt += n;
        }
        while (!pq.isEmpty()){
            if(pq.size() > 1){
                int a = pq.poll()-1;
                int b = pq.poll()-1;
                if (a == 0 && b == 0){

                }
                else if(a == 0 || b == 0){
                    if(a == 0){
                        pq.add(b);
                    }
                    else if(b == 0){
                        pq.add(a);
                    }
                }
                else if(a != 0 && b != 0){
                    pq.add(a);
                    pq.add(b);
                }
                ans += 1;
                if(ans > 1440){
                    ans = -1;
                    break;
                }
            }
            else {
                int a = pq.poll()-1;
                if(a == 0){

                }
                else {
                    pq.add(a);
                }
                ans += 1;
                if(ans > 1440){
                    ans = -1;
                    break;
                }
            }
        }
        System.out.println(ans);


        bw.flush();
        bw.close();
        br.close();
    }

}

