public class Page {
    int     pagerank;
    String  url;
    Page[]  pagesVoisines;

    public Page(int pagerank, String url, Page[] pagesVoisines)
    {
        this.pagerank = pagerank;
        this.url = url;
        this.pagesVoisines = pagesVoisines;
    }
}
