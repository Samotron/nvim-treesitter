; AGS Data Format Syntax Highlighting
; Enhanced highlighting with better semantic understanding

; Row type keywords - Bold and distinct for each type
(group_keyword) @keyword.directive
(heading_keyword) @variable.builtin  
(unit_keyword) @type.builtin
(type_keyword) @constant.builtin
(data_keyword) @string.special

; Field content highlighting
(quoted_field) @string.quoted
(field_content) @string.quoted.double

; Structural elements
(field_list) @markup.list

; Comments
(comment) @comment.line

; Special highlighting for common AGS field types
(quoted_field 
  (field_content) @number
  (#match? @number "^[0-9]+\\.?[0-9]*$"))

(quoted_field 
  (field_content) @constant.builtin.boolean
  (#match? @constant.builtin.boolean "^(YES|NO|Y|N)$"))

(quoted_field 
  (field_content) @string.special.url
  (#match? @string.special.url "^[0-9]{4}-[0-9]{2}-[0-9]{2}"))

; AGS data types
(quoted_field 
  (field_content) @type.qualifier
  (#match? @type.qualifier "^(X|ID|PA|DT|YN|[0-9]DP|XN|T|MC|U)$"))
