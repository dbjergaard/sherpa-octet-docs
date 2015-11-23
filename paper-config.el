(require 'org)
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

