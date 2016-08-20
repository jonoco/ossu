;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ship) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; A rocket that you fly around

;; =================
;; Constants:

(define WIDTH 400)
(define HEIGHT 300)
(define SPEED 7)
(define MTS (empty-scene WIDTH HEIGHT))
(define SHIP
  (beside
   (rotate 90 (triangle 50 "solid" "purple"))
   (above (triangle 50 "solid" "blue")
          (rectangle 50 100 "solid" "blue")
          (triangle 15 "solid" "red"))
   (rotate 270 (triangle 50 "solid" "purple"))))                    

;; =================
;; Data definitions:

(define-struct ship (x y))
;; Ship is (make-ship (Natural Natural))
;; interp. (make-ship (Natural Natural)) is a ship with
;;  x is the x coord position of the ship
;;  y is the y coord position of the ship

(define S0 (make-ship 0 0))
(define S1 (make-ship 15 90))

#;
(define (fn-for-ship s)
  (... (ship-x s)  ;Natural
       (ship-y s)));Natural

;; Template rules used:
;;  - Compound: 2 fields

;; =================
;; Functions:

;; Ship -> Ship
;; start the world with (main (make-ship 150 200))
;; 
(define (main s)
  (big-bang s                       ; Ship
            (to-draw   render)      ; Ship -> Image
            (on-key    handle-key))); Ship KeyEvent -> Ship

;; Ship -> Image
;; render the ship onto the scene 

(check-expect (render (make-ship 100 200)) (place-image SHIP 100 200 MTS))
(check-expect (render (make-ship 50 200)) (place-image SHIP 50 200 MTS))

;(define (render s) MTS)
#;
(define (render s)
  (... s))

(define (render s)
  (place-image SHIP (ship-x s) (ship-y s) MTS))

;; Ship KeyEvent -> Ship
;; move by the ship at SPEED number of pixels by pressing the arrow keys; left, right, up, down

(check-expect (handle-key (make-ship 50 50) "left") (make-ship (- 50 SPEED) 50))
(check-expect (handle-key (make-ship 50 50) "right") (make-ship (+ 50 SPEED) 50))
(check-expect (handle-key (make-ship 50 50) "up") (make-ship 50 (- 50 SPEED)))
(check-expect (handle-key (make-ship 50 50) "down") (make-ship 50 (+ 50 SPEED)))
(check-expect (handle-key (make-ship 50 50) " ") (make-ship 50 50))

;(define (handle-key s ke) (make-ship 0 0))
#;
(define (handle-key s ke)
  (cond [(key=? ke "left")  (...)]
        [(key=? ke "right") (...)]
        [(key=? ke "down")  (...)]
        [(key=? ke "up")    (...)]
        [else s]))

(define (handle-key s ke)
  (cond [(key=? ke "left")  (make-ship (- (ship-x s) SPEED) (ship-y s))]
        [(key=? ke "right") (make-ship (+ (ship-x s) SPEED) (ship-y s))]
        [(key=? ke "down")  (make-ship (ship-x s) (+ (ship-y s) SPEED))]
        [(key=? ke "up")    (make-ship (ship-x s) (- (ship-y s) SPEED))]
        [else s]))