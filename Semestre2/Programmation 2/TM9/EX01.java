import java.util.*;

public class EX01
{
    public static void main(String[] args) {

    }

int sumlist(ArrayList<Integer> li)
{
    int sum;
    
    sum = 0;
    for(int x : li)
    {
        sum = sum + x;
    }
    return sum;
}

ArrayList<Integer> pairlist (ArrayList<Integer> lst)
{
    int                i;
    ArrayList<Integer> lst2;

    i = 0;
    lst2 = new ArrayList<Integer>();
    lst2.ensureCapacity(lst.size());
    for(int x : lst)
    {
        if(x % 2 == 0)
        {
            lst2.add(i,x);
            i++;
        }
    }
    return lst2;
}

void remove_impaire (ArrayList<Integer> lst)
{
    for(int x: lst)
    {
        if(x % 2 == 1)
        {
            lst.remove(x);
        }
    }
}

void mult2list (ArrayList<Integer> lst)
{
    int i = 0;
    for(int x : lst)
    {
        lst.set(i, lst.get(i) * 2);
        i++;
    }
}

ArrayList<Integer> triList (ArrayList<Integer> lst)
{
    for(int i = 0 ; i < lst.size() - 1 ; i++)
    {
        for(int j = 1; j < lst.size() - 1; j++)
        {
            if(lst.get(i) > lst.get(j))
            {
                int temp;
                temp = lst.get(i);
                lst.set(i, lst.get(j));
                lst.set(i, temp);
            }
        }
    }
    return lst;
}
}
