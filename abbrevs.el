;;-*-coding: utf-8;-*-
(define-abbrev-table 'css-mode-abbrev-table
  '(
    ("bg" "background-color: $;" nil :count 0)
    ("bor" "border: $;" nil :count 0)
    ("ff" "font-family: $;" nil :count 0)
    ("fs" "font-size: $;" nil :count 0)
   ))

(define-abbrev-table 'emacs-lisp-mode-abbrev-table
  '(
    ("aut" ["(autoload ' \"\" t t)
" 9 (20 12 14) nil] expand-abbrev-hook :count 0)
    ("defa" ["(defadvice   (around   act)
  \"\"

  )" 28 (39 12 22 32 36) nil] expand-abbrev-hook :count 0)
    ("defc" ["(defconst   nil
  \"\")
" 12 (22 11 13 20) nil] expand-abbrev-hook :count 0)
    ("defm" ["(defmacro  ()
  \"\"
  `(
    ))" 21 (31 11 13 18 25) nil] expand-abbrev-hook :count 0)
    ("defs" ["(defsubst   ()
  \"\"
  (interactive)
  )" 29 (39 11 14 19 23 39) nil] expand-abbrev-hook :count 0)
    ("defu" ["(defun   ()
  \"\"
  (interactive)
  (let* (
         )

    ))" 58 (65 8 11 16 32 43 59) nil] expand-abbrev-hook :count 0)
    ("defv" ["(defvar   nil
  \"\")
" 12 (20 9 11 18) nil] expand-abbrev-hook :count 0)
    ("let" ["(let* (
)
    " 7 (14 8 13) nil] expand-abbrev-hook :count 0)
    ("sav" ["(save-excursion

)" 2 (19 18) nil] expand-abbrev-hook :count 0)
   ))

(define-abbrev-table 'python-mode-abbrev-table
  '(
    ("_utf" ["# -*- coding: utf-8 -*-" 0 nil nil] expand-abbrev-hook :count 0)
    ("arg" ["parser.add_argument(, )" 3 (23 21 23) nil] expand-abbrev-hook :count 0)
    ("ass" ["assert " 0 nil nil] expand-abbrev-hook :count 0)
    ("cls" ["class ():
''''''
    def __init__(self):
''''''" 41 (47 7 8 14 39 45) nil] expand-abbrev-hook :count 0)
    ("dc" ["{ for  in }" 10 (11 2 7 11) nil] expand-abbrev-hook :count 0)
    ("def" ["def ():
''''''
" 11 (15 5 6 12 17) nil] expand-abbrev-hook :count 0)
    ("deft" ["def test_():
    " 8 (17 10 11 16) nil] expand-abbrev-hook :count 0)
    ("false" ["False" 0 nil nil] expand-abbrev-hook :count 0)
    ("for" ["for  in :
    " 10 (14 5 9 15) nil] expand-abbrev-hook :count 0)
    ("from" ["from  import " 8 (13 6 14) nil] expand-abbrev-hook :count 0)
    ("if" ["if :
    " 6 (9 4 9) nil] expand-abbrev-hook :count 0)
    ("ife" ["if :

else:
    " 17 (20 4 9 21) nil] expand-abbrev-hook :count 0)
    ("ifmain" ["if __name__ == '__main__':
    " 3 nil nil] expand-abbrev-hook :count 0)
    ("imp" ["import " 0 nil nil] expand-abbrev-hook :count 0)
    ("ipdb" ["import ipdb; ipdb.set_trace()" 0 nil nil] expand-abbrev-hook :count 0)
    ("lambda" ["lambda :" 1 nil nil] expand-abbrev-hook :count 0)
    ("lc" ["[ for  in ]" 10 (11 2 7 11) nil] expand-abbrev-hook :count 0)
    ("lci" ["{ for  in  if }" 14 (15 2 7 11 15) nil] expand-abbrev-hook :count 0)
    ("log" ["logger = logging.getLogger()" 1 nil nil] expand-abbrev-hook :count 0)
    ("pargs" ["def parse_arguments():
    parser = argparse.ArgumentParser(description='')
    return parser.parse_args()" 33 nil nil] expand-abbrev-hook :count 0)
    ("pdb" ["import pdb; pdb.set_trace()" 0 nil nil] expand-abbrev-hook :count 0)
    ("pri" ["print()" 1 nil nil] expand-abbrev-hook :count 0)
    ("ret" ["return " 0 nil nil] expand-abbrev-hook :count 0)
    ("sa" ["self. = " 3 (8 6 9) nil] expand-abbrev-hook :count 0)
    ("se" ["self." 0 nil nil] expand-abbrev-hook :count 0)
    ("setup" [(concat "from setuptools import setup

" "package = ''
" "version = ''

" "setup(name=package,
" "      version=version,
" "      description='',
" "      url='')") -35 (8 44 58) nil] expand-abbrev-hook :count 0)
    ("true" ["True" 0 nil nil] expand-abbrev-hook :count 0)
    ("try" ["try:

except  as e:
    " 20 (28 9 18 28) nil] expand-abbrev-hook :count 0)
    ("wh" ["while :
    " 6 (12 7 13) nil] expand-abbrev-hook :count 0)
    ("wi" ["with :
    " 6 (11 6 13) nil] expand-abbrev-hook :count 0)
    ("wia" ["with  as :
    " 10 (15 6 10 17) nil] expand-abbrev-hook :count 0)
   ))

(define-abbrev-table 'rust-mode-abbrev-table
  '(
    ("allow" ["#[allow()]" 2 nil nil] expand-abbrev-hook :count 0)
    ("ass" ["assert!();" 2 nil nil] expand-abbrev-hook :count 0)
    ("asse" ["assert_eq!();" 2 nil nil] expand-abbrev-hook :count 0)
    ("cfg" ["#[cfg()]" 2 nil nil] expand-abbrev-hook :count 0)
    ("cfgv" ["#[cfg( = \"\")]" 7 (13 7 11) nil] expand-abbrev-hook :count 0)
    ("deri" ["#[derive()]" 2 nil nil] expand-abbrev-hook :count 0)
    ("derive" ["#[derive()]" 2 nil nil] expand-abbrev-hook :count 0)
    ("display" ["impl Display for  {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, \"\")
    }
}" 91 (108 18 99) nil] expand-abbrev-hook :count 0)
    ("enum" ["enum  {

}" 5 (10 6 9) nil] expand-abbrev-hook :count 0)
    ("epr" ["eprint!(\"\", );" 5 (14 10 13) nil] expand-abbrev-hook :count 0)
    ("eprl" ["eprintln!(\"\", );" 5 (16 12 15) nil] expand-abbrev-hook :count 0)
    ("err" ["Err()" 1 nil nil] expand-abbrev-hook :count 0)
    ("fn" ["fn () ->  {

}" 11 (14 4 5 10 13) nil] expand-abbrev-hook :count 0)
    ("fnn" ["fn () {

}" 7 (10 4 5 9) nil] expand-abbrev-hook :count 0)
    ("fnt" ["fn <T>(x: T) where T: Clone-> _ {
}" 32 (35 4) nil] expand-abbrev-hook :count 0)
    ("for" ["for  in  {

}" 9 (13 5 9 12) nil] expand-abbrev-hook :count 0)
    ("from" ["impl From<> for  {
    fn from(source: ) -> Self {
       Self {}
    }
}
" 64 (74 11 17 40 65) nil] expand-abbrev-hook :count 0)
    ("fromstr" ["impl FromStr for  {
    type Err = Error;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        Ok(Self{})
    }
}
" 107 (124 18 114) nil] expand-abbrev-hook :count 0)
    ("if" ["if  {

} else {

}" 15 (18 4 7 17) nil] expand-abbrev-hook :count 0)
    ("ifl" ["if let  =  {

}" 8 (15 8 11 14) nil] expand-abbrev-hook :count 0)
    ("ifn" ["if  {

}" 5 (8 4 7) nil] expand-abbrev-hook :count 0)
    ("impl" ["impl  {

}" 5 (10 6 9) nil] expand-abbrev-hook :count 0)
    ("implf" ["impl  for  {

}" 10 (15 6 11 14) nil] expand-abbrev-hook :count 0)
    ("lam" ["|| {

}" 6 (7 2 6) nil] expand-abbrev-hook :count 0)
    ("let" ["let  = ;" 4 (8 5 8) nil] expand-abbrev-hook :count 0)
    ("letm" ["let mut  = ;" 4 (12 9 12) nil] expand-abbrev-hook :count 0)
    ("loop" ["loop {

}" 2 nil nil] expand-abbrev-hook :count 0)
    ("macro" ["macro_rules!  {
     () => ();
}" 19 (32 14 23 29) nil] expand-abbrev-hook :count 0)
    ("main" ["fn main() {

}" 2 nil nil] expand-abbrev-hook :count 0)
    ("match" ["match  {

}" 5 (11 7 10) nil] expand-abbrev-hook :count 0)
    ("new" ["pub fn new() -> Self {

}" 14 (25 12 17 20) nil] expand-abbrev-hook :count 0)
    ("ok" ["Ok()" 1 nil nil] expand-abbrev-hook :count 0)
    ("p" ["pub " 0 nil nil] expand-abbrev-hook :count 0)
    ("pr" ["print!(\"\", );" 5 (13 9 12) nil] expand-abbrev-hook :count 0)
    ("prl" ["println!(\"\", );" 5 (15 11 14) nil] expand-abbrev-hook :count 0)
    ("res" ["Result<, failure::Error>" 17 nil nil] expand-abbrev-hook :count 0)
    ("resu" ["Result<, failure::Error>" 17 nil nil] expand-abbrev-hook :count 0)
    ("some" ["Some()" 1 nil nil] expand-abbrev-hook :count 0)
    ("static" ["static :  = ;" 6 (13 8 10 13) nil] expand-abbrev-hook :count 0)
    ("struct" ["struct  {

}" 5 (12 8 11) nil] expand-abbrev-hook :count 0)
    ("test" ["#[test]
fn test_() {

}" 7 (23 17 22) nil] expand-abbrev-hook :count 0)
    ("testm" ["#[cfg(test)]
mod  {
    use super::*;

}" 23 (40 18 39) nil] expand-abbrev-hook :count 0)
    ("trait" ["trait  {

}" 5 (11 7 10) nil] expand-abbrev-hook :count 0)
    ("type" ["type  = ;" 4 (9 6 9) nil] expand-abbrev-hook :count 0)
    ("union" ["union  {

}" 5 (11 7 10) nil] expand-abbrev-hook :count 0)
    ("warn" ["#[warn()]" 2 nil nil] expand-abbrev-hook :count 0)
    ("whl" ["while  {

}" 5 (11 7 10) nil] expand-abbrev-hook :count 0)
    ("whll" ["while let  =  {

}" 8 (18 11 14 17) nil] expand-abbrev-hook :count 0)
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

