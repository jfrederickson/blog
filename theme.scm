(define-module (theme)
  #:use-module (haunt html)
  #:use-module (haunt site)
  #:use-module (haunt builder blog)
  #:use-module (utils))

(define-public jfred-theme
  (theme #:name "jfred"
         #:layout
         (lambda (site title body)
           `((doctype "html")
             (head
              (meta (@ (charset "utf-8")))
              (title ,(string-append title " — " (site-title site)))
              (link (@ (rel "alternate")
                       (type "application/atom+xml")
                       (title "Atom feed")
                       (href "/feed.xml")))
              ,(stylesheet "jfred"))
             (body
              (div (@ (class "container"))
                   (div (@ (class "nav"))
                        (ul
                         (li ,(link "jfred" "/"))))
                   ,body))))))
