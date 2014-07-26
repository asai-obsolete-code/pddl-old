(in-package :pddl-test)
(in-suite :pddl)

(test (read-all-problem-and-plans)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (parse-file (data "costs/domain.pddl"))
      (let ((*domain* cell-assembly))
	(parse-file (data "costs/model2b1.pddl"))
	(let ((*problem* cell-assembly-model2b-1))
	  (setf cell-assembly-model2b-1-6
		(pddl-plan
		 :path (data "costs/model2b1.plan.6"))))))))

(test costs
  (finishes
    (define (domain logistics-typed-cost)
      (:requirements :strips :action-cost)
      (:types truck place)
      (:predicates (at ?t - truck ?a - place) (connected ?x ?y - place))
      (:functions (total-cost) (distance ?x ?y - place))
      (:action move-fixed
	       :parameters (?t - truck ?x ?y - place)
	       :precondition (and (at ?t ?x) (connected ?x ?y))
	       :effect (and (not (at ?t ?x)) (at ?t ?y)
                            (increase (total-cost) 10)))
      (:action move-function
	       :parameters (?t - truck ?x ?y - place)
	       :precondition (and (at ?t ?x) (connected ?x ?y))
	       :effect (and (not (at ?t ?x)) (at ?t ?y)
                            (increase (total-cost) (distance ?x ?y))))))
  (finishes
    (define (problem logistics-typed-cost-prob)
      (:domain logistics-typed-cost)
      (:objects t1 - truck
                a b c - place)
      (:init (at t1 a)
             (connected a b)
             (connected b c)
             (= (total-cost) 0)
             (= (distance a a) 0)
             (= (distance a b) 5)
             (= (distance a c) 5)
             ;;
             (= (distance b a) 5)
             (= (distance b b) 0)
             (= (distance b c) 5)
             ;;
             (= (distance c a) 5)
             (= (distance c b) 5)
             (= (distance c c) 0))
      (:goal (at t1 c))
      (:metric minimize (total-cost))))

  (let (*env* logistics-plan)

    (finishes
      (setf logistics-plan
            (pddl-plan
             :actions (parse-plan '((move-fixed t1 a b)
                                    (move-function t1 b c))
                                  logistics-typed-cost
                                  logistics-typed-cost-prob))))
    (finishes
      (setf *env* (pddl-environment
                   :domain logistics-typed-cost
                   :problem logistics-typed-cost-prob
                   :plan logistics-plan)))
    (is (= 0 (cost *env*)) "the metric is not initialized to 0")
    (finishes (setf *env* (proceed *env*)))
    (is (= 10 (cost *env*)))
    (is (= 5 (value (function-state *env* '(distance b c)))))
    (finishes (setf *env* (proceed *env*)))
    (is (= 15 (cost *env*)))
    ;; integrated test
    (is (= 15 (cost
               (with-simulating-plan (env *env*)
                 (format t "~&~a" (cost env))))))))

(test detect-cost-initialization-missing
  (signals warning ;; because the definition is not full
    (define (problem logistics-definition-missing)
      (:domain logistics-typed-cost)
      (:objects t1 - truck
                a b c - place)
      (:init (at t1 a)
             (connected a b)
             (connected b c)
             ;;(= (total-cost) 0)
             (= (distance a a) 0)
             (= (distance a b) 5)
             (= (distance a c) 5)
             ;;
             (= (distance b a) 5)
             ;;(= (distance b b) 0)
             (= (distance b c) 5)
             ;;
             (= (distance c a) 5)
             (= (distance c b) 5)
             (= (distance c c) 0))
      (:goal (at t1 c))
      (:metric minimize (total-cost)))))






