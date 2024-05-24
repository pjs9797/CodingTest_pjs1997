class Solution {
    public static int solution(int[] bandage, int health, int[][] attacks) {
        int answer = 0;
        int cnt = 0;
        int t = bandage[0];
        int x = bandage[1];
        int y = bandage[2];
        int maxHealth = health;
        int index = 0;
        int end = attacks[attacks.length-1][0];

        for (int i = 1; i <= end; i++) {
            cnt += 1;

            if (i == attacks[index][0]){
                health -= attacks[index][1];
                index += 1;
                cnt = 0;
            }
            else {
                if (health + x <= maxHealth) {
                    health += x;
                } else {
                    health = maxHealth;
                }
                if (cnt == t) {
                    if (health + y <= maxHealth) {
                        health += y;
                    } else {
                        health = maxHealth;
                    }
                    cnt = 0;
                }
            }
            System.out.println(i+" "+health);
            if (health <= 0){
                answer = -1;
                break;
            }

            
        }
        if(answer != -1){
            answer = health;
        }

        return answer;
    }
}