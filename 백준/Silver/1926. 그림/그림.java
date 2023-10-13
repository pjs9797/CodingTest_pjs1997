import java.io.*;
import java.security.KeyStore;
import java.util.*;

public class Main {
    public static int n;
    public static int m;
    public static int area;
    public static int cnt=0;
    public static int [][] arr;
    public static boolean [][] visited;
    public static void dfs(int x, int y){
        if(arr[x][y]==1){
            visited[x][y]=true;
            area++;
            if(x+1<n && arr[x+1][y]==1 && !visited[x+1][y]){
                dfs(x+1,y);
            }
            if(x-1>=0 && arr[x-1][y]==1 && !visited[x-1][y]){
                dfs(x-1,y);
            }
            if(y+1<m && arr[x][y+1]==1 && !visited[x][y+1]){
                dfs(x,y+1);
            }
            if(y-1>=0 && arr[x][y-1]==1 && !visited[x][y-1]){
                dfs(x,y-1);
            }
        }
    }
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
        String [] A = br.readLine().split(" ");
        n = Integer.parseInt(A[0]);
        m = Integer.parseInt(A[1]);
        arr = new int[n][m];
        visited = new boolean[n][m];
        ArrayList<Integer>list = new ArrayList<>();
        for (int i = 0; i < n; i++) {
            String [] B = br.readLine().split(" ");
            for (int j = 0; j < m; j++) {
                arr[i][j]= Integer.parseInt(B[j]);
            }
        }
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if(!visited[i][j]){
                    area=0;
                    dfs(i,j);
                    if(area!=0) {
                        list.add(area);
                        cnt++;
                    }
                }
            }
        }
        Collections.sort(list);
        System.out.println(cnt);
        if(list.isEmpty()) {
            System.out.println(0);
        }
        else {
            System.out.println(list.get(list.size() - 1));
        }
//        System.out.println();
//        for (int i = 0; i < n; i++) {
//            for (int j = 0; j < m; j++) {
//                System.out.print(arr[i][j]+" ");
//            }
//            System.out.println();
//        }










        bw.flush();
        bw.close();
        br.close();
    }
}