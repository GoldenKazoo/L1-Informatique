public class ex03 {
    public static void main(String[] args) {
        
    }

    public static void bubble_opti(int[] tab)
    {
        for (int i = 0; i < tab.length; i++) {
            for (int j = 0; j < tab.length - 1 - j; j++) {
                if(tab[i] > tab[i+1])
                {
                    swap(tab, i, i+1);
                }
            }
        }
    }

    public static void swap(int tab[], int i, int j)
    {
        int temp;

        temp = tab[i];
        tab[i] = tab[j];
        tab[j] = temp;
    }
}
