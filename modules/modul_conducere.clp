;------------CONDUCERE---------------------------------------
(defmodule CONDUCERE)

(defrule CONDUCERE::conducere_do_urgenta_oprire
	(declare (salience (+ ?*SALIENCE_URGENTA_DEFAULT* 1)))
?r1 <-	(MAIN::need-action urgenta oprire)
?r2 <-	(MAIN::need-action urgenta evitare)
	(MAIN::vreme ?vreme_value)
	(MAIN::speed ?speed_value)
	(test (< ?speed_value ?*PRAG_VITEZA*))
	(test (= ?vreme_value "uscat"))
=>
	(printout t "[info] Depasire urgenta prin oprire." crlf)
	(retract ?r1)
	(retract ?r2)
	(focus PLANIFICARE)
)
; ---------
(defrule CONDUCERE::conducere_do_urgenta_evitare
	(declare (salience ?*SALIENCE_URGENTA_DEFAULT*))
?r1 <-	(MAIN::need-action urgenta oprire)
?r2 <-	(MAIN::need-action urgenta evitare)
=>
	(printout t "[info] Depasire urgenta prin evitare." crlf)
	(retract ?r1)
	(retract ?r2)
	(focus PLANIFICARE)
)
; ---------
(defrule CONDUCERE::conducere_do_oprire
	(declare (salience ?*SALIENCE_SEMNAL_DEFAULT*))
?r1 <-	(MAIN::need-action oprire)
?r2 <-  (MAIN::speed ?speed_value)
=>
	(printout t "[info] Oprire masina.")
	(printout t "Repornire masina. Viteza curenta 20" crlf)
	(retract ?r1)
	(retract ?r2)
	(assert (MAIN::speed 20))
	(focus PLANIFICARE)
)
; ---------
(defrule CONDUCERE::conducere_do_cedare
	(declare (salience ?*SALIENCE_SEMAFOR_DEFAULT*))
?r1 <-	(MAIN::need-action cedare)
=>
	(printout t "[info] Cedare trecere si continuare drum." crlf)
	(retract ?r1) 
	(focus PLANIFICARE)
)
; ---------
(defrule CONDUCERE::conducere_do_reducere_viteza
	(declare (salience ?*SALIENCE_SEMN_DEFAULT*))
?r1 <-	(MAIN::need-action reducere_viteza)
?r2 <-  (MAIN::speed ?speed_value)
	(test (> ?speed_value 20))
=>
	(printout t "[info] Reducere viteza.")
	(printout t "Viteza curenta " (- ?speed_value 10) crlf)
	(retract ?r2)
	(assert (MAIN::speed (- ?speed_value 10)))
	(retract ?r1) 
	(focus PLANIFICARE)
)
; ---------
(defrule CONDUCERE::conducere_do_mareste_viteza_politist
	(declare (salience ?*SALIENCE_SEMNAL_MARIRE*))
?r1 <-	(MAIN::need-action marire_viteza)
?r2 <-	(MAIN::speed ?speed_value)
=>
	(printout t "[info] Marire viteza." )
	(printout t "Viteza curenta " (+ ?speed_value 10) crlf)
	(retract ?r1) 
	(retract ?r2)
	(assert (MAIN::speed (+ ?speed_value 10)))
	(focus PLANIFICARE)
)
; ---------
(defrule CONDUCERE::conducere_do_mareste_viteza_depasire
	(declare (salience ?*SALIENCE_MARCAJ_DEFAULT*))
?r1 <-	(MAIN::speed ?speed_value)
	(MAIN::max-speed ?max_value)
	(test (<= (+ ?speed_value 10) ?max_value))
	(not (MAIN::kb presemnalizare ?))
	(not (MAIN::kb trecere_pietoni))
	(not (MAIN::kb politie))
 ?r3 <-	(MAIN::kb linie_intrerupta)
 ?r4 <-	(MAIN::kb depasire)
=>
	(printout t "[info] Marire viteza cu posibilitate de depasire." )
	(printout t "Viteza curenta " (+ ?speed_value 10) crlf)
	(retract ?r1) 
	(retract ?r3)
	(retract ?r4)
	(assert (MAIN::speed (+ ?speed_value 10)))
	(focus PLANIFICARE)
)
; ---------
(defrule CONDUCERE::conducere_do_mareste_viteza_no_depasire
	(declare (salience ?*SALIENCE_MARCAJ_DEFAULT*))
?r2 <-	(MAIN::speed ?speed_value)
	(MAIN::max-speed ?max_value)
	(test (<= (+ ?speed_value 10) ?max_value))
	(not (MAIN::kb presemnalizare ?))
	(not (MAIN::kb trecere_pietoni))
	(not (MAIN::kb politie))
 ?r3 <-	(MAIN::kb linie_continua)
 ?r4 <-	(MAIN::kb no depasire)
=>
	(printout t "[info] Marire viteza fara posibilitate de depasire." )
	(printout t "Viteza curenta " (+ ?speed_value 10) crlf)
	(retract ?r2)
	(retract ?r3)
	(retract ?r4)
	(assert (MAIN:speed (+ ?speed_value 10)))
	(focus PLANIFICARE)
)
; ---------
