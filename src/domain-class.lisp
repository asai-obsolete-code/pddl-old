(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*

;; (defmacro define-class-pattern (class-name)
;;   (let ((c (find-class class-name)))
;;     `(eval-when (:load-toplevel :execute)
;;        (defpattern ,class-name ,(class-slot-names c)
;; 	 `(,',class-name
;; 	      ,@(iter (for slot-name in (class-slot-names c))
;; 		      (collecting `(,slot-name slot-name))))))))

;; (define-class-pattern pddl-domain)

(defmacro define-pddl-class (name superclass slots)
  `(eval-when (:compile-toplevel :load-toplevel :execute)
     (defclass* ,name ,superclass
       ,slots
       (:EXPORT-P t)
       :EXPORT-SLOTS
       :AUTOMATIC-ACCESSORS
       :AUTOMATIC-INITARGS)
     (define-constructor ,name)))

(define-pddl-class namable ()
  (name))

(defmethod print-object ((o namable) s)
  (print-unreadable-object (o s :type t)
    (princ (name o) s)))

(define-pddl-class pddl-domain-slot ()
  (domain))

(defmethod initialize-instance :after ((o pddl-domain-slot)
				       &rest args)
  @ignore args
  (setf (domain o) *domain*))

(define-pddl-class pddl-domain (namable)
  (requirements
   types
   predicates
   constants
   functions
   actions
   durative-actions
   derived-predicates))

@export
@doc "find the action specified by the designator."
(defgeneric action (pddl-domain designator))
(defmethod action ((dom pddl-domain) designator)
  (find-if (lambda (action)
	     (string= (symbol-name (name action))
		      (typecase designator
			(symbol (symbol-name designator))
			(string designator))))
	   (actions dom)))

@export
@doc "find the predicate specified by the designator."
(defgeneric predicate (pddl-domain designator))

(defmethod predicate ((dom pddl-domain) (designator symbol))
  (find-if (lambda (predicate)
	     (string= (symbol-name (name predicate))
		      (symbol-name designator)))
	   (predicates dom)))

(defmethod predicate ((dom pddl-domain) (str string))
  (find-if (lambda (predicate)
	     (string= str (symbol-name (name predicate))))
	   (predicates dom)))

@export
@doc "returns the number of parameters."
(defun arity (thing)
  (length (parameters thing)))

(define-pddl-class pddl-predicate (pddl-domain-slot namable)
  ((parameters :type pddl-variable)))

(defmethod print-object ((o pddl-predicate) s)
  (format s "#<PREDICATE ~a ~{~a~^ ~}>" (name o) (parameters o)))

#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (sb-ext:with-unlocked-packages (:cl)
    (define-pddl-class pddl-variable (pddl-domain-slot
				      namable)
      (type))))

(defmethod print-object ((v pddl-variable) s)
  (if (eq (type v) t)
      (format s "#[~A]" (name v))
      (format s "#[~A ∈ ~A]" (name v) (type v))))

#-sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-pddl-class pddl-variable (pddl-domain-slot namable)
    (type)))

(define-pddl-class pddl-type (pddl-variable)
  ())

(define-pddl-class pddl-constant (pddl-variable)
  ())

(define-pddl-class pddl-function (pddl-domain-slot)
  (body))

(define-pddl-class pddl-action (pddl-domain-slot namable)
  (   (parameters :type pddl-variable)
   precondition
   effect))

(defmethod add-list ((a pddl-action))
  (let ((acc nil))
    (walk-tree (lambda (branch cont)
		 (match branch
		   ((op 'and rest)
		    (funcall cont rest))
		   ((op 'not _)
		    nil)
		   ((type pddl-predicate)
		    (push branch acc))))
	       (effect a))
    acc))

(defmethod delete-list ((a pddl-action))
  (let ((acc nil))
    (walk-tree (lambda (branch cont)
		 (match branch
		   ((op 'and rest)
		    (funcall cont rest))
		   ((op 'not pred)
		    (push pred acc))
		   ((type pddl-predicate)
		    nil)))
	       (effect a))
    acc))

#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (sb-ext:with-unlocked-packages (:cl)
    (define-pddl-class pddl-durative-action (pddl-domain-slot namable)
      ((parameters :type pddl-variable)
       duration
       condition
       effect))))

#-sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-pddl-class pddl-durative-action (pddl-domain-slot)
    ((parameters :type pddl-variable)
     condition
     effect)))

(define-pddl-class pddl-derived-predicate (pddl-domain-slot)
  ((parameters :type pddl-variable)
   effect))
