public class SolidShelf.App.Model.SQLiteStatement : Object, SolidShelf.Database.Interfaces.Statement {
    public unowned Sqlite.Statement context { get; construct; }

    public SQLiteStatement (Sqlite.Statement context) {
        Object (context: context);
    }

    public void execute () {
        debug ("Start executing statement\n");
    }
}
