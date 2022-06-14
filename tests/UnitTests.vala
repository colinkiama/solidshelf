using SolidShelf.Database.Helpers;

class UnitTests {
    public static int main (string[] args) {
        Test.init (ref args);

        Test.add_func ("/solid_shelf/basic", () => {
           assert (true);
        });

        Test.add_func ("/solid_shelf/select_query", () => {
            QueryBuilder query_builder = new QueryBuilder ();
            query_builder
                .select (new Gee.ArrayList<string>.wrap ({ "title", "author" }))
                .from ("books")
                .where ("title")
                .equal_to ("among us");

            string book_query = query_builder.build ();
            assert (book_query == "SELECT title, author FROM books WHERE title = 'among us';");
        });

        return Test.run ();
    }
}
