import java.util.*;

class Solution {
    public int[] solution(int[] numbers) {
        int [] answer = new int[numbers.length];
        
        for(int i = 0 ; i <numbers.length;i++){
            answer[i] = -1;
        }
        
        Stack<Integer>stack = new Stack<>();
        if(numbers.length == 1){
            answer[0] = -1;
        }
        else{
            stack.add(0);
            for(int i = 1 ; i < numbers.length;i++){
                if(numbers[stack.peek()] < numbers[i]){
                    
                    while(!stack.isEmpty() && numbers[stack.peek()] < numbers[i]){
                        int a = stack.pop();
                        answer[a] = numbers[i];
                    }
                    stack.add(i);
                }
                else{
                    stack.add(i);
                }
            }
        }
        
        
        return answer;
    }
}