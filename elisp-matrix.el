(require 'dash)
(require 'json)

(defconst login-endpoint "/_matrix/client/r0/login")

(defun matrix/encode-login (username password)
  (json-encode-plist (list "type" "m.login.password"
                           "user" username
                           "password" password)))

(provide 'elisp-matrix)
