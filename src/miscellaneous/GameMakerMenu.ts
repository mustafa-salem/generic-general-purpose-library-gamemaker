class Menu {

    // (_row_count, _column_count, _visible_count, _page_flip_type, _wrap_horizontally = true, _wrap_vertically = true)

    /*******************************************************************************
    ―――――――――――――――――――― BASIC PROPERTIES ――――――――――――――――――――
    *******************************************************************************/

    enum PAGE_FLIP_TYPE {
        HORIZONTAL = 0,
        VERTICAL = 1,
    }

    defaults = {
        row_count : _row_count,
        column_count : _column_count,
        visible_count : _visible_count,
        page_flip_type : _page_flip_type,
        wrap_horizontally : _wrap_horizontally,
        wrap_vertically : _wrap_vertically,
    }

    current = {
        index : 0,
    }

    row_count() { return defaults.row_count }
    column_count() { return defaults.column_count }
    visible_count() { return defaults.visible_count }
    page_flip_type() { return defaults.page_flip_type }
    wrap_horizontally() { return defaults.wrap_horizontally }
    wrap_vertically() { return defaults.wrap_vertically }

    current_index(_index) {
        if (!is_undefined(_index)) {
            current.index = keep_in_range(_index)
            current.index = _index
        }
        return keep_in_range(current.index)
    }


    /*******************************************************************************
    ―――――――――――――――――――― CALCULATED PROPERTIES ――――――――――――――――――――
    *******************************************************************************/

    page_size() { return (row_count() * column_count()) }
    page_count() { return Math.ceil(entry_count() / page_size()) }

    last_row() { return (row_count() - 1) }
    last_column() { return (column_count() - 1) }
    last_page_index() { return (page_size() - 1) }
    last_page() { return (page_count() - 1) }

    row_wrap() { return last_row() }
    column_wrap() { return last_column() }
    page_wrap() { return last_page_index() }

    horizontal_wrap() { return column_wrap() }
    vertical_wrap() { return (row_wrap() * column_count()) }

    row(_index) { return (Math.floor(_index / column_count()) % row_count()) }
    column(_index) { return (_index % column_count()) }
    page(_index) { return Math.floor(_index / page_size()) }

    on_first_row(_index) { return (row(_index) == 0) }
    on_last_row(_index) { return ((row(_index) == row_wrap()) || (on_last_page(_index) && row(_index) == row(last_index()))) }

    on_first_column(_index) { return (column(_index) == 0) }
    on_last_column(_index) { return ((column(_index) == column_wrap()) || (_index == last_index())) }

    on_first_page(_index) { return (page(_index) == 0) }
    on_last_page(_index) { return (page(_index) == last_page()) }

    // RETURNS TOTAL NUMBER OF ENTRIES
    entry_count() { print_debug_callstack("Menu.entry must be overwritten") }
    // RETURNS NUMBER OF ENTRIES CURRENTLY VISIBLE
    visible_entry_count() {  Math.min(max_visible_entry_count(), entry_count() - (page_size() * (page_count() - 1))) }

    page_index(_index) { return (_index - (page(_index) * page_size())) }

    // RETURNS INDEX OF FIRST VISIBLE ENTRY
    visible_offset() { page_index(current_index()) }

    current_visible_index(_index) { return _index + visible_offset() }

    last_index() { return (entry_count() - 1) }

    keep_in_range(_index) { return Math.min((entry_count() - 1), Math.max(0, _index)) }

    // RETRIEVES ONE ENTRY
    // NOTE: MUST BE OVERWRITTEN IN INSTANCE
    entry(_index) { print_debug_callstack("Menu.entry must be overwritten") }
    // RETRIEVES ALL ENTRIES
    entries() {
        var _entry_count = entry_count()
        var _entries = new Array(_entry_count)
        for (let i = 0; i < _entry_count; i++) { _entries[i] = entry(i) }
        return _entries
    }

    // RETRIEVES ONE VISIBLE ENTRY
    visible_entry(_index) { return entry(_index + visible_offset()) }
    // RETRIEVES ALL VISIBLE ENTRIES
    visible_entries() {
        var _visible_entry_count = visible_entry_count()
        var _visible_entries = new Array(_visible_entry_count)
        for (let i = 0; i < _visible_entry_count; i++) { _visible_entries[i] = visible_entry(i) }
        return _visible_entries
    }

    /*******************************************************************************
    ―――――――――――――――――――― NAVIGATION ――――――――――――――――――――
    *******************************************************************************/

    /* ―――――――――――――――――――― LEFT ―――――――――――――――――――― */

    move_left() {
        var _old_index = current_index()
        var _new_index = _old_index

        if (!on_first_column(_old_index) || !wrap_horizontally()) {
            _new_index = _old_index - 1
        } else {
            if (page_flip_type() == PAGE_FLIP_TYPE.VERTICAL) {
                _new_index = _old_index + horizontal_wrap()
            } else if (on_first_page(_old_index)) {
                _new_index = _old_index + (page_size() * last_page()) + horizontal_wrap()
            } else {
                _new_index = _old_index - (page_size() + horizontal_wrap())
            }
        }

        // UPDATE CURRENT INDEX
        _new_index = current_index(_new_index)

        // RETURN AMOUNT MOVED
        return (_new_index - _old_index)
    }

    /* ―――――――――――――――――――― RIGHT ―――――――――――――――――――― */

    move_right() {
        var _old_index = current_index()
        var _new_index = _old_index

        if (!on_last_column(_old_index) && !last_entry() || !wrap_horizontally()) {
            _new_index = _old_index + 1
        } else {
            if (page_flip_type() == PAGE_FLIP_TYPE.VERTICAL) {
                _new_index = _old_index - horizontal_wrap()
            } else if (on_last_page(_old_index)) {
                _new_index = _old_index - (page_size() * last_page()) - horizontal_wrap()
            } else {
                _new_index = _old_index + (page_size() - horizontal_wrap())
            }
        }

        // UPDATE CURRENT INDEX
        _new_index = current_index(_new_index)

        // RETURN AMOUNT MOVED
        return (_new_index - _old_index)
    }

    /* ―――――――――――――――――――― UP ―――――――――――――――――――― */

    move_up() {
        var _old_index = current_index()
        var _new_index = _old_index

        if (!on_first_row() || !wrap_vertically()) {
            _new_index = _old_index - column_count()
        } else {
            if (page_flip_type() == PAGE_FLIP_TYPE.HORIZONTAL) {
                _new_index = _old_index + vertical_wrap()
            } else if (on_first_page(_old_index)) {
                _new_index = _old_index + (page_size() * last_page()) + vertical_wrap()
            } else {
                _new_index = _old_index - column_count()
            }
        }

        // UPDATE CURRENT INDEX
        _new_index = current_index(_new_index)

        // RETURN AMOUNT MOVED
        return (_new_index - _old_index)
    }

    /* ―――――――――――――――――――― DOWN ―――――――――――――――――――― */

    move_down() {
        var _old_index = current_index()
        var _new_index = _old_index

        if (!on_last_row() || !wrap_vertically()) {
            _new_index = _old_index + column_count()
        } else {
            if (page_flip_type() == PAGE_FLIP_TYPE.HORIZONTAL) {
                _new_index = _old_index - vertical_wrap()
            } else if (on_last_page(_old_index)) {
                _new_index = _old_index - (page_size() * last_page()) - vertical_wrap()
            } else {
                _new_index = _old_index + column_count()
            }
        }

        // UPDATE CURRENT INDEX
        _new_index = current_index(_new_index)

        // RETURN AMOUNT MOVED
        return (_new_index - _old_index)
    }

}
