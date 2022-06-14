using SolidShelf.Database.Helpers;

class UnitTests {
    public static int main (string[] args) {
        Test.init (ref args);

        Test.add_func ("/solid_shelf/basic", () => {
           assert (true);
        });

        Test.add_func ("/solid_shelf/query_builder/select", () => {
            QueryBuilder query_builder = new QueryBuilder ();
            query_builder
                .select (new Gee.ArrayList<string>.wrap ({ "title", "author" }))
                .from ("books")
                .where ("title")
                .equal_to ("among us");

            string select_book_query = query_builder.build ();
            assert (select_book_query == "SELECT title, author FROM books WHERE title = 'among us';");
        });

        Test.add_func ("/solid_shelf/query_builder/update", () => {
            QueryBuilder query_builder = new QueryBuilder ();
            query_builder
                .update ("books")
                .set_num ("rank", 13)
                .set ("author", "sus")
                .where ("title")
                .equal_to ("among us");

            string update_book_query = query_builder.build ();
            assert (update_book_query == "UPDATE books SET rank = 13.000000, author = 'sus' WHERE title = 'among us';");
        });

        return Test.run ();
    }
}
