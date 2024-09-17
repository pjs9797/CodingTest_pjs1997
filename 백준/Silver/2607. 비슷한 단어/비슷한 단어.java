import java.io.*;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int cnt = 0;
        int n = Integer.parseInt(br.readLine());
        String word = br.readLine();

        // 첫 번째 단어의 문자 빈도 맵 생성
        Map<Character, Integer> wordMap = new HashMap<>();
        for (int i = 0; i < word.length(); i++) {
            wordMap.put(word.charAt(i), wordMap.getOrDefault(word.charAt(i), 0) + 1);
        }

        // 나머지 단어들과 비교
        for (int i = 1; i < n; i++) {
            String nextWord = br.readLine();
            if (Math.abs(word.length() - nextWord.length()) > 1) {
                // 길이 차이가 1 이상이면 비슷한 단어가 될 수 없음
                continue;
            }

            // 비교할 단어의 문자 빈도 맵 생성
            Map<Character, Integer> nextWordMap = new HashMap<>();
            for (int j = 0; j < nextWord.length(); j++) {
                nextWordMap.put(nextWord.charAt(j), nextWordMap.getOrDefault(nextWord.charAt(j), 0) + 1);
            }

            // 두 단어의 문자 빈도 차이를 계산하여 비슷한지 판단
            if (isSimilar(wordMap, nextWordMap)) {
                cnt++;
            }
        }

        System.out.println(cnt);
        br.close();
    }

    // 두 단어의 빈도 차이를 계산하여 비슷한지 여부를 판단하는 함수
    public static boolean isSimilar(Map<Character, Integer> map1, Map<Character, Integer> map2) {
        int diffCount = 0;

        // map1에서 map2로 가면서 차이 계산
        Map<Character, Integer> tempMap = new HashMap<>(map1);
        for (Map.Entry<Character, Integer> entry : map2.entrySet()) {
            char key = entry.getKey();
            int value = entry.getValue();

            tempMap.put(key, tempMap.getOrDefault(key, 0) - value);
        }

        // 각 값들의 차이를 계산
        for (int count : tempMap.values()) {
            diffCount += Math.abs(count);
        }

        // 비슷한 단어의 조건: 차이가 최대 2 이하일 때
        return diffCount <= 2;
    }
}
