class Solution {
    public String solution(String phone_number) {
        String answer = "";
        String a = "";
        for (int i = 0; i < phone_number.length()-4; i++) {
            a += "*";
        }
        String b = phone_number.substring(phone_number.length()-4,phone_number.length());
        answer = a+b;
        return answer;
    }
}