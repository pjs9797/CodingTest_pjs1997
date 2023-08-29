import java.io.*;
import java.util.*;
import java.math.*;

public class Main {
    public static String check(int index,int first,ArrayList<Integer> list,String [] arr){
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < index; i++) {
            sb.append(arr[i]);
        }

        for (int i = 0; i < list.size(); i++) {
            if(list.get(i) > first){
                sb.append(list.get(i));
                list.remove(i);
                break;
            }
        }



        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i));
        }



        return sb.toString();
    }

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());

        for (int i = 0; i < N; i++) {
            String [] num = br.readLine().split("");
            int max = -1;
            ArrayList<Integer> list = new ArrayList<>();
            int first = 0;
            String ans = "";
            for (int j = num.length-1; j >= 0; j--) {
                if(Integer.parseInt(num[j]) >= max){
                    if(j == 0){
                        System.out.println("BIGGEST");
                        break;
                    }
                    max = Integer.parseInt(num[j]);
                    list.add(Integer.parseInt(num[j]));
                }
                else {


                    list.add(Integer.parseInt(num[j]));
                    Collections.sort(list);
                    first = Integer.parseInt(num[j]);
                    ans = check(j, first, list, num);
                    System.out.println(ans);
                    break;

                }
            }
        }

        bw.flush();
        bw.close();
        br.close();
    }

}

