import java.util.*;
class Solution {
    public static int[] solution(String[] id_list, String[] report, int k) {
        int[] answer = new int[id_list.length];

        HashMap<String,Integer> reportMap = new HashMap<>();
        HashMap<String,ArrayList<String>> map = new HashMap<>();
        HashSet<String> aaa = new HashSet<>();
        for (int i = 0; i < report.length; i++) {
            aaa.add(report[i]);
        }
        for (String rep: aaa) {
            String [] str = rep.split(" ");
            String a = str[0];
            String b = str[1];

            if (reportMap.containsKey(b)){
                reportMap.put(b,reportMap.get(b)+1);
            }
            else {
                reportMap.put(b,1);
            }

            if (map.containsKey(a)){
                map.get(a).add(b);
            }
            else{
                ArrayList<String> list = new ArrayList<>();
                list.add(b);
                map.put(a,list);
            }
        }
        HashSet<String> set = new HashSet<>();
        for (Map.Entry<String,Integer> entry: reportMap.entrySet()){
            if (entry.getValue() >= k){
                set.add(entry.getKey());
            }
        }

        for (int i = 0; i < id_list.length; i++) {
            int n = 0;
            if(map.containsKey(id_list[i])) {
                for (int j = 0; j < map.get(id_list[i]).size(); j++) {
                    if (set.contains(map.get(id_list[i]).get(j))) {
                        n += 1;
                    }
                }
                answer[i] = n;
            }
            else {
                answer[i] = 0;
            }
        }

        return answer;
    }
}