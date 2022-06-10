namespace SolidShelf.Widgets {
    public class HeaderBar : Hdy.HeaderBar {
        public HeaderBar () {
            Object (
                title: _("Solid Shelf"),
                has_subtitle: false,
                show_close_button: true,
                hexpand: true
            );
        }
    }
}
