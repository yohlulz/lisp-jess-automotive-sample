;------------PLANIFICARE---------------------------------------
(defmodule PLANIFICARE)

(defrule PLANIFICARE::planificare_do_virare_stanga_dreapta 
	(declare (salience ?*SALIENCE_SEMN_DEFAULT*))
 ?r1 <-	(MAIN::need-action virare ?directie)
=>
	(printout t ?*INFO* " Virare " ?directie "." crlf)
	(retract ?r1)
)
; ---------
(defrule PLANIFICARE::planificare_do_deplasare_inainte
	(declare (salience ?*SALIENCE_SEMN_DEFAULT*))
 ?r1 <-	(MAIN::need-action virare no ALL)
=>
	(printout t ?*INFO* " Deplasare inainte." crlf)
	(retract ?r1)
)
; ---------
(defrule PLANIFICARE::planificare_do_deplasare_choose
	(declare (salience ?*SALIENCE_MARCAJ_DEFAULT*))
 ?r1 <-	(MAIN::nod ? ? ?tip ?dir)
 	(MAIN::finish ? ? ? ?tip)
	(not (MAIN::need-action virare no ?dir))
=>
	(printout t ?*INFO* " Virare " ?dir ". " crlf)
	(retract ?r1)
)
; ---------
(defrule PLANIFICARE::planificare_do_deplasare_choose
	(declare (salience (+ ?*SALIENCE_MARCAJ_DEFAULT* 1)))
 ?r1 <-	(MAIN::nod ?sursa ?destinatie ?tip ?dir)
 	(MAIN::finish ? ?sursa1 ?destinatie1 ?tip)
 ?r2 <-	(MAIN::need-action virare no ?dir1)
	(test (not (= ?dir ?dir1)))
=>
	(printout t ?*INFO* " Virare " ?dir ". " crlf)
	(retract ?r1)
	(retract ?r2)
)
; ---------
(defrule PLANIFICARE::planificare_do_deplasare_default_choose
	(declare (salience ?*SALIENCE_MARCAJ_DEFAULT*))
 ?r1 <-	(MAIN::nod ?sursa ?destinatie ?tip ?dir)
 ?r2 <-	(MAIN::need-action virare no ?dir1)
	(test (not (= ?dir ?dir1)))
=>
	(printout t ?*INFO* " Virare " ?dir ". " crlf)
	(retract ?r1)
	(retract ?r2)
)
