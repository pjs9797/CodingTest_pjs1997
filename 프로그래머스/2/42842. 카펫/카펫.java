class Solution {
    public int[] solution(int brown, int yellow) {
        int[] answer = new int[2];
        int leng = brown+yellow;
        for(int i=3;i<leng/2;i++){
            if(leng%i==0){
                if(i>leng/i){
                    break;
                }
                else{
                    if((leng/i)*2+i*2-4 ==brown){
                        answer[0] = leng / i;
                        answer[1] = i;

                    }
                }
            }
        }
        return answer;
    }
}