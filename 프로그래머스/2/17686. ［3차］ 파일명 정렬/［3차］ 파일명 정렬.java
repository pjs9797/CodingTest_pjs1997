import java.util.*;
class Solution {
        public String[] solution(String[] files) {
            String[] answer = {};
            Arrays.sort(files, (o1,o2) -> {
                String [] file1 = separate(o1);
                String [] file2 = separate(o2);

                if (file1[0].compareToIgnoreCase(file2[0]) != 0){
                    return file1[0].compareToIgnoreCase(file2[0]);
                }
                else {
                    int intFile1 = Integer.parseInt(file1[1]);
                    int intFile2 = Integer.parseInt(file2[1]);
                    return Integer.compare(intFile1,intFile2);
                }

            });
            answer = files;
            return answer;
        }

        public static String [] separate(String file) {
            String head = "";
            String number = "";
            String tail = "";

            int i = 0;
            while (i < file.length() && !Character.isDigit(file.charAt(i))){
                head += file.charAt(i);
                i+=1;
            }
            while (i < file.length() && Character.isDigit(file.charAt(i))){
                number += file.charAt(i);
                i+=1;
            }
            tail = file.substring(i);
            return new String[]{head,number,tail};
        }
    }