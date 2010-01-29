(defun add-numbers-below-1000 ()
  "Euler Problem 1"
  (let ((sum 0))
    (do ((n 1 (+ 1 n)))
	((eql n 1000))
      (if (or (eql (mod n 5) 0)
	       (eql (mod n 3) 0))
	  (setq sum (+ sum n))))
    (format t "Sum = ~a" sum)))


(defun even-fib-below-num(num)
  "Euler Problem 2: Sub of even valued fib numbers below arg"
  (do ((n 0 (1+ n))
       (a 0 b)
       (b 1 (+ a b))
       (sum 0 (+ sum 
		 (if (eq (mod b 2) 0)
		     b
		     0))))
      ((> b num) sum)))