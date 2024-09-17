import java.util.*;
class Solution {
        public int solution(int[] queue1, int[] queue2) {
            int answer = 0;
            Queue<Integer> qq1 = new LinkedList<>();
            Queue<Integer> qq2 = new LinkedList<>();
            long sum1 = 0;
            long sum2 = 0;
            for (int i = 0; i < queue1.length; i++) {
                qq1.add(queue1[i]);
                sum1 += queue1[i];
            }
            for (int i = 0; i < queue2.length; i++) {
                qq2.add(queue2[i]);
                sum2 += queue2[i];
            }
            long target = (sum1+sum2)/2;
            if ((sum1 + sum2) % 2 == 1) {
    answer = -1;
}
            else {
                while (sum1 != target) {
                    if(answer > (queue1.length+queue2.length)*2){
                        answer = -1;
                        break;
                    }
                    if (sum1 > target) {
                        // if (qq1.isEmpty()){
                        //     answer = -1;
                        //     break;
                        // }
                        int a = qq1.poll();
                        qq2.add(a);
                        sum1 -= a;
                        answer += 1;
                    }
                    else if (sum1 < target){
                        // if (qq2.isEmpty()){
                        //     answer = -1;
                        //     break;
                        // }
                        int a = qq2.poll();
                        qq1.add(a);
                        sum1 += a;
                        answer += 1;
                    }
                    else {
                        break;
                    }
                }
            }

            return answer;
        }
    }