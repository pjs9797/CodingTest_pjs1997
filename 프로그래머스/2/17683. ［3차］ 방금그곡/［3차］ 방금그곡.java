import java.util.*;

class Solution {
    public String solution(String m, String[] musicinfos) {
        String answer = "";
        ArrayList<Node> list = new ArrayList<>();
        m = m.replace("C#","c").replace("D#","d").replace("F#","f").replace("G#","g").replace("A#","a").replace("B#","b");
        for(int i=0;i<musicinfos.length;i++){
            boolean correctMusic = false;
            String[] musicinfo = musicinfos[i].split(",");
            String [] startTime = musicinfo[0].split(":");
            String [] endTime = musicinfo[1].split(":");
            String title = musicinfo[2];
            String melody = musicinfo[3].replace("C#","c").replace("D#","d").replace("F#","f").replace("G#","g").replace("A#","a").replace("B#","b");
            
            int startHour = Integer.parseInt(startTime[0]);
            int startMin = Integer.parseInt(startTime[1])+startHour*60;
            
            int endHour = Integer.parseInt(endTime[0]);
            int endMin = Integer.parseInt(endTime[1])+endHour*60;
            
            int musicTime = endMin - startMin;
            String runMelody = "";
            if(melody.length() == musicTime){
                runMelody = melody;
            }
            else if(melody.length() > musicTime){
                runMelody = melody.substring(0,musicTime);
            }
            else {
                int k = 0;
                while(true){
                    if(runMelody.length() == musicTime){
                        break;
                    }
                    runMelody += String.valueOf(melody.charAt(k%melody.length()));
                    k+=1;
                }
            }
            System.out.println(runMelody);
            correctMusic = runMelody.contains(m);
            if(correctMusic){
                list.add(new Node(title,musicTime,i));
            }
            
        }
        
        if(list.size() == 0){
            answer = "(None)";
        }
        else{
            Collections.sort(list, (o1,o2)->{
                if(o1.time == o2.time){
                    return o1.idx-o2.idx;
                }
                return o2.time-o1.time;
            });
            answer = list.get(0).title;
        }
        return answer;
    }
    
    public class Node{
        String title;
        int time;
        int idx;
        
        public Node(String title, int time, int idx){
            this.title = title;
            this.time = time;
            this.idx = idx;
        }
    }
}