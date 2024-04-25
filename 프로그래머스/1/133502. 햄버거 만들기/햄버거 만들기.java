import java.util.*;

class Solution {
    public int solution(int[] ingredient) {
            int answer = 0;
            Stack<Integer> stack = new Stack<>();
            for (int i = 0; i < ingredient.length; i++) {
                stack.add(ingredient[i]);

                if(stack.size() >= 4){
                    int a = stack.pop();
                    int b = stack.pop();
                    int c = stack.pop();
                    int d = stack.pop();

                    if (d == 1 && c == 2 & b == 3 && a == 1){
                        answer+=1;
                    }
                    else {
                        stack.add(d);
                        stack.add(c);
                        stack.add(b);
                        stack.add(a);
                    }
                }
            }
            return answer;
        }
}