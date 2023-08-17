import java.io.*;
import java.util.*;

public class Main {
    static class Assign{
        int point;
        int period;
        public Assign(int point, int period){
            this.point = point;
            this.period = period;
        }

    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        Stack<Assign> stack = new Stack<>();
        int ans = 0;
        for (int i = 0; i < N; i++) {
            String [] a = br.readLine().split(" ");
            if(a[0].equals("1")){
                stack.push(new Assign(Integer.parseInt(a[1]),Integer.parseInt(a[2])));
                Assign input = stack.pop();
                input.period -= 1;
                if(input.period == 0){
                    ans += input.point;
                }
                else {
                    stack.push(input);
                }
            }
            else {
                if(!stack.empty()){
                    Assign input = stack.pop();
                    input.period -= 1;
                    if(input.period == 0){
                        ans += input.point;
                    }
                    else {
                        stack.push(input);
                    }
                }
            }
        }

        System.out.println(ans);



        bw.flush();
        bw.close();
        br.close();
    }

}

