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

        Deque<Integer> doDeque = new ArrayDeque<>();
        Deque<Integer> doGroundDeque = new ArrayDeque<>();
        Deque<Integer> suDeque = new ArrayDeque<>();
        Deque<Integer> suGroundDeque = new ArrayDeque<>();

        for (int i = 0; i < N; i++) {
            String [] B = br.readLine().split(" ");
            doDeque.addFirst(Integer.parseInt(B[0]));
            suDeque.addFirst(Integer.parseInt(B[1]));
        }
        boolean check = false;
        boolean order = true;
        for (int i = 0; i < M; i++) {
            if(order) {
                doGroundDeque.addFirst(doDeque.removeFirst());
                order = false;
            }
            else {
                suGroundDeque.addFirst(suDeque.removeFirst());
                order = true;
            }

            if(doDeque.isEmpty()){
                System.out.println("su");
                check = true;
                break;
            }
            else if (suDeque.isEmpty()){
                System.out.println("do");
                check = true;
                break;
            }

            if((!doGroundDeque.isEmpty() && doGroundDeque.peekFirst() == 5) || (!suGroundDeque.isEmpty() && suGroundDeque.peekFirst() == 5)){
                int a = suGroundDeque.size();
                int b = doGroundDeque.size();
                for (int j = 0; j < a; j++) {
                    doDeque.addLast(suGroundDeque.removeLast());
                }
                for (int j = 0; j < b; j++) {
                    doDeque.addLast(doGroundDeque.removeLast());
                }
            }
            else if(!doGroundDeque.isEmpty() && !suGroundDeque.isEmpty() && doGroundDeque.peekFirst()+suGroundDeque.peekFirst() == 5){
                int a = suGroundDeque.size();
                int b = doGroundDeque.size();
                for (int j = 0; j < b; j++) {
                    suDeque.addLast(doGroundDeque.removeLast());
                }
                for (int j = 0; j < a; j++) {
                    suDeque.addLast(suGroundDeque.removeLast());
                }
            }

        }
        if(!check) {
            if (doDeque.size() == suDeque.size()) {
                System.out.println("dosu");
            }
            else if(doDeque.size() > suDeque.size()){
                System.out.println("do");
            }
            else {
                System.out.println("su");
            }
        }


        bw.flush();
        bw.close();
        br.close();
    }
}
