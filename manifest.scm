(use-modules
 (gnu packages guile-xyz)
 (guix packages)
 (guix profiles))

;;(define-public haunt-master
;;  (package
;;   (name "haunt")
;;   (inherit haunt)))

(packages->manifest
 (map (compose list specification->package+output)
      '("haunt"
        "guile"
        "glibc-locales")))
