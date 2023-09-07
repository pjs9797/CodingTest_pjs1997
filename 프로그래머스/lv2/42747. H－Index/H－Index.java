import java.util.*;

class Solution {
    public int solution(int[] citations) {
        Arrays.sort(citations);

        int n = citations.length;
        int maxHIndex = 0;

        for (int i = 0; i < n; i++) {
            int h = n - i;
            if (citations[i] >= h) {
                maxHIndex = h;
                break;
            }
        }

        return maxHIndex;
    }
}
