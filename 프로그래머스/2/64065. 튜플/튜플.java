import java.util.*;
class Solution {
        public int[] solution(String s) {
            int[] answer;
            String str = s.substring(1,s.length()-1);
            String [] arr = str.split("\\},\\{");
            answer = new int[arr.length];
            ArrayList<String []> list = new ArrayList<>();
            for(int i=0;i<arr.length;i++){
                String aa = arr[i].replace("{","").replace("}","");
                String [] a = aa.split(",");
                list.add(a);
            }

            Collections.sort(list, (o1,o2) -> {
                return o1.length-o2.length;
            });

            Map<String,Boolean> map = new HashMap<>();
            for (int i = 0; i < list.get(list.size()-1).length; i++) {
                map.put(list.get(list.size()-1)[i],false);
            }

            for(int i = 0; i<list.size();i++){
                String [] Arr = list.get(i);
                if(i == 0){
                    answer[i] = Integer.parseInt(Arr[0]);
                    map.put(Arr[0],true);
                }
                else {
                    for(int j=0;j<Arr.length;j++){
                        int b = Integer.parseInt(Arr[j]);
                        if(!map.get(Arr[j])){
                            answer[i] = b;
                            map.put(Arr[j],true);
                        }
                    }
                }
            }


            return answer;
        }
    }