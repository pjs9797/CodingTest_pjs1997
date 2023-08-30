import java.io.*;
import java.util.*;
import java.math.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

        int N = Integer.parseInt(br.readLine());
        Set<Integer> set = new HashSet<>();
        ArrayList<String> ans = new ArrayList<>();
        for (int i = 0; i < N; i++) {
            String str = br.readLine();
            String [] a = str.split(" ");
            boolean check = false;
            int leng = 0;
            for (int j = 0; j < a.length; j++) {
                int num = (int) a[j].charAt(0);
                if(j != 0) {
                    leng += a[j-1].length() + 1;
                }
                if(!set.contains(num)){
                    set.add(num);
                    if(num >= 97){
                        set.add(num-32);
                    }
                    else {
                        set.add(num + 32);
                    }

                    StringBuilder sb = new StringBuilder();

                    sb.append(str);
                    sb.insert(leng,"[");
                    sb.insert(leng+2,"]");
                    //System.out.println(sb);
                    ans.add(sb.toString());
                    check = true;
                    break;
                }
            }
            if(!check) {
                leng = -1;
                Loop: for (int j = 0; j < a.length; j++) {
                    if(j != 0){
                        leng += 1;
                    }
                    for (int k = 0; k < a[j].length(); k++) {
                        int num = (int) a[j].charAt(k);
                        leng += 1;
                        if (!set.contains(num)) {
                            set.add(num);
                            if(num >= 97){
                                set.add(num-32);
                            }
                            else {
                                set.add(num + 32);
                            }

                            StringBuilder sb = new StringBuilder();

                            sb.append(str);
                            sb.insert(leng,"[");
                            sb.insert(leng+2,"]");
                            //System.out.println(sb);
                            ans.add(sb.toString());
                            check = true;
                            break Loop;
                        }
                    }
                }
            }
            if(!check) {
                //System.out.println(str);
                ans.add(str);
            }
        }
        for (int i = 0; i < ans.size(); i++) {
            System.out.println(ans.get(i));
        }




        bw.flush();
        bw.close();
        br.close();
    }

}

