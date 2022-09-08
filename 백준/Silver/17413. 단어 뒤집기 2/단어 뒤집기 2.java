import java.io.*;
import java.lang.reflect.Array;
import java.util.*;

class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        String [] A = br.readLine().split("");
        Stack<String>stack1= new Stack<>();
        Stack<String>stack2= new Stack<>();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < A.length; i++) {
            if(A[i].equals("<")){
                if(!stack1.isEmpty()){
                    while (!stack1.isEmpty()) {
                        sb.append(stack1.pop());
                    }
                }
                while (!A[i].equals(">")) {
                    sb.append(A[i]);
                    i++;
                }
                sb.append(">");
            }
            else {
                if (!A[i].equals(" ")) {
                    stack1.push(A[i]);
                }
                if (!stack1.isEmpty() && A[i].equals("<")) {
                    while (!stack1.isEmpty()) {
                        sb.append(stack1.pop());
                    }
                }
                if (i == A.length - 1 || A[i].equals(" ")) {
                    while (!stack1.isEmpty()) {
                        sb.append(stack1.pop());
                    }
                    sb.append(" ");
                }
            }
        }
        System.out.println(sb);
        bw.flush();
        bw.close();
        br.close();
    }

}