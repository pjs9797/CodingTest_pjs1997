import java.util.*;
class Solution {
    public static String solution(String s, String skip, int index) {
        String answer = "";
        HashSet<Integer> set = new HashSet<>();
        for (int i = 0; i < skip.length(); i++) {
            set.add((int) skip.charAt(i));
        }

        for (int i = 0; i < s.length(); i++) {
            int start = (int) s.charAt(i);
            for (int j = 1; j <= index; j++) {
                int a = start+1;
                if(a> 122){
                    a-=26;
                }
                if (set.contains(a)) {
                    j--;
                }
                start = a;
            }
            if(start>122){
                start-=26;
            }
            answer += String.valueOf((char) start);
        }

        return answer;
    }
}