using SolidShelf.Structs;
/**
 * A book to track.
 */
public class SolidShelf.Model.Book {
    /**
     * The name of the book.
     */
    public string title { get; set; }
    /**
     * Book progress information.
     * 
     * Details like pages read and the total amount of pages in the book are available here. 
     */
    public SolidShelf.Structs.Progress progress { get; set; }
    /**
     * The book's cover image path.
     */
    public string image;
}
