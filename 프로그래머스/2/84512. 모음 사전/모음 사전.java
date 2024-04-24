import java.util.*;

class Solution {
        String [] arr = {"A","E","I","O","U"};
        ArrayList arrayList = new ArrayList<>();
        public int solution(String word) {
            int answer = 0;
           
            fun("");
            Collections.sort(arrayList);
            for (int i = 0; i < arrayList.size(); i++) {
                System.out.println(arrayList.get(i)+" "+word);
                if (arrayList.get(i).equals(word)){
                    answer = i+1;
                    break;
                }
            }
            return answer;
        }

        public void fun(String word){
            String a = word;
            if (word.length() == 5){
                return;
            }
            for (int i = 0; i < arr.length; i++) {
                String b = a+arr[i];
                arrayList.add(b);
                fun(b);
            }
        }
    }
