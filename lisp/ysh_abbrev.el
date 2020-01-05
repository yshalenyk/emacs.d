;; ;;; ysh_abrev.el --- abbrev package

;; ;;; Commentary:
;; ;; personal abbrevs
;; ;; stolen for xah or ported from snippets 〈Using Emacs Abbrev Mode for Abbreviation〉 http://ergoemacs.org/emacs/emacs_abbrev_mode.html


(use-package abbrev
  :custom
  (abbrev-file-name "~/.emacs.d/abbrevs")
  (save-abbrevs 'silently)
  :config
  (abbrev-mode t))

;; (define-abbrev-table 'org-mode-abbrev-table
;;   '(
;;     ("<au" "#+author: $")
;;     ("<c" "#+begin_center\n$\n#+end_center")
;;     ("<da" "#+date: $")
;;     ("desc" "#+description: $")
;;     ("<ti" "#+title $")
;;     ("<q" "#+begin_quote\n$\n#+end_quote")
;;     ("<py" "#+begin_src python\n$\n#+end_src")
;;     ("<li" "[[$][description]")
;;     ("<ke" "#+keywords: $")
;;     ))
;; (define-abbrev-table 'terraform-mode-abbrev-table
;;   '(
;;     ("data" "data \"$\" \"\" {\n}")    ("data" "data \"$\" \"\" {\n}")
;;     ("prov" "provider \"$\"  {\n}")
;;     ("res" "resource \"$\" \"\" {\n}")
;;     ("var" "variable \"$\" {\n  default = \"\"\n}")
;;     ("out" "output \"$\" {\n  value = \"\"\n}")
;;     ("mod" "module \"$\" {\n  source = \"\"\n}")
;;     ("loc" "locals {\n$\n}")
;;     ))

;; (define-abbrev-table 'css-mode-abbrev-table
;;   '(
;;     ("bg" "background-color: $;")
;;     ("bor" "border: $;")
;;     ("ff" "font-family: $;")
;;     ("fs" "font-size: $;")
;;     ))

;; (define-abbrev-table 'c-mode-abbrev-table
;;   '(
;;     ("case" "case $; break;")
;;     ("do" "do { } while ($)")
;;     ("if" "if ($) {}")
;;     ("els" "else {}")
;;     ("ifel" "if ($) {} else {}")
;;     ("for" "for (int i = 0; i < N; i++) {$}")
;;     ("str" "struct $ {}")
;;     ("switch" "switch ($) {}")
;;     ("wh" "while ($) {}")
;;     ("inc" "#include <$>")
;;     ("ins" "#include \"$\"")
;;     ("def" "#define $")
;;     ("main" "int main(int argc, char *argv[]) {$}")
;;     ))

;; (define-abbrev-table 'python-mode-abbrev-table
;;   '(
;;     ("p" "print($)")
;;     ("r" "return")
;;     ("arg" "parser.add_argument('$', '')")
;;     ("ass" "assert")
;;     ("cls" "class $():\n    ''' '''\n    def __init__():\n    ''' '''")
;;     ("def" "def $():\n    ''''''")
;;     ("if" "if $:")
;;     ("ife" "if $:\nelse:")
;;     ("ifmain" "if __name__ == '__main__':")
;;     ("imp" "import $")
;;     ("from" "from $ import ")
;;     ("pdb" "import pdb; pdb.set_trace()")
;;     ("ipdb" "import ipdb; ipdb.set_trace()")
;;     ("lam" "lambda $:")
;;     ("li" "[item for item in $]")
;;     ("log" "logger = logging.getLogger($)")
;;     ("for" "for $ in :")
;;     ("s" "self.$")
;;     ("sa" "self.$ = ")
;;     ("_utf" "# -*- coding: utf-8 -*-")
;;     ("wh" "while $:")
;;     ("wi" "with $:")
;;     ("setup" "from setuptools import setup\n\npackage = '$'\nversion = ''\n\nsetup(name=package,\n      version=version,\n      description='',\n      url='')")
;;     ("try" "try:\n    $\nexcept :")
;;     ("dt" "def test_$():\n")
;;     ("lambda" "lambda $:")
;;     ("pargs" "def parse_arguments():\n    parser = argparse.ArgumentParser(description='$')\n    return parser.parse_args()")
;;     ;;
;;     ))

;; (define-abbrev-table 'rust-mode-abbrev-table
;;   '(
;;     ("allow" "#[allow($)]")
;;     ("ass" "assert!($);")
;;     ("asseq" "assert_eq!($);")
;;     ("case" "$ => {},")
;;     ("cfg" "#[cfg($)]")
;;     ("cfgv" "#[cfg($ = \"\")]")
;;     ;; TODO: || doesnt expand
;;     ("||" "|$|{\n}")
;;     ("derive" "#[derive($)]")
;;     ("display" "impl Display for $ {
;;     fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
;;         write!(f, \"\")
;;     }
;; }")
;;     ("drop" "impl Drop for $ {
;;      fn drop(&mut self) {

;;       }
;; }")
;;     ("enum" "enum $ {\n}")
;;     ("eprint" "eprint!(\"$\", );")
;;     ("eprintln" "eprintln!(\"$\", );")
;;     ("fn" "fn $() {\n}")
;;     ("fnr" "fn $() -> _ {\n}")
;;     ("fnt" "fn $<T>(x: T) where T: Clone-> _ {\n}")
;;     ("for" "for $ in  {\n}")
;;     ("from" "impl From<$> for  {
;;     fn from(source: ) -> Self {
;;        Self { }
;;     }
;; }
;; ")
;;     ("fromstr" "impl FromStr for $ {
;;     type Err = Error;

;;     fn from_str(s: &str) -> Result<Self, Self::Err> {
;;         Ok(Self{})
;;     }
;; }
;; ")
;;     ("if" "if $ {\n}")
;;     ("ife" "if $ {\n} else {\n}")
;;     ("ifl" "if let $ = {\n}")
;;     ("impl" "impl $ {\n}")
;;     ("implt" "impl $ for T {\n}")
;;     ("let" "let $ = ;")
;;     ("letm" "let mut $ = ;")
;;     ("loop" "lopp {\n    $\n}")
;;     ("macro" "macro_rules! $ {
;;      () => ();
;; }")
;;     ("main" "fn main() {\n    $\n}")
;;     ("match" "match $ {\n}")
;;     ("new" "pub fn new($) ->  {
;;     { }
;; }")
;;     ("p" "pub$")
;;     ("print" "print!(\"\", $)")
;;     ("println" "println!(\"\", $)")
;;     ("result" "Result<$, failure::Error>")
;;     ("static" "static $: = ;")
;;     ("struct" "struct $ {\n}")
;;     ("test" "#[test]
;; fn test_$() {

;; }")
;;     ("testmod" "#[cfg(test)]
;; mod $ {
;;     use super::*;

;;     #[test]
;;     fn () {
;;     }
;; }")
;;     ("trait" "trait $ {\n}")
;;     ("type" "type $ = ;")
;;     ("union" "union $ {\n}")
;;     ("warn" "#[warn($)]")
;;     ("while" "while $ {\n}")
;;     ("whilel" "while let $ =  {\n}")
;;     ))


;; (define-abbrev-table 'emacs-lisp-mode-abbrev-table
;;   '(
;;     ("adh" "(add-hook '$ ')")
;;     ("a" "(and $)")
;;     ("bc" "(backward-char $)")
;;     ("bol" "(beginning-of-line)")
;;     ("bfn" "(buffer-file-name)")
;;     ("bpm" "(buffer-modified-p $)")
;;     ("cond" "(cond\n($))")
;;     ("const" "(defconst $ \"docstring\")")
;;     ("cb" "(current-buffer)")
;;     ("defalias" "(defalias '$ ' \"docstring\")")
;;     ("defcustom" "(defcustom '$ ' \"docstring\" args)")
;;     ("defk" "(define-key $-mode-map (kbd \"\") )")
;;     ("def" "(defun $ ()\n  \"docstring\"\n  ())")
;;     ("defvar" "(defvar $ \"\" \"docstring\")")
;;     ("dc" "(delete-char $)")
;;     ("dr" "(delete-region $)")
;;     ("eol" "(end-of-line)")
;;     ("error" "(error $)")
;;     ("deft" "(ert-deftest $ ()\n)")
;;     ("efn" "(expand-file-name $)")
;;     ("f" "(format $ \"\")")
;;     ("gsk" "(global-set-key (kbd \"$\") )")
;;     ("lam" "(lambda ($) ())")
;;     ("lt" "(let ($)\n)")
;;     ("lts" "(let* ($)\n)")
;;     ("sh" "(should $)")
;;     ("u" "(unless $)")
;;     ("up" "(use-package $ :ensure t)")
;;     ("w" "(when $)")
;;     ))

;; (set-default 'abbrev-mode t)

;; (defun xah-abbrev-h-f ()
;;   "Abbrev hook function, used for `define-abbrev'.
;;  Our use is to prevent inserting the char that triggered expansion. Experimental.
;;  the “h-f” stand for hook function.
;; Version 2016-10-24"
;;   t)

;; (put 'xah-abbrev-h-f 'no-self-insert t)

;; (setq abbrev-expand-function 'xah-global-expand-abbrev)

;; (defun xah-global-expand-abbrev ()
;;   "function for value of `abbrev-expand-function'.
;; Expand the symbol before cursor,
;; if cursor is not in string or comment.
;; Returns the abbrev symbol if there's a expansion, else nil.
;; Version 2019-01-10"
;;   (interactive)
;;   (let ( $p1 $p2
;; 	     $abrStr
;; 	     $abrSymbol
;; 	     )

;;     ;; (save-excursion
;;     ;;   (forward-symbol -1)
;;     ;;   (setq $p1 (point))
;;     ;;   (goto-char $p0)
;;     ;;   (setq $p2 $p0))

;;     (save-excursion
;;       ;; 2017-01-16 note: we select the whole symbol to solve a problem. problem is: if “aa”  is a abbrev, and “▮bbcc” is existing word with cursor at beginning, and user wants to type aa- to result in aa-bbcc. Normally, aa immediately expands. This prevent people editing bbcc to become aa-bbcc. This happens for example in elisp, when editing “search-forward” to become “re-search-forward”. The downside of this is that, people cannot type a abbrev when in middle of a word.
;;       (forward-symbol -1)
;;       (setq $p1 (point))
;;       (forward-symbol 1)
;;       (setq $p2 (point)))

;;     (setq $abrStr (buffer-substring-no-properties $p1 $p2))
;;     (setq $abrSymbol (abbrev-symbol $abrStr))
;;     (if $abrSymbol
;; 	(progn
;; 	  (abbrev-insert $abrSymbol $abrStr $p1 $p2 )
;; 	  (reindent-then-newline-and-indent)
;; 	  (xah-global-abbrev-position-cursor $p1)
;; 	  $abrSymbol)
;;       nil)))

;; ;; (defun delete-preceding-space-before-expand ()
;; ;;   (when (and (= (char-after) ?\s)
;; ;;              ;; only do if expanded with space
;; ;;              (= last-command-event ?\s)
;; ;;              (abbrev--before-point))
;; ;;     (message "%S" last-command-event)
;; ;;     (delete-char 1)))

;; ;; (add-hook 'pre-abbrev-expand-hook 'delete-preceding-space-before-expand)


;; (defun clean-previous-symbol ()
;;   "Cleans prev space"
;;   (interactive)
;;   (delete-char 1)
;;   (when (char-equal (char-before) ?\s)
;;     (delete-backward-char 1)))

;; (defun xah-global-abbrev-position-cursor (&optional @pos)
;;   "Move cursor back to $ if exist, else put at end.
;; Return true if found, else false.
;; Version 2016-10-24"
;;   (interactive)
;;   (let (($found-p (search-backward "$" (if @pos @pos (max (point-min) (- (point) 100))) t )))
;;     (when $found-p (clean-previous-symbol))
;;     $found-p
;;     ))


;; (setq save-abbrevs nil)

(provide 'ysh_abbrev)

;; ;;; ysh_abbrev.el ends here
