;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname images) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;(circle 10 "solid" "red")
;(text "hydra" 22 "grey")

(above
 (circle 20 "solid" "green")
 (circle 30 "solid" "red")
)

(overlay
 (circle 20 "solid" "green")
 (circle 30 "solid" "red")
)

(beside
 (circle 20 "solid" "green")
 (circle 30 "outline" "red")
 (rectangle 20 40 "solid" "yellow")
)