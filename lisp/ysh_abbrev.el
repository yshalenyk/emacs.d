;; ;;; ysh_abrev.el --- abbrev package

;; ;;; Commentary:
;; ;; personal abbrevs
;; ;; stolen for xah or ported from snippets 〈Using Emacs Abbrev Mode for Abbreviation〉 http://ergoemacs.org/emacs/emacs_abbrev_mode.html

(defconst terraform-expand-list
  '(
    ("data" "data \"\" \"\" {\n  \n}" (7 10 14))
    ("prov" "provider \"\"  {\n  \n}" (11 18))
    ("res" "resource \"\" \"\" {\n  \n}" (11 14 19))
    ("var" "variable \"\" {\n  type = \n}" (11 24))
    ("out" "output \"\" {\n  value = \n}" (9 23))
    ("mod" "module \"\" {\n  source = \"\"\n}" (9 25))
    ("loc" "locals {\n\n}" 10)
    )
  "Terraform mode abbrevs"
  )

(define-abbrev-table 'css-mode-abbrev-table
  '(
    ("bg" "background-color: $;")
    ("bor" "border: $;")
    ("ff" "font-family: $;")
    ("fs" "font-size: $;")
    ))


(defconst python-expand-list
  '(
    ("pri" "print()" 7)
    ("true" "True")
    ("false" "False")
    ("ret" "return " 8)
    ("arg" "parser.add_argument(, )" (21 23))
    ("ass" "assert " 8)
    ("cls" "class ():\n''''''\n    def __init__(self):\n''''''" (7  8 14 39 45))
    ("def" "def ():\n''''''\n" (5 6 12 17))
    ("if" "if :\n    " (4 9))
    ("ife" "if :\n    \nelse:\n    " (4 9 21))
    ("ifmain" "if __name__ == '__main__':\n    " 29)
    ("imp" "import " 8)
    ("from" "from  import " (6 14))
    ("pdb" "import pdb; pdb.set_trace()")
    ("ipdb" "import ipdb; ipdb.set_trace()")
    ("lc" "[ for  in ]" (2 7 11))
    ("dc" "{ for  in }" (2 7 11))
    ("lci" "[ for  in  if ]" (2 7 11 15))
    ("lci" "{ for  in  if }" (2 7 11 15))
    ("log" "logger = logging.getLogger()" 28)
    ("for" "for  in :\n    " (5 9 15))
    ("se" "self." 6)
    ("sa" "self. = " (6 9))
    ("_utf" "# -*- coding: utf-8 -*-");; TODO:
    ("wh" "while :\n    " (7 13))
    ("wi" "with :\n    " (6 13))
    ("wia" "with  as :\n    " (6 10 17))
    ("setup"
     (concat
      "from setuptools import setup\n\n"
      "package = ''\n"
      "version = ''\n\n"
      "setup(name=package,\n"
      "      version=version,\n"
      "      description='',\n"
      "      url='')"
      )
     (44 58)) ;; TODO:
    ("try" "try:\n    \nexcept  as e:\n    " (9 18 28))
    ("deft" "def test_():\n    " (10 11 16))
    ("lambda" "lambda :" 8)
    (
     "pargs"
     "def parse_arguments():\n    parser = argparse.ArgumentParser(description='')\n    return parser.parse_args()"
     74
     )
    )
  "Python mode expansions")

(defconst c-expand-list
  '(("if" "if () {\n \n} else {\n \n}" (5 10 21))
    ("ifn" "if () {}" (5 8))
    ("uns" "unsigned ")
    ("ins" "#include \"\"" 11)
    ("inc" "#include <>" 11)
    ("for" "for(; ; ) {\n\n}" (5 7 9 13))
    ("switch" "switch () {\n\n}" (9 13))
    ("case" "case :\n\nbreak;\n" (6 8 16))
    ("do" "do {\n\n} while ();" (6 16))
    ("while" "while () {\n\n}" (8 12))
    ("str" "struct  {}" (8 10))
    ("default" "default:\n\nbreak;" 10)
    ("main" "int\nmain(int argc, char * argv[])\n{\n\n}\n" 37))
  "Expansions for C mode")


