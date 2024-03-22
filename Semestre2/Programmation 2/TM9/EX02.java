import java.util.*;

public class EX02{
    public static void main(String[] args)
    {
        HashMap<String,Integer> dico;
        ArrayList<String>       lst;
        Random                  random;        
        
        dico = new HashMap<>();
        lst = new ArrayList<>();
        random = new Random();
        dico.put("Toto", 42);
        lst.add("J'aime");
        lst.add("Jouer");
        lst.add("Au");
        lst.add("Jeux");
        lst.add("Video");
        lst.add("Gaming");

        for(String word : lst)
        {
            dico.put(word, random.nextInt(10));
        }

        dico.replace("Toto", 21);
        String output = dico.toString();
        System.err.println(output);
    }
}
