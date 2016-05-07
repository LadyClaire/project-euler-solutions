#!/usr/bin/env csi
; If we list all the natural numbers below 10 that are multiples of 3 or 5, we
; get 3, 5, 6 and 9. The sum of these multiples is 23.

; Find the sum of all the multiples of 3 or 5 below 1000.

(define (sumMultiples x y z s) ; Sums all multiples of x or y <= z, adds to s
    (if (<= z 0) s
     (if (= (modulo z x) 0) (sumMultiples x y (- z 1) (+ s z)) 
      (if (= (modulo z y) 0) (sumMultiples x y (- z 1) (+ s z))
       (sumMultiples x y (- z 1) s)))))

(display (sumMultiples 3 5 999 0))
(display (newline))
(quit)
