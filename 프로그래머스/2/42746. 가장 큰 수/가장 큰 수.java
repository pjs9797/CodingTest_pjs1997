import java.util.*;
class Solution {
    public String solution(int[] numbers) {
        StringBuilder answer = new StringBuilder();

        String [] arr = new String[numbers.length];

        for (int i = 0; i < arr.length; i++) {
            arr[i] = String.valueOf(numbers[i]);
        }

        Arrays.sort(arr, (s2,s1) ->{
            return (s1+s2).compareTo(s2+s1);
        });

        for (int i = 0; i < arr.length; i++) {
            answer.append(arr[i]);
        }
        String ans = answer.toString();
        if (answer.charAt(0) == '0'){
            ans = "0";
        }

        return ans;
    }
}