



(let ((in (open "test.txt" :if-does-not-exist nil)))
  (when in
    (loop for line = (read-line in nil)
	  while line do
	  (format t "~a~%" line))
    (close in)))

(setf f (open "test.txt"))
(setf s (read f))
(format t "~a~%" (cdr s))

