;;; wget-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "w3-wget" "w3-wget.el" (0 0 0 0))
;;; Generated autoloads from w3-wget.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3-wget" '("w3-wget")))

;;;***

;;;### (autoloads nil "w3m-wget" "w3m-wget.el" (0 0 0 0))
;;; Generated autoloads from w3m-wget.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "w3m-wget" '("w3m-wget-substitute-download-command")))

;;;***

;;;### (autoloads nil "wget" "wget.el" (0 0 0 0))
;;; Generated autoloads from wget.el

(autoload 'wget "wget" "\
Wget interface to download URI asynchronously.
If argument ARG is non-nil, ask some options.
Called with prefix argument, turn argument ARG t.

If you are in dired mode which is seeing ftp directory,
`wget' regard current line file name as URI.

\(fn URI &optional ARG)" t nil)

(autoload 'wget-web-page "wget" "\
Wget interface to download whole Web page.
If argument ARG is non-nil, ask options.
Called with prefix argument, turn argument ARG t.

Second argument URI is string.
wget-web-page downlod whole Web page from it following relative link.

\(fn URI &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "wget" '("wget-" "dired-wget")))

;;;***

;;;### (autoloads nil "wget-sysdep" "wget-sysdep.el" (0 0 0 0))
;;; Generated autoloads from wget-sysdep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "wget-sysdep" '("wget-")))

;;;***

;;;### (autoloads nil nil ("lpath.el" "wget-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; wget-autoloads.el ends here
