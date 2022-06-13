/**
 * SolidShelf database service implemented with an SQLite backend
 *
 */
public class SolidShelf.App.Services.SqliteDatabaseService : Object,
    SolidShelf.Database.Interfaces.DatabaseService {

        public void prepare_statements () {}

        public async SolidShelf.Model.Book update_book (SolidShelf.Model.Book book) {
            return new SolidShelf.Model.Book ();
        }

        public async SolidShelf.Model.Book delete_book (SolidShelf.Model.Book book) {
            return new SolidShelf.Model.Book ();
        }

        public async SolidShelf.Model.Book create_book (SolidShelf.Model.Book book) {
            return new SolidShelf.Model.Book ();
        }

        public async GLib.ListStore load_books () {
            return new GLib.ListStore (typeof (SolidShelf.Model.Book));
        }

        public async bool check_if_book_id_exists (uint book_id) {
            return true;
        }
}
