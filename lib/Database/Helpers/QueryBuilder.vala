public class SolidShelf.Database.Helpers.QueryBuilder {
    StringBuilder query_string = new StringBuilder ();
    bool is_space_required = false;

    public string add_space_if_required () {
        string result = is_space_required ? " " : "";
        is_space_required = false;

        return result;
    }

    public void require_space () {
        is_space_required = true;
    }

    public QueryBuilder select (Gee.List<string> field_names) {
        const string LIST_ITEM_FORMAT_STRING = "%s, ";
        const string LIST_FINAL_ITEM_FORMAT_STRING = "%s";

        query_string.append_printf ("%sSELECT ", add_space_if_required ());


        for (int i = 0; i < field_names.size; i++) {
            string field_name = field_names[i];

            if (i == field_names.size - 1) {
                query_string.append_printf (LIST_FINAL_ITEM_FORMAT_STRING, field_name);
                continue;
            }

            query_string.append_printf (LIST_ITEM_FORMAT_STRING, field_name);

        }

        require_space ();

        return this;
    }

    public QueryBuilder select_all () {
        query_string.append_printf ("%sSELECT *", add_space_if_required ());
        require_space ();
        return this;
    }

    public QueryBuilder from (string table_name) {
        query_string.append_printf ("%sFROM %s", add_space_if_required (), table_name);
        require_space ();
        return this;
    }

    public QueryBuilder where (string field_name) {
        query_string.append_printf ("%sWHERE %s", add_space_if_required (), field_name);
        require_space ();
        return this;
    }

    public QueryBuilder greater_than (double num) {
        query_string.append_printf ("%s> %f", add_space_if_required () ,num);
        require_space ();
        return this;
    }

    public QueryBuilder greater_than_or_equal_to (double num) {
        query_string.append_printf ("%s>= %f", add_space_if_required (), num);
        require_space ();
        return this;
    }

    public QueryBuilder lesser_than (double num) {
        query_string.append_printf ("%s< %f", add_space_if_required (), num);
        require_space ();
        return this;
    }

    public QueryBuilder lesser_than_or_equal_to (double num) {
        query_string.append_printf ("%s<= %f", add_space_if_required (), num);
        require_space ();
        return this;
    }

    public QueryBuilder equal_to (string r_value) {
        query_string.append_printf ("%s= '%s'", add_space_if_required (), r_value);
        require_space ();
        return this;
    }

    public QueryBuilder not_equal_to (string r_value) {
        query_string.append_printf ("%s<> '%s'", add_space_if_required (), r_value);
        require_space ();
        return this;
    }

    public QueryBuilder equal_to_num (double num) {
        query_string.append_printf ("%s= '%f'", add_space_if_required (), num);
        require_space ();
        return this;
    }

    public QueryBuilder not_equal_to_num (double num) {
        query_string.append_printf ("%s<> '%f'", add_space_if_required (), num);
        require_space ();
        return this;
    }

    public QueryBuilder between (double lower_bound, double upper_bound) {
        query_string.append_printf ("%sBETWEEN %f AND %f", add_space_if_required (), lower_bound, upper_bound);
        require_space ();
        return this;
    }

    public QueryBuilder like (string pattern) {
        query_string.append_printf ("%sLIKE %s", add_space_if_required (), pattern);
        require_space ();
        return this;
    }

    public QueryBuilder in (Gee.List<string> options) {
        const string LIST_ITEM_FORMAT_STRING = "'%s', ";
        const string LIST_FINAL_ITEM_FORMAT_STRING = "'%s';";

        query_string.append_printf ("%sIN (", add_space_if_required ());

        for (int i = 0; i < options.size; i++) {
            string option = options[i];

            if (i == options.size - 1) {
                query_string.append_printf (LIST_FINAL_ITEM_FORMAT_STRING, option);
                continue;
            }

            query_string.append_printf (LIST_ITEM_FORMAT_STRING, option);
        }

        query_string.append (")");
        require_space ();
        return this;
    }

    public QueryBuilder num_in (Gee.List<double?> options) {
        const string LIST_ITEM_FORMAT_STRING = "%f, ";
        const string LIST_FINAL_ITEM_FORMAT_STRING = "%f;";

        query_string.append_printf ("%sIN (", add_space_if_required ());

        for (int i = 0; i < options.size; i++) {
            double option = options[i];

            if (i == options.size - 1) {
                query_string.append_printf (LIST_FINAL_ITEM_FORMAT_STRING, option);
                continue;
            }

            query_string.append_printf (LIST_ITEM_FORMAT_STRING, option);
        }

        query_string.append (")");
        require_space ();
        return this;
    }

    public QueryBuilder and () {
        query_string.append_printf ("%sAND", add_space_if_required ());
        require_space ();
        return this;
    }

    public QueryBuilder or () {
        query_string.append_printf ("%sOR", add_space_if_required ());
        require_space ();
        return this;
    }

    public string build () {
        is_space_required = false;
        query_string.append (";");
        return query_string.str;
    }
}
