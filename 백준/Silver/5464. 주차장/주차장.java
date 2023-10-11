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
        int [] priceList = new int[N];
        int [] carList = new int[M];
        int [] parkingList = new int[N];
        int cnt = 0;
        for (int i = 0; i < N; i++) {
            priceList[i] = Integer.parseInt(br.readLine());
        }
        for (int i = 0; i < M; i++) {
            carList[i] = Integer.parseInt(br.readLine());
        }
        Queue<Integer> queue = new LinkedList<>();
        for (int i = 0; i < 2 * M; i++) {
            queue.add(Integer.parseInt(br.readLine()));
        }
        Queue<Integer> waitQueue = new LinkedList<>();
        while (!queue.isEmpty()){
            int num = queue.peek();
            if(num > 0){
                boolean a = false;
                for (int i = 0; i < parkingList.length; i++) {
                    if(parkingList[i] == 0) {
                        cnt += carList[num - 1] * priceList[i];
                        parkingList[i] = num;
                        queue.poll();
                        a= true;
                        break;
                    }
                }
                if(!a){
                    waitQueue.add(queue.poll());
                }

            }
            else {
                for (int i = 0; i < parkingList.length; i++) {
                    if(parkingList[i] == -num){
                        if(!waitQueue.isEmpty()){
                            int wait = waitQueue.poll();
                            cnt += carList[wait-1]*priceList[i];
                            parkingList[i] = wait;
                            queue.poll();
                        }
                        else {
                            queue.poll();
                            parkingList[i] = 0;
                        }

                        break;
                    }
                }
            }
        }
        System.out.println(cnt);

        bw.flush();
        bw.close();
        br.close();
    }

}

