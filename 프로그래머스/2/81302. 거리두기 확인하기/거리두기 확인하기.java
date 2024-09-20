class Solution {
    static int[] ax = {-1,1,0,0};
    static int[] ay = {0,0,1,-1};
    
    public int[] solution(String[][] places) {
        int[] answer = new int[places.length];
        
        for(int i=0;i<places.length;i++){
            String [][] arr = new String[5][5];
            String [] A = places[i];
            for(int j=0;j<5;j++){
                String [] B = A[j].split("");
                for(int k=0;k<5;k++){
                    arr[j][k] = B[k];
                }
            }
            int ans = 1;
            Loop: for(int j=0;j<5;j++){
                for(int k=0;k<5;k++){
                    if(arr[j][k].equals("P")){
                        ans = check(arr,j,k);
                        if(ans == 0){
                            break Loop;
                        }
                    }
                }
            }
            answer[i] = ans;
            
        }
        return answer;
    }
    
    
    public static int check(String[][] arr, int x,int y){
        int ans = 1;
        for(int i=0;i<4;i++){
            int dx = x+ax[i];
            int dy = y+ay[i];
            if(dx>=0 && dy>=0 && dx<5 && dy<5){
                if(arr[dx][dy].equals("P")){
                    ans = 0;
                    return ans;
                }
                else if(arr[dx][dy].equals("O")){
                    ans = doubleCheck(arr,dx,dy,x,y);
                    if(ans == 0){
                        return ans;
                    }
                }
            }
        }
        return ans;
    }
    
    public static int doubleCheck(String [][] arr, int x, int y, int originX, int originY){
        int ans = 1;
        for(int i=0;i<4;i++){
            int dx = x+ax[i];
            int dy = y+ay[i];
            if(dx>=0 && dy>=0 && dx<5 && dy<5){
                if((dx!=originX || dy!=originY) && arr[dx][dy].equals("P")){
                    ans = 0;
                    return ans;
                }
                
            }
        }
        return ans;
    }
}