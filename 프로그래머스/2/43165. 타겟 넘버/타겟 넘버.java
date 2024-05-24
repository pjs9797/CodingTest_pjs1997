class Solution {
    public static int solution(int[] numbers, int target) {
        int answer = 0;
        dfs(numbers,target,numbers[0],0);
        dfs(numbers,target,-numbers[0],0);
        return ans;
    }

    static int ans = 0;
    public static void dfs(int [] numbers, int target, int sum, int cnt){
        if (cnt == numbers.length-1){
            if (sum == target){
                ans += 1;
            }
            return;
        }
        dfs(numbers,target,numbers[cnt+1]+sum,cnt+1);
        dfs(numbers,target,-numbers[cnt+1]+sum,cnt+1);
    }
}