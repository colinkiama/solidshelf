class UnitTests {
    public static int main (string[] args) {
        Test.init (ref args);

        Test.add_func ("/solid_shelf/basic", () => {
           assert (true);
        });

        return Test.run ();
    }
}
