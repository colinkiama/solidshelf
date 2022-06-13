using SolidShelf.Model;
// using SolidShelf.Database.Model;

/**
 * Describes a service that performs SolidShelf database operations. 
 */
public interface SolidShelf.Database.Interfaces.DatabaseService : Object {
    /**
     * Prepare statements and store them for later
     * 
     */
    public abstract void prepare_statements ();
    /**
     * Adds a new book to the database.
     */
    public abstract async SolidShelf.Model.Book create_book (SolidShelf.Model.Book book);

    /**
     * Performs a diff on this model instance and the model instance stored
     * in the database then stores saves the model's application state to 
     * the database.
     */
    public abstract async SolidShelf.Model.Book update_book (SolidShelf.Model.Book book);

    /**
     * Deletes book from database.
     */
    public abstract async SolidShelf.Model.Book delete_book (SolidShelf.Model.Book book);

    /**
     * Loads books into a ListStore that can be used when binding to widgets
     * like the ListBox.
     */
    public abstract async ListStore load_books ();

    /**
     * Runs a query in the database to check if a book exists.
     */
    public abstract async bool check_if_book_id_exists (uint book_id);
}
