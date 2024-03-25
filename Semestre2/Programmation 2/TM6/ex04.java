public class ex04 {
    public static void main(String[] args) {
        
    }

    public static int bubble_roman(int[] tab)
    {
        int tour;
        int lastchange;

        tour = 0;
        lastchange = tab.length - 1;
        while (lastchange != 0)
        {
            int d;

            d = 0;
            tour++;

            for (int i = 0; i < lastchange; i++)
            {
                if(tab[i] > tab[i + 1])
                {
                    swap(tab, i, i+1);
                    d = i + 1;
                }    
            }
            lastchange = d;
        }
        return tour;
    }

    public static void swap(int tab[], int i, int j)
    {
        int temp;

        temp = tab[i];
        tab[i] = tab[j];
        tab[j] = temp;
    }
}
