(use-modules (haunt asset)
             (haunt builder blog)
             (haunt builder atom)
             (haunt builder assets)
             (haunt reader commonmark)
             (haunt site))

(site #:title "jfred's world"
      #:domain "blog.terracrypt.net"
      #:default-metadata
      '((author . "Jonathan Frederickson")
        (email  . "jonathan@terracrypt.net"))
      #:readers (list commonmark-reader)
      #:builders (list (blog)
                       (atom-feed)
                       (atom-feeds-by-tag)
                       (static-directory "images")))
