import java.util.*;
import java.io.*;

class Solution {
    public int solution(int[] scoville, int K) {
        int ans = 0;
        int cnt = 0;
        PriorityQueue<Integer> pq = new PriorityQueue<>();
        for(int i=0;i<scoville.length;i++){
            pq.add(scoville[i]);
        }
        while(K > pq.peek()){
            if(pq.size() < 2){
                cnt = -1;
                break;
            }
            ans = pq.poll()+(pq.poll()*2);
          
            pq.add(ans);
            cnt += 1;
        }
        
        
        return cnt;
    }
}