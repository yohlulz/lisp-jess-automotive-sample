;------------MAIN-----------------------------------------
(defrule constructie
=>
	(try
		(load-facts "etc/init.clp")
		(printout t crlf ?*INFO*" Pornim masina ..." crlf)
		(assert (timer 0))
	catch
		(printout t ?*ERROR*" Fisierul de initializare \"init.clp\" lipsa." crlf)
		(halt)
	)	
)
;----------------
(defrule increment_timer
	(declare (salience 9999))
	?r1 <- (timer ?time)
 =>
 	(try
	    (printout t ?*INFO* " Tick " ?time ": ")
            (load-facts (sym-cat perception/ ?time .clp))
;           (printout t "[info] Loaded file: \""?time".clp\"" crlf)            
            (printout t "Found and loaded perception." crlf)
         catch
;            (printout t "[info] File \""?time".clp\" not found" crlf)
	     (printout t "No perception found." crlf)
         finally
            (assert (timer (+ ?time 1)))
            (retract ?r1)
            (focus IMEDIAT)
        )
)

;-------------------
(defrule stop_all
	(declare (salience 10000))
 ?r1 <-	(timer ?time)
 ?r2 <-	(finish ?time)
=>
	(retract ?r1)
	(retract ?r2)
	(printout t ?*INFO* " Tick " ?time crlf)
	(printout t "Oprim masina ..." crlf)
	(halt)
)