(defconst rust-expand-list
  '(
    ("allow" "#[allow()]" 9)
    ("ass" "assert!();" 9)
    ("asse" "assert_eq!();" 12)
    ("cfg" "#[cfg()]" 7)
    ("derive" "#[derive()]" 10)
    ("cfgv" "#[cfg( = \"\")]" (7 11))
    ;; TODO: || doesnt expand
    ;; ("lam" "|| {\n\n}" (2 6))
    ("deri" "#[derive()]" 10)
    (
     "display"
     "impl Display for  {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, \"\")
    }
}"
     (18 99)
     )
    ("enum" "enum  {\n\n}" (6 9))
    ("epr" "eprint!(\"\", );" (10 13))
    ("eprl" "eprintln!(\"\", );" (12 15))
    ("fn" "fn () ->  {\n\n}" (4 5 10 13))
    ("fnn" "fn () {\n\n}" (4 5 9))
    ("fnt" "fn <T>(x: T) where T: Clone-> _ {\n}" (4))
    ("for" "for  in  {\n\n}" (5 9 12))
    ("from" "impl From<> for  {
    fn from(source: ) -> Self {
       Self {}
    }
}
"
     (11 17 40 65)
     )
    ("fromstr" "impl FromStr for  {
    type Err = Error;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        Ok(Self{})
    }
}
"
     (18 114)
     )

    ("if" "if  {\n\n} else {\n\n}" (4 7 17))
    ("ifn" "if  {\n\n}" (4 7))
    ("ifl" "if let  =  {\n\n}" (8 11 14))
    ("impl" "impl  {\n\n}" (6 9))
    ("implf" "impl  for  {\n\n}" (6 11 14))
    ("let" "let  = ;" (5 8))
    ("letm" "let mut  = ;" (9 12))
    ("loop" "loop {\n\n}" 8)
    ("macro" "macro_rules!  {
     () => ();
}"
     (14 23 29)
     )
    ("main" "fn main() {\n\n}" 13)
    ("match" "match  {\n\n}" (7 10))
    ("new" "pub fn new() -> Self {\n\n}" (12 17 20))
    ("p" "pub " 5)
    ("pr" "print!(\"\", );" (9 12))
    ("prl" "println!(\"\", );" (11 14))
    ("res" "Result<, failure::Error>" 8)
    ("resu" "Result<, failure::Error>" 8)
    ("ok" "Ok()" 4)
    ("some" "Some()" 6)
    ("err" "Err()" 5)
    ("static" "static :  = ;" (8 10 13))
    ("struct" "struct  {\n\n}" (8 11))
    ("test" "#[test]\nfn test_() {\n\n}" (17 22))
    ("testm" "#[cfg(test)]\nmod  {\n    use super::*;\n\n}" (18 39))
    ("trait" "trait  {\n\n}" (7 10))
    ("type" "type  = ;" (6 9))
    ("union" "union  {\n\n}" (7 10))
    ("warn" "#[warn()]" 8)
    ("whl" "while  {\n\n}" (7 10))
    ("whll" "while let  =  {\n\n}" (11 14 17))
    )
  "expand list for rust")

(defconst emacs-lisp-expand
  (list
   (list
    "defu"
    (concat
     "(defun   ()\n"
     "  \"\"\n"
     "  (interactive)\n"
     "  (let* (\n"
     "         )\n"
     "    \n"
     "    ))")
    (list 8 11 16 32 43 59))

   (list
    "defs"
    (concat
     "(defsubst   ()\n"
     "  \"\"\n"
     "  (interactive)\n"
     "  )")
    (list 11 14 19 23 39))

   (list
    "defm"
    (concat
     "(defmacro  ()\n"
     "  \"\"\n"
     "  `( \n"
     "    ))")
    (list 11 13 18 25))

   (list
    "defa"
    (concat
     "(defadvice   (around   act)\n"
     "  \"\"\n"
     "  \n"
     "  )")
    (list 12 22 32 36))

   (list
    "defc"
    "(defconst   nil\n  \"\")\n"
    (list 11 13 20))

   (list
    "defv"
    "(defvar   nil\n  \"\")\n"
    (list 9 11 18))

   (list
    "let"
    "(let* (\n)\n    "
    (list 8 13))

   (list
    "sav"
    "(save-excursion\n \n)"
    (list 18))

   (list
    "aut"
    "(autoload ' \"\" t t)\n"
    (list 12 14))

   )
  "Expansions for Lisp mode.  See `expand-add-abbrevs'.")


(use-package abbrev
  :demand
  :config
  (setq abbrev-file-name "~/.config/emacs/abbrevs.el")
  (setq save-abbrevs 'silently)
;  (define-key xah-fly-e-keymap (kbd "j") 'expand-jump-to-previous-slot)
;  (define-key xah-fly-e-keymap (kbd "k") 'expand-jump-to-next-slot)
  (add-hook 'expand-expand-hook 'indent-according-to-mode)
  (add-hook 'expand-jump-hook 'indent-according-to-mode)
  (setq-default abbrev-mode t)
  )

(expand-add-abbrevs terraform-mode-abbrev-table terraform-expand-list)
(expand-add-abbrevs python-mode-abbrev-table python-expand-list)
(expand-add-abbrevs emacs-lisp-mode-abbrev-table emacs-lisp-expand )
(expand-add-abbrevs rust-mode-abbrev-table rust-expand-list)
;; (expand-add-abbrevs c-mode-abbrev-table c-expand-list)


(provide 'ysh_abbrev)
;; ;;; ysh_abbrev.el ends here
