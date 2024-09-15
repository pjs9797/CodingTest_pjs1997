import java.util.*;
class Solution {
        public int solution(String[] want, int[] number, String[] discount) {
            int answer = 0;
            HashMap<String,Integer> map = new HashMap<>();
            for (int i = 0; i < want.length; i++) {
                map.put(want[i],number[i]);
            }
            int l = discount.length - 10;
            for (int i = 0; i <= l; i++) {
                HashMap<String,Integer> map2 = new HashMap<>();
                for (int j = i; j < 10+i; j++) {
                    if (map2.containsKey(discount[j])){
                        map2.put(discount[j],map2.get(discount[j])+1);
                    }
                    else {
                        map2.put(discount[j],1);
                    }
                }
                if (map2.equals(map)){
                    answer += 1;
                }
            }
            return answer;
        }
    }