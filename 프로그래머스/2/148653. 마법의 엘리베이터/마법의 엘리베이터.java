class Solution {
    public int solution(int storey) {
        int answer = 0;
        String str = String.valueOf(storey);
        int [] arr = new int[str.length() + 1]; // 한 자릿수 더 크게 만들어서 올림 처리에 대비

        // 배열에 각 자리수를 역순으로 넣기
        for (int i = 0; i < str.length(); i++) {
            arr[i] = str.charAt(str.length() - 1 - i) - '0';
        }

        // 각 자릿수를 처리
        for (int i = 0; i < arr.length - 1; i++) {
            if (arr[i] > 5) {
                // 5보다 크면 10까지 채우고, 다음 자리 올림
                answer += 10 - arr[i];
                arr[i + 1] += 1;
            } else if (arr[i] == 5) {
                // 5인 경우, 다음 자리수에 따라 처리
                if (arr[i + 1] >= 5) {
                    // 다음 자리가 5 이상이면 올림
                    answer += 10 - arr[i];
                    arr[i + 1] += 1;
                } else {
                    // 아니면 그냥 더함
                    answer += arr[i];
                }
            } else {
                // 5보다 작으면 그대로 더함
                answer += arr[i];
            }
        }

        // 마지막 자릿수 처리 (최상위 자리에서 올림 발생 가능)
        if (arr[arr.length - 1] >= 5) {
            answer += 10 - arr[arr.length - 1];
        } else {
            answer += arr[arr.length - 1];
        }

        return answer;
    }
}
