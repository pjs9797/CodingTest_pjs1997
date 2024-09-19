import java.util.*;

class Solution {
    public int[] solution(String[] operations) {
        int[] answer = new int[2];
        TreeMap<Integer,Integer> map = new TreeMap<>();
        for(int i = 0; i<operations.length;i++){
            String [] arr = operations[i].split(" ");
            String order = arr[0];
            int num = Integer.parseInt(arr[1]);
            
            if(order.equals("I")){
                map.put(num,0);
            }
            else{
                if(!map.isEmpty()){
                    if(num == 1){
                        map.remove(map.lastKey());
                    }
                    else{
                        map.remove(map.firstKey());
                    }
                }
            }
        }
        
        if(map.isEmpty()){
            answer[0] = 0;
            answer[1] = 0;
        }
        else{
            answer[0] = map.lastKey();
            answer[1] = map.firstKey();
        }
        
        return answer;
    }
}