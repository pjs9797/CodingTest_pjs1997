class Solution {
    public String solution(String s) {
        StringBuilder sb = new StringBuilder();
        boolean isFirst = true; // 단어의 첫 문자인지 여부를 확인하는 플래그
        
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            
            if (c == ' ') {
                sb.append(c);
                isFirst = true; // 공백이 있으면 그 다음 문자는 새로운 단어의 첫 문자
            } else {
                if (isFirst) {
                    sb.append(Character.toUpperCase(c)); // 첫 문자는 대문자로
                    isFirst = false;
                } else {
                    sb.append(Character.toLowerCase(c)); // 나머지는 소문자로
                }
            }
        }
        
        return sb.toString();
    }
}