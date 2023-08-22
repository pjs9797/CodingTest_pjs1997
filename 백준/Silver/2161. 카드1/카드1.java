import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        Queue<Integer> queue = new LinkedList<>();
        for (int i = 1; i <= N; i++) {
            queue.add(i);
        }

        ArrayList<Integer> list = new ArrayList<>();

        while (!queue.isEmpty()){
            list.add(queue.poll());
            if(queue.isEmpty()){
                break;
            }
            queue.add(queue.poll());
        }

        for (int i = 0; i < list.size() - 1; i++) {
            bw.write(list.get(i)+ " ");
        }
        bw.write(list.get(list.size() - 1) + "\n");

        bw.flush();
        bw.close();
        br.close();
    }
}
