using SolidShelf.Enums;
/**
 * A value type that is used to store book progress information.
 * 
 * Note: Based on the progress_type, you can determine whether to use
 * the `pages_read` and `total_pages` fields or just use the `percentage fields.
 */
public struct SolidShelf.Structs.Progress {
    public ProgressType progress_type;
    public uint pages_read;
    public uint total_pages;
    public uint percentage;
}
