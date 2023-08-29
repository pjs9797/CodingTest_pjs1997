import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        String [] key = br.readLine().split("");
        String [] pyeng = br.readLine().split("");
        int aa = pyeng.length/ key.length + 1;
        String [] key2 = new String[key.length];
        for (int i = 0; i < key.length; i++) {
            key2[i] = key[i];
        }
        Arrays.sort(key);
        String [][] arr = new String[key.length][aa];
        String [][] arr2 = new String[key.length][aa];
        for (int i = 0; i < key.length; i++) {
            arr[i][0] = key[i];
        }
        int cnt = 0;
        for (int i = 0; i < key.length; i++) {
            for (int j = 1; j < aa; j++) {
                arr[i][j] = pyeng[cnt];
                cnt++;
            }
        }

        

        boolean [] check = new boolean[key.length];
        for (int i = 0; i < key.length; i++) {
            for (int j = 0; j < key.length; j++) {
                if (key2[i].equals(arr[j][0])){
                    if(!check[j]){
                        check[j] = true;
                        for (int k = 0; k < aa; k++) {
                            arr2[i][k] = arr[j][k];
                        }
                        break;
                    }
                }
            }

        }

        StringBuilder ans = new StringBuilder();

        for (int i = 1; i < aa; i++) {
            for (int j = 0; j < key.length; j++) {
                ans.append(arr2[j][i]);
            }
        }

        System.out.println(ans);

        bw.flush();
        bw.close();
        br.close();
    }

}

