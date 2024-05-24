import java.util.*;

class Solution {
    public int solution(int k, int[] tangerine) {
        int max = k;
        int answer = 0;
        HashMap<Integer,Integer> map = new HashMap<>();
        for (int i = 0; i < tangerine.length; i++) {
            if(map.containsKey(tangerine[i])){
                map.put(tangerine[i],map.get(tangerine[i])+1);
            }
            else{
                map.put(tangerine[i],1);
            }
        }
        List<Map.Entry<Integer,Integer>> list = new ArrayList<>(map.entrySet());

        Collections.sort(list,(b,a)->{
            return a.getValue()-b.getValue();
        });
        
        for (Map.Entry<Integer,Integer> entry: list){
            if(max-entry.getValue()<=0){
                answer += 1;
                break;
            }
            else {
                max -= entry.getValue();
                answer+=1;
            }
        }

        return answer;
    }
}