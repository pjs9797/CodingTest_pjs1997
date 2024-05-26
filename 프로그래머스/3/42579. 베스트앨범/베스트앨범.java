import java.util.*;
class Solution {
    public static int[] solution(String[] genres, int[] plays) {
        int[] answer;
        ArrayList<Integer> ans = new ArrayList<>();
        ArrayList<Node> nodeArrayList = new ArrayList<>();
        HashMap<String,Integer> sumMap = new HashMap<>();
        HashMap<String,ArrayList<sing>> map = new HashMap<>();
        for (int i = 0; i < genres.length; i++) {
            if (sumMap.containsKey(genres[i])){
                sumMap.put(genres[i],sumMap.get(genres[i])+plays[i]);
                ArrayList<sing> a = map.get(genres[i]);
                a.add(new sing(i,plays[i]));
                map.put(genres[i],a);
            }
            else {
                sumMap.put(genres[i],plays[i]);
                ArrayList<sing> a = new ArrayList<sing>();
                a.add(new sing(i,plays[i]));
                map.put(genres[i],a);
            }

        }
        for (Map.Entry<String,Integer> entry: sumMap.entrySet()){
            nodeArrayList.add(new Node(entry.getKey(), entry.getValue(), new ArrayList<sing>()));
        }
        for (Map.Entry<String, ArrayList<sing>> entry: map.entrySet()){
            for (int i = 0; i < nodeArrayList.size(); i++) {
                if (entry.getKey().equals(nodeArrayList.get(i).genre)){
                    nodeArrayList.get(i).list = entry.getValue();
                }
            }
        }

        Collections.sort(nodeArrayList,(a,b)->{
            return Integer.compare(b.sum,a.sum);
        });

        for (Node node: nodeArrayList){
            Collections.sort(node.list,(a,b)->{
                if (b.cnt == a.cnt){
                    return Integer.compare(a.index,b.index);
                }
                return Integer.compare(b.cnt,a.cnt);
            });
        }

        for (Node node: nodeArrayList){
            int a = 0;
            for (int i = 0; i < node.list.size(); i++) {
                if (node.list.size() == 1){
                    ans.add(node.list.get(i).index);
                }
                else {
                    ans.add(node.list.get(i).index);
                    a+=1;
                }
                if (a == 2){
                    break;
                }
            }
        }

        answer = new int[ans.size()];

        for (int i = 0; i < ans.size(); i++) {
            answer[i] = ans.get(i);
        }

        return answer;
    }

    static class Node{
        String genre;
        int sum;
        ArrayList<sing> list;

        Node(String genre, int sum, ArrayList<sing> list){
            this.genre = genre;
            this.sum = sum;
            this.list = list;
        }
    }

    static class sing{
        int index;
        int cnt;

        sing(int index, int cnt){
            this.index = index;
            this.cnt = cnt;
        }
    }
}