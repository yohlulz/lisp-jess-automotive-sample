(defmodule CLEAR_INT_FACTS)

(defrule CLEAR_INT_FACTS::clear_kb
	(declare (salience -9000))
 ?r1 <-	(MAIN::kb $?)
=>
	(retract ?r1)
)
; ---------
(defrule CLEAR_INT_FACTS::clear_nod
	(declare (salience -9000))
 ?r1 <-	(MAIN::nod $?)
=>
	(retract ?r1)
)
; ---------
(defrule CLEAR_INT_FACTS::clear_max-speed
	(declare (salience -9000))
 ?r1 <-	(MAIN::max-speed $?)
=>
	(retract ?r1)
)
