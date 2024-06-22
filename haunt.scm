(use-modules (haunt asset)
             (haunt builder blog)
             (haunt builder atom)
             (haunt builder assets)
             (haunt reader commonmark)
             (haunt site)
             (theme))

(site #:title "Terracrypt Blog"
      #:domain "blog.terracrypt.net"
      #:default-metadata
      '((author . "Jonathan Frederickson")
        (email  . "jonathan@terracrypt.net"))
      #:readers (list commonmark-reader)
      #:builders (list (blog #:theme jfred-theme)
                       (atom-feed)
                       (atom-feeds-by-tag)
                       (static-directory "images")
                       (static-directory "css")))
