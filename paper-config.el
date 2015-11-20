(require 'org)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
                 '("revtex4-1"
                   "
\\documentclass[aps,prl,citeautoscript,preprint,citeautoscript,showkeys,floatfix]{revtex4-1}

\\usepackage{natbib}
\\usepackage{graphicx}
\\usepackage{float}
\\usepackage{amsmath}
\\usepackage{textcomp}
\\usepackage[version=3]{mhchem}
\\usepackage[linktocpage,pdfstartview=FitH,colorlinks,linkcolor=blue,anchorcolor=blue,citecolor=blue,filecolor=blue,menucolor=blue,urlcolor=blue]{hyperref}
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
" 
                   ("\\section{%s}" . "\\section{%s}") 
                   ("\\subsection{%s}" . "\\subsection{%s}") 
                   ("\\subsubsection{%s}" . "\\subsubsection{%s}") 
                   ("\\paragraph{%s}" . "\\paragraph{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph{%s}")))

