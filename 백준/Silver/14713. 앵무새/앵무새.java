import org.w3c.dom.Node;

import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static class Node{
        String value;
        int idx;
        public Node(String value,int idx){
            this.value = value;
            this.idx = idx;
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        ArrayList<PriorityQueue<Node>>list = new ArrayList<>();
        int cnt = 0;
        for (int i = 0; i < N; i++) {
            String [] a = br.readLine().split(" ");
            PriorityQueue<Node> queue = new PriorityQueue<>((o1,o2)->{return o1.idx-o2.idx;});
            for (int j = 0; j < a.length; j++) {
                Node node = new Node(a[j],j);
                queue.add(node);
                cnt += 1;
            }
            list.add(queue);
        }
        String [] arr = br.readLine().split(" ");
        boolean [] check = new boolean[arr.length];
        
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < list.size(); j++) {
                PriorityQueue<Node> queue = list.get(j);
                while (!queue.isEmpty()){
                    if(!check[i] && arr[i].equals(queue.peek().value)){
                        queue.poll();
                        check[i] = true;
                    }
                    else {
                        break;
                    }
                }
            }
        }
        boolean z = true;
        if(cnt != arr.length){
            System.out.println("Impossible");
        }
        else {
            for (int i = 0; i < check.length; i++) {
                //System.out.print(check[i]+" ");
                if (!check[i]) {
                    z = false;
                }
            }
            if (z) {
                System.out.println("Possible");
            } else {
                System.out.println("Impossible");
            }
        }


        bw.flush();
        bw.close();
        br.close();
    }

}

