import java.io.*;
import java.util.*;
import java.math.*;

public class Main {
    public static ArrayList<Integer> list = new ArrayList<>();
    public static void check(int a, int b,int k, int[][] arr,boolean [] visited, int cnt, int N){
        int aa = a;
        int bb = b;
        if(cnt == N){
            int ans = 0;
            if(aa >= bb){
                ans = aa-bb;
            }
            else {
                ans = bb-aa;
            }
            list.add(ans);
            return;
        }
        for (int i = k; i < visited.length; i++) {
            if(!visited[i]){
                visited[i] = true;
                aa = arr[i][0] * aa;
                bb = arr[i][1] + bb;
                cnt += 1;
                check(aa,bb,k+1,arr,visited,cnt,N);
                cnt -= 1;
                aa = aa/arr[i][0];
                bb = bb-arr[i][1];
                visited[i] = false;
            }
        }
    }
    
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        int [][] arr = new int[N][2];
        for (int i = 0; i < N; i++) {
            String [] a = br.readLine().split(" ");
            arr[i][0] = Integer.parseInt(a[0]);
            arr[i][1] = Integer.parseInt(a[1]);
        }

        for (int i = 0; i < N; i++) {
            check(1,0,0,arr,new boolean[N],0,i+1);
        }

        Collections.sort(list);
//        for (int i = 0; i < list.size(); i++) {
//            System.out.print(list.get(i)+" ");
//        }
//        System.out.println();
        System.out.println(list.get(0));

        bw.flush();
        bw.close();
        br.close();
    }

}

