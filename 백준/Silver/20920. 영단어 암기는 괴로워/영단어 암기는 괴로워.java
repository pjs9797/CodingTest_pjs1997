import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String [] A = br.readLine().split(" ");
        int n = Integer.parseInt(A[0]);
        int m = Integer.parseInt(A[1]);
        Map<String,Integer> map = new HashMap<>();

        for (int i = 0; i < n; i++) {
            String a = br.readLine();
            if (a.length() >= m){
                if (map.containsKey(a)){
                    map.put(a,map.get(a)+1);
                }
                else{
                    map.put(a,1);
                }
            }
        }

        ArrayList<Map.Entry<String,Integer>> list = new ArrayList<>();
        for (Map.Entry<String,Integer> entry: map.entrySet()){
            String key = entry.getKey();
            String value = String.valueOf(entry.getValue());

            list.add(entry);
        }
        
        Collections.sort(list, (o1,o2)->{
            Map.Entry<String,Integer> entry1 = o1;
            Map.Entry<String,Integer> entry2 = o2;
            if (o1.getValue() == o2.getValue()){
                if (o1.getKey().length() == o2.getKey().length()){
                    return o1.getKey().compareTo(o2.getKey());
                }
                else {
                    return o2.getKey().length() - o1.getKey().length();
                }
            }
            else{
                return o2.getValue() - o1.getValue();
            }
        });

        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Integer> entry : list) {
            sb.append(entry.getKey()).append("\n");
        }

        System.out.print(sb);

        br.close();
    }

}
