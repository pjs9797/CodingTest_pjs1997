import java.io.*;
import java.util.*;

class Solution {
    public int solution(int k, int[] tangerine) {
        int answer = 0;
        int[] cntArray = {tangerine.length -k };
        int [] ans = {0};
        HashMap<Integer,Integer> map = new HashMap<>();
        
        for(int i = 0; i<tangerine.length;i++){
            if(map.containsKey(tangerine[i])){
                map.put(tangerine[i],map.get(tangerine[i])+1);
            }
            else{
                map.put(tangerine[i],1);
            }
        }
        
        
        map.entrySet()
            .stream()
            .sorted(Map.Entry.comparingByValue())
            .forEach(entry ->{
                if(cntArray[0] > 0){
                    cntArray[0] -= entry.getValue();
                    if(cntArray[0] < 0){
                        ans[0] += 1;
                    }
                }
                else{
                    ans[0] += 1;
                }
                //System.out.println(entry.getKey()+" "+entry.getValue());
            });
        
        answer = ans[0];
        
        return answer;
    }
}