;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; Return true if the area of the first image is greater than the second image

(check-expect (bigger-than? (square 10 "solid" "red") (square 10 "solid" "red")) false)
(check-expect (bigger-than? (square 20 "solid" "red") (square 10 "solid" "red")) true)
(check-expect (bigger-than? (rectangle 5 20 "solid" "red") (rectangle 8 6 "solid" "red")) true)

;(define (bigger-than? img0 img1) false)
;(define (bigger-than? img0 img1) ... img0 img1)

(define (bigger-than? img0 img1)
  (> (* (image-width img0) (image-height img0))
     (* (image-width img1) (image-height img1))
     ))