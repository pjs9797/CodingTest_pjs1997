import java.util.*;

class Solution {
        public int solution(String str1, String str2) {
            int answer = 0;
            str1 = str1.toLowerCase();
             str2 = str2.toLowerCase();
            Map<String,Integer> map1 = toMap(str1);
            Map<String,Integer> map2 = toMap(str2);

            double cnt1 = gyo(map1,map2);
            double cnt2 = hap(map1,map2);
            if(cnt2 == 0){
                answer = 65536;
            }
            else{
                answer = (int) ((cnt1/cnt2)*65536);
            }
            return answer;
        }

        public Map<String,Integer> toMap(String str) {
            Map<String,Integer> map = new HashMap<>();
            for(int i=0; i< str.length()-1; i++){
                if(Character.isLetter(str.charAt(i)) && Character.isLetter(str.charAt(i+1))){
                    String aa = String.valueOf(str.charAt(i)) + String.valueOf(str.charAt(i + 1));
                    if(map.containsKey(aa)){
                        map.put(aa,map.get(aa)+1);
                    }
                    else{
                        map.put(aa,1);
                    }
                }
            }
            return map;
        }

        public double gyo(Map<String,Integer> map1, Map<String,Integer> map2) {
            double cnt = 0;
            for(Map.Entry<String,Integer> entry1: map1.entrySet()){
                String key1 = entry1.getKey();
                int value1 = entry1.getValue();
                for(Map.Entry<String,Integer> entry2: map2.entrySet()){
                    String key2 = entry2.getKey();
                    int value2 = entry2.getValue();
                    if(key1.equals(key2)){
                        cnt += Math.min(value1,value2);
                    }
                }
            }
            return cnt;
        }

        public double hap(Map<String,Integer> map1, Map<String,Integer> map2) {
            Map<String,Integer> map = new HashMap<>(map1);
            for(Map.Entry<String,Integer> entry: map2.entrySet()){
                String key = entry.getKey();
                int value = entry.getValue();
                if(map.containsKey(key)){
                    map.put(key,Math.max(value,map.get(key)));
                }
                else{
                    map.put(key,value);
                }
            }
            double cnt = 0;
            for(Map.Entry<String,Integer> entry: map.entrySet()){
                int value = entry.getValue();
                cnt += value;
            }
            return cnt;
        }
    }