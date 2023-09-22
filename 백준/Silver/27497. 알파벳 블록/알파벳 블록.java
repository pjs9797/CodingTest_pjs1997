import org.w3c.dom.Node;

import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static class Node{
        int idx;
        String str;

        public Node(int idx,String str){
            this.idx = idx;
            this.str = str;
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

       int n = Integer.parseInt(br.readLine());
       Deque<Node> deque = new ArrayDeque<>();
        for (int i = 0; i < n; i++) {
            String AA = br.readLine();
            if(AA.equals("3")){
                if(!deque.isEmpty()) {
                    if (deque.peekFirst().idx > deque.peekLast().idx) {
                        deque.removeFirst();
                    } else {
                        deque.removeLast();
                    }
                }
            }
            else {
                String [] A = AA.split(" ");
                Node node = new Node(i,A[1]);
                if(Integer.parseInt(A[0]) == 1){
                    deque.addLast(node);
                }
                else if(Integer.parseInt(A[0]) == 2){
                    deque.addFirst(node);
                }
            }

        }

        StringBuilder sb = new StringBuilder();
        if(deque.isEmpty()){
            System.out.println(0);
        }
        else {
            while (!deque.isEmpty()) {
                sb.append(deque.removeFirst().str);
            }
            System.out.println(sb);
        }


        bw.flush();
        bw.close();
        br.close();
    }

}

