import java.util.*;

class Solution {
    public long solution(int n, int[] works) {
        long answer = 0;
        int cnt = n;
        PriorityQueue<Long> pq = new PriorityQueue<>(Collections.reverseOrder());
        
        for(int i=0;i<works.length;i++){
            long a = (long) works[i];
            pq.add(a);
        }
        
        while(cnt>0){
            long time = pq.poll();
            time -= 1;
            pq.add(time);
            cnt -= 1;
        }
        if(pq.peek() <= 0){
            answer = 0;
        }
        else{
            while(!pq.isEmpty()){
                answer += Math.pow(pq.poll(),2);
            }
        }
        return answer;
    }
}