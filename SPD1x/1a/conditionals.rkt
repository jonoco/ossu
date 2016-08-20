;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname conditionals) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define WIDTH 100)
(define HEIGHT 300)

(> WIDTH HEIGHT)
(>= WIDTH HEIGHT)
(= WIDTH HEIGHT)

(if (< WIDTH HEIGHT)
    "thin"
    "thick"
    )

(and (< 5 9)
     (> 1 0))

(or (= 2 4)
    (= 2 2))

(not (> 3 5))