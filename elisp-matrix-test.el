(require 'buttercup)
(require 'elisp-matrix)
(require 'json)

(describe "elisp-matrix"
  (describe "encode-login"
    (it "creates the correct JSON"
      (let* ((encoded-login (matrix/encode-login "user.name" "user.password"))
             (decoded-login (json-read-from-string encoded-login)))
        (expect (alist-get 'user decoded-login) :to-equal "user.name")
        (expect (alist-get 'password decoded-login) :to-equal "user.password")
        (expect (alist-get 'type decoded-login) :to-equal "m.login.password")))))
