import java.io.*;
import java.util.*;

public class Main {
    public static boolean [][] visited;
    public static int cnt;
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));


        int [][] arr = new int[5][5];
        visited = new boolean[5][5];
        cnt = 0;

        Loop:for (int i = 0; i < 10; i++) {
            String [] a = br.readLine().split(" ");
            if(i <= 4) {
                for (int j = 0; j < 5; j++) {
                    arr[i][j] = Integer.parseInt(a[j]);
                }
            }
            else {
                for (int j = 0; j < 5; j++) {
                    for (int n = 0; n < 5; n++) {
                        for (int m = 0; m < 5; m++) {
                            if(arr[n][m] == Integer.parseInt(a[j])){
                                visited[n][m] = true;
                                if(check()){
                                    System.out.println((i-5)*5+j+1);
                                    //System.out.println(i+" "+j);
                                    //System.out.println(a[j]);
                                    break Loop;
                                }
                            }
                        }
                    }
                }
            }
        }


        bw.flush();
        bw.close();
        br.close();
    }

    public static boolean check(){
        boolean correct = false;
        cnt = 0;
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                if(visited[i][j]){
                    correct = true;

                }
                else {
                    correct = false;
                    break;
                }
            }

            if (correct){
                cnt +=1;
            }
            if (cnt == 3){
                return true;
            }
        }

        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                if(visited[j][i]){
                    correct = true;

                }
                else {
                    correct = false;
                    break;
                }
            }

            if (correct){
                cnt +=1;
            }
            if (cnt == 3){
                return true;
            }
        }

        if (visited[0][0]&&visited[1][1]&&visited[2][2]&&visited[3][3]&&visited[4][4]){
            cnt+=1;
            if (cnt == 3){
                return true;
            }
        }
        if(visited[4][0]&&visited[3][1]&&visited[2][2]&&visited[1][3]&&visited[0][4]){
            cnt+=1;
            if (cnt == 3){
                return true;
            }
        }
        return false;
    }

}

