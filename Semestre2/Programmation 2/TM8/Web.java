public class Web {
        int     nombrePages;
        Page[]  pages;

        public Web(int nbPage, Page[] pages)
        {
                this.nombrePages = nbPage;
                this.pages = pages;
        }

        public static void main(String[] args) {
                Page pageA;
                Page pageB;
                Page pageC;
                Web triforce;
                pageA = new Page(2, "urlA", new Page[] {pageC});
                pageB = new Page(1, "urlB", new Page[] {pageA});
                pageC = new Page(1, "urlC", new Page[] {pageB,pageA});
                triforce = new Web(3, new Page[] {pageA, pageB, pageC});

        }

}
