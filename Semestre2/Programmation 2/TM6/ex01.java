public class ex01 {
    public static void main (String args[])
    {
        
    }

    public static int bubble_verif(int [] tab)
    {
        int passe;
        boolean verif;

        passe = 0;
        verif = true;

        while(verif == true)
        {
            passe++;
            verif = false;

            for(int i = 0; i < tab.length - 1; i++)
            {
                if(tab[i] > tab[i + 1])
                {
                    swap(tab, i, i+1);
                    verif = true;
                }
            }
        }
        return passe;
    }

    public static void swap(int tab[], int i, int j)
    {
        int temp;

        temp = tab[i];
        tab[i] = tab[j];
        tab[j] = temp;
    }
}