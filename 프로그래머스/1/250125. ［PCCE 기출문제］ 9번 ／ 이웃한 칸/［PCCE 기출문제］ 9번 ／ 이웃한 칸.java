class Solution {
    public static int solution(String[][] board, int h, int w) {
        int answer = 0;

        int [] dx = {1,-1,0,0};
        int [] dy = {0,0,1,-1};

        String color = board[h][w];

        for (int i = 0; i < 4; i++) {
            int ax = h+dx[i];
            int ay = w+dy[i];
            if(ax >=0 && ay>=0 && ax<board.length && ay<board[0].length){
                if(board[ax][ay].equals(color)) {
                    answer += 1;
                }
            }
        }

        return answer;
    }
}