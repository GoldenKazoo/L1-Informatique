public class ex05 {

    public static void main(String[] args) {
            int[] tab = {14,11,9,8,7,5,4,2,1};
            insert(tab);
            showTab(tab);
        
    }

    public static void insert(int[] tab)
    {
        int temp;

        temp = 0;
        for (int k = 0; k < tab.length; k++) {
            for (int i = 0; i + k < tab.length; i++) {
                if(tab[i] < tab[i+1])
                {
                    temp = tab[i];
                }
            }
            tab[k] = temp; 
        }


    }
    public static void showTab(int[] tab) {
        System.out.print("[");
        for (int i=0;i<tab.length-1;i++) {
            System.out.print(tab[i]+", ");
        }
        System.out.println(tab[tab.length-1]+"]");
    }
}
