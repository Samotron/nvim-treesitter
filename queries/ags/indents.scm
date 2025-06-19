; Indentation queries for AGS files
; Provide proper indentation for nested structures

[
  (group)
  (field_list)
] @indent

[
  (data_row)
  (heading_row)
  (unit_row)
  (type_row)
] @indent.begin

(quoted_field) @indent.branch