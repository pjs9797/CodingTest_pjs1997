class Solution {
    public int solution(String s) {
        int count = 0; // 분리된 문자열의 개수
        while (!s.isEmpty()) {
            char x = s.charAt(0); // 시작 문자
            int countX = 0; // x의 개수
            int countOther = 0; // x가 아닌 다른 문자의 개수
            int i = 0;
            while (i < s.length() && (countX == 0 || countX != countOther)) {
                if (s.charAt(i) == x) {
                    countX++;
                } else {
                    countOther++;
                }
                i++;
            }
            // 분리된 문자열을 제외하고 남은 부분 문자열
            s = s.substring(i);
            count++;
        }
        return count;
    }
}