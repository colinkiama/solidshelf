public class SolidShelf.Database.Helpers.StatementBuilder {
    StringBuilder query_string = new StringBuilder ();
    const string LIST_ITEM_FORMAT_STRING = "%s, ";
    const string LIST_FINAL_ITEM_FORMAT_STRING = "%s;";

    public StatementBuilder select (Gee.List<string> field_names) {
        query_string.append ("SELECT ");

        for (int i = 0; i < field_names.size; i++) {
            string field_name = field_names[i];

            if (i == field_names.size - 1) {
                query_string.append_printf (LIST_FINAL_ITEM_FORMAT_STRING, field_name);
                continue;
            }

            query_string.append_printf (LIST_ITEM_FORMAT_STRING, field_name);
        }

        return this;
    }

    public StatementBuilder select_all () {
        query_string.append ("SELECT *");
        return this;
    }

    public StatementBuilder from (string table_name) {
        query_string.append_printf ("FROM %s;", table_name);
        return this;
    }

    public StatementBuilder where (string field_name) {
        query_string.append_printf("WHERE %s", field_name);
        return this;
    }

    public StatementBuilder equal_to_string (string field_value) {
        return this;
    }

    public StatementBuilder equal_to_num (int field_value) {
        return this;
    }
}
