import java.util.*;
class Solution {
    public boolean solution(String[] phone_book) {
        Arrays.sort(phone_book); // 전화번호 정렬

        for (int i = 1; i < phone_book.length; i++) {
            if (phone_book[i].startsWith(phone_book[i-1])) {
                return false; // 접두어 관계가 있으면 false 반환
            }
        }
        
        

        return true; // 접두어 관계가 없으면 true 반환
    }
}