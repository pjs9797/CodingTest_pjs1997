class Solution {
    public String solution(String X, String Y) {
        String answer = "";

        int [] arr1 = new int[10];
        int [] arr2 = new int[10];
        int [] arr = new int[10];
        for (int i = 0; i < X.length(); i++) {
            arr1[Integer.parseInt(String.valueOf(X.charAt(i)))] += 1;
        }
        for (int i = 0; i < Y.length(); i++) {
            arr2[Integer.parseInt(String.valueOf(Y.charAt(i)))] += 1;
        }

        for (int i = 0; i < 10; i++) {
            if (arr1[i] != 0 && arr2[i] != 0){
                arr[i] = Math.min(arr1[i],arr2[i]);
            }
        }
        if (arr[0]+arr[1]+arr[2]+arr[3]+arr[4]+arr[5]+arr[6]+arr[7]+arr[8]+arr[9] == 0){
            answer = "-1";
        }
        else {
            if (arr[1]+arr[2]+arr[3]+arr[4]+arr[5]+arr[6]+arr[7]+arr[8]+arr[9] == 0 && arr[0] != 0){
                answer = "0";
            }
            else {
                StringBuilder sb = new StringBuilder();
                for (int i = 9; i >= 0; i--) {
                    for (int j = 0; j < arr[i]; j++) {
                        sb.append(i);
                    }
                }
                answer = sb.toString();
            }
        }

        return answer;
    }
}