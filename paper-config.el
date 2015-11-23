(require 'org)
(require 'ox-latex)
(setq org-latex-pdf-process
      '("latexmk -pdflatex='xelatex --shell-escape -interaction nonstopmode ' -pdf -bibtex -f %f"))
(setf org-latex-default-packages-alist
      (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))
;; (add-to-list 'org-latex-packages-alist '("" "xltxtra" t))
  ;; Fontify source code
;; (setq org-latex-listings 'minted)
;; (add-to-list 'org-latex-packages-alist '("" "minted"))
;; (add-to-list 'org-latex-packages-alist '("" "soul" t))

(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
                 '("revtex4-1"
                   "
\\documentclass[aps,prl,citeautoscript,preprint,citeautoscript,showkeys,floatfix]{revtex4-1}
\\usepackage{dcolumn}
\\usepackage{natbib}
\\usepackage[version=3]{mhchem}
" 
                   ("\\section{%s}" . "\\section{%s}") 
                   ("\\subsection{%s}" . "\\subsection{%s}") 
                   ("\\subsubsection{%s}" . "\\subsubsection{%s}") 
                   ("\\paragraph{%s}" . "\\paragraph{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph{%s}")))

(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))
(add-to-list 'org-export-latex-classes
	     '("revtex4-1"
	       "
\\documentclass[aps,prl,citeautoscript,preprint,citeautoscript,showkeys,floatfix]{revtex4-1}
\\usepackage{dcolumn}
\\usepackage{natbib}
\\usepackage[version=3]{mhchem}
" 
                   ("\\section{%s}" . "\\section{%s}") 
                   ("\\subsection{%s}" . "\\subsection{%s}") 
                   ("\\subsubsection{%s}" . "\\subsubsection{%s}") 
                   ("\\paragraph{%s}" . "\\paragraph{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph{%s}")))

