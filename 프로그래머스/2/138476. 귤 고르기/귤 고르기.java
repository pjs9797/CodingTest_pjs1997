import java.io.*;
import java.util.*;
class Solution {
        public int solution(int k, int[] tangerine) {
            int answer = 0;
            int z=k;
            Map<Integer,Integer> map = new HashMap<>();
            for (int i = 0; i < tangerine.length; i++) {
                if(map.containsKey(tangerine[i])){
                    map.put(tangerine[i],map.get(tangerine[i])+1);
                }
                else{
                    map.put(tangerine[i], 1);
                }
            }
            List<Map.Entry<Integer,Integer>> entries = new ArrayList<>(map.entrySet());
            entries.sort((a,b)->{
                return b.getValue().compareTo(a.getValue());
            });

            for (Map.Entry<Integer,Integer> entry : entries){
                z-=entry.getValue();
                answer += 1;
                if(z<=0){
                    break;
                }
            }

            return answer;
        }
    }