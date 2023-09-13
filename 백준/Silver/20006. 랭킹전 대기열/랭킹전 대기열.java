import org.w3c.dom.Node;

import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static class Node{
        int level;
        String name;
        public Node(int level,String name){
            this.level = level;
            this.name = name;
        }
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] A = br.readLine().split(" ");
        int p = Integer.parseInt(A[0]);
        int m = Integer.parseInt(A[1]);
        ArrayList<ArrayList<Node>>list = new ArrayList<>();
        for (int i = 0; i < p; i++) {
            String [] a = br.readLine().split(" ");
            Node node = new Node(Integer.parseInt(a[0]),a[1]);
            if(list.isEmpty()){
                ArrayList<Node> room = new ArrayList<>();
                room.add(node);
                list.add(room);
            }
            else {
                boolean aa = false;
                for (int j = 0; j < list.size(); j++) {
                    aa = false;
                    if(list.get(j).size() != m){
                        if(list.get(j).get(0).level +10 >= node.level && list.get(j).get(0).level -10 <= node.level){
                            list.get(j).add(node);
                            aa=true;
                            break;
                        }

                    }


                }
                if(!aa){
                    ArrayList<Node> room = new ArrayList<>();
                    room.add(node);
                    list.add(room);
                }
            }
        }

        for(ArrayList<Node> subList : list){
            Collections.sort(subList,(o1, o2) -> {
                return o1.name.compareTo(o2.name);
            });
        }

        for (int i = 0; i < list.size(); i++) {
            if(list.get(i).size() == m){
                System.out.println("Started!");
                for (int j = 0; j < list.get(i).size(); j++) {
                    System.out.println(list.get(i).get(j).level +" "+list.get(i).get(j).name);

                }
            }
            else {
                System.out.println("Waiting!");
                for (int j = 0; j < list.get(i).size(); j++) {
                    System.out.println(list.get(i).get(j).level +" "+list.get(i).get(j).name);

                }
            }
        }


        bw.flush();
        bw.close();
        br.close();
    }

}

