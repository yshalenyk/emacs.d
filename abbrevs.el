;;-*-coding: utf-8;-*-
(define-abbrev-table 'css-mode-abbrev-table
  '(
    ("bg" "background-color: $;" nil :count 0)
    ("bor" "border: $;" nil :count 0)
    ("ff" "font-family: $;" nil :count 0)
    ("fs" "font-size: $;" nil :count 0)
   ))

(define-abbrev-table 'terraform-mode-abbrev-table
  '(
    ("data" ["data \"\" \"\" {
  
}" 11 (17 7 10 14) nil] expand-abbrev-hook :count 0)
    ("loc" ["locals {

}" 2 nil nil] expand-abbrev-hook :count 0)
    ("mod" ["module \"\" {
  source = \"\"
}" 19 (27 9 25) nil] expand-abbrev-hook :count 0)
    ("out" ["output \"\" {
  value = 
}" 16 (24 9 23) nil] expand-abbrev-hook :count 0)
    ("prov" ["provider \"\"  {
  
}" 9 (19 11 18) nil] expand-abbrev-hook :count 0)
    ("res" ["resource \"\" \"\" {
  
}" 11 (21 11 14 19) nil] expand-abbrev-hook :count 0)
    ("var" ["variable \"\" {
  type = 
}" 15 (25 11 24) nil] expand-abbrev-hook :count 0)
   ))

