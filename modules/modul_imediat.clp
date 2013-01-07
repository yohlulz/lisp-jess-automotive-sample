;------------IMEDIAT---------------------------------------
(defmodule IMEDIAT)
; ************************ SEMNE ************************************
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_stop
	(declare (salience ?*SALIENCE_SEMN_STOP*))
?r1 <-	(MAIN::semn prioritate stop)
	=>
	(assert (MAIN::need-action oprire))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_trecere_nivel_cale_ferata
	(declare (salience ?*SALIENCE_SEMN_STOP*))
?r1 <-	(MAIN::semn prioritate trecere_la_nivel_cu_cale_ferata)
	=>
	(assert (MAIN::need-action oprire))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_cedeaza_trecerea
	(declare (salience ?*SALIENCE_SEMN_CEDEAZA*))
?r1 <-	(MAIN::semn prioritate cedeaza_trecerea)
	=>
	(assert (MAIN::need-action cedare))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_sens_giratoriu
	(declare (salience ?*SALIENCE_SEMN_CEDEAZA*))
?r1 <-	(MAIN::semn prioritate sens_giratoriu)
	=>
	(assert (MAIN::need-action cedare))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_drum_cu_prioritate
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn prioritate drum_cu_prioritate)
	=>
	(assert (MAIN::kb prioritate))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_obligatoriu_stanga
	(declare (salience ?*SALIENCE_SEMN_OBLIGARE*))
?r1 <-	(MAIN::semn prioritate obligatoriu_la_stanga)
	=>
	(assert (MAIN::need-action virare stanga))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_obligatoriu_dreapta
	(declare (salience ?*SALIENCE_SEMN_OBLIGARE*))
?r1 <-	(MAIN::semn prioritate obligatoriu_la_dreapta)
	=>
	(assert (MAIN::need-action virare dreapta))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_prioritate_obligatoriu_fata
	(declare (salience ?*SALIENCE_SEMN_OBLIGARE*))
?r1 <-	(MAIN::semn prioritate obligatoriu_in_fata)
	=>
	(assert (MAIN::need-action virare no ALL))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_acces_interzis
	(declare (salience ?*SALIENCE_SEMN_STOP*))
?r1 <-	(MAIN::semn interzicere acces_interzis)
	=>
	(assert (MAIN::need-action virare stanga))
	(assert (MAIN::need-action virare dreapta))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_acces_interzis
	(declare (salience ?*SALIENCE_SEMN_STOP*))
?r1 <-	(MAIN::semn interzicere acces_interzis)
	=>
	(assert (MAIN::need-action virare stanga))
	(assert (MAIN::need-action virare dreapta))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_virare_stanga
	(declare (salience ?*SALIENCE_SEMN_OBLIGARE*))
?r1 <-	(MAIN::semn interzicere interzis_virare_stanga)
	=>
	(assert (MAIN::need-action virare no stanga))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_virare_dreapta
	(declare (salience ?*SALIENCE_SEMN_OBLIGARE*))
?r1 <-	(MAIN::semn interzicere interzis_virare_dreapta)
	=>
	(assert (MAIN::need-action virare no dreapta))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_interzis_ambele_sensuri
	(declare (salience ?*SALIENCE_SEMN_STOP*))
?r1 <-	(MAIN::semn interzicere interzis_ambele_sensuri)
	=>
	(assert (MAIN::need-action virare stanga))
	(assert (MAIN::need-action virare dreapta))
	(retract ?r1)
	(focus PLANIFICARE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_depasire_interzisa
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn interzicere depasire_interzisa)
	=>
	(assert (MAIN::kb no depasire))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_sfarsit_zona_limitare_de_viteza
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn interzicere sfarsit_zona_limitare_de_viteza)
	=>
	(assert (MAIN::kb no limitare))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_oprire_interzisa
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn interzicere oprire_interzisa)
	=>
	(assert (MAIN::kb no oprire))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_sfarsit_zona_stationare_interzisa
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn interzicere sfarsit_zona_stationare_interzisa)
	=>
	(assert (MAIN::kb no stationare))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_sfarsit_interzicere_depasire
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn interzicere sfarsit_interzicerii_de_depasire)
	=>
	(assert (MAIN::kb depasire))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_interzicere_limitare_viteza
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn interzicere limitare_viteza)
	=>
	(assert (MAIN::kb limitare))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_avertizare_sens_unic
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare sens_unic)
	=>
	(assert (MAIN::kb sens_unic))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_avertizare_trecere_pietoni
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare trecere_pietoni)
	=>
	(assert (MAIN::kb trecere_pietoni))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_avertizare_parcare
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare parcare)
	=>
	(assert (MAIN::kb parcare))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_avertizare_statie_benzina
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare statie_benzina)
	=>
	(assert (MAIN::kb statie_benzina))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_avertizare_politie
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare politie)
	=>
	(assert (MAIN::kb politie))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_presemnalizare_trecere_pietoni
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare presemnalizare_trecere_pietoni)
	=>
	(assert (MAIN::kb presemnalizare trecere_pietoni))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_presemnalizare_trecere_la_nivel_cu_cale_ferata
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare presemnalizare_trecere_cu_nivel_de_cale_ferata)
	=>
	(assert (MAIN::kb presemnalizare trecere_nivel_cale_ferata))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_presemnalizare_intersectie_cu_drum_fara_prioritate
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare presemnalizareintersectie_cu_drum_fara_prioritate)
	=>
	(assert (MAIN::kb presemnalizare intersectie_cu_drum_fara_prioritate))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_presemnalizare_presemnalizare_sens_giratoriu
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare presemnalizare_sens_giratoriu)
	=>
	(assert (MAIN::kb presemnalizare sens_giratoriu))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_presemnalizare_circulatie_in_ambele_sensuri
	(declare (salience ?*SALIENCE_SEMN_KB*))
?r1 <-	(MAIN::semn avertizare presemnalizare_circulatie_in_ambele_sensuri)
	=>
	(assert (MAIN::kb presemnalizare circulatie_in_ambele_sensuri))
	(retract ?r1)
	(focus CONDUCERE)
)
; *********************************** MARCAJE ***********************************
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_cedeaza_trecerea
	(declare (salience ?*SALIENCE_MARCAJ_CEDEAZA*))
?r1 <-	(MAIN::marcaj cedeaza_trecerea)
	=>
	(assert (MAIN::need-action cedare))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_stop
	(declare (salience ?*SALIENCE_MARCAJ_STOP*))
?r1 <-	(MAIN::marcaj stop)
	=>
	(assert (MAIN::need-action oprire))
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_trecere_pietoni
	(declare (salience ?*SALIENCE_MARCAJ_KB*))
?r1 <-	(MAIN::marcaj trecere_pietoni)
	=>
	(assert (MAIN::kb trecere_pietoni))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_incadrare_inainte
	(declare (salience ?*SALIENCE_MARCAJ_KB*))
?r1 <-	(MAIN::marcaj incadrare_inainte)
	=>
	(assert (MAIN::kb incadrare_inainte))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_incadrare_stanga
	(declare (salience ?*SALIENCE_MARCAJ_KB*))
?r1 <-	(MAIN::marcaj incadrare_stanga)
	=>
	(assert (MAIN::kb incadrare_stanga))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_incadrare_dreapta
	(declare (salience ?*SALIENCE_MARCAJ_KB*))
?r1 <-	(MAIN::marcaj incadrare_dreapta)
	=>
	(assert (MAIN::kb incadrare_dreapta))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_linie_continua
	(declare (salience ?*SALIENCE_MARCAJ_ATENTIE*))
?r1 <-	(MAIN::marcaj linie_continua)
	=>
	(assert (MAIN::kb linie_continua))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_linie_intrerupta
	(declare (salience ?*SALIENCE_MARCAJ_KB*))
?r1 <-	(MAIN::marcaj linie_intrerupta)
	=>
	(assert (MAIN::kb linie_intrerupta))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_marcaj_parcare
	(declare (salience ?*SALIENCE_MARCAJ_KB*))
?r1 <-	(MAIN::marcaj parcare)
	=>
	(assert (MAIN::kb parcare))	
	(retract ?r1)
	(focus CONDUCERE)
)
; **************************** SEMAFOR ************************************
; ---------
(defrule IMEDIAT::actiune_imediata_semafor_verde
	(declare (salience ?*SALIENCE_SEMAFOR_DEFAULT*))
?r1 <-	(MAIN::semafor verde)
	=>
	(assert (MAIN::kb semafor verde))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_semafor_rosu
	(declare (salience (+ ?*SALIENCE_SEMAFOR_DEFAULT* 1)))
?r1 <-	(MAIN::semafor rosu)
	=>
	(assert (MAIN::need-action oprire))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_semafor_galben
	(declare (salience ?*SALIENCE_SEMAFOR_DEFAULT*))
?r1 <-	(MAIN::semafor galben)
	=>
	(assert (MAIN::need-action reducere_viteza))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ****************************** SEMNAL POLITIST *****************************
; ---------
(defrule IMEDIAT::actiune_imediata_semnal_brat_ridicat_vertical
	(declare (salience ?*SALIENCE_SEMNAL_DEFAULT*))
?r1 <-	(MAIN::semnal brat_ridicat_vertical)
	=>
	(assert (MAIN::need-action oprire))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_semnal_brat_ridicat_orizontal
	(declare (salience ?*SALIENCE_SEMNAL_DEFAULT*))
?r1 <-	(MAIN::semnal brat_ridicat_orizontal)
	=>
	(assert (MAIN::need-action oprire))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_semnal_balansare_brat_cu_dispozitiv_luminos
	(declare (salience ?*SALIENCE_SEMNAL_DEFAULT*))
?r1 <-	(MAIN::semnal balansare_brat_cu_dispozitiv_luminos)
	=>
	(assert (MAIN::need-action oprire))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_semnal_brate_ridicate_orizontal
	(declare (salience ?*SALIENCE_SEMNAL_DEFAULT*))
?r1 <-	(MAIN::semnal brate_ridicate_orizontal)
	=>
	(assert (MAIN::need-action oprire))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_semnal_rotire_brat
	(declare (salience ?*SALIENCE_SEMNAL_DEFAULT*))
?r1 <-	(MAIN::semnal rotire_brat)
	=>
	(assert (MAIN::need-action marire_viteza))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ---------
(defrule IMEDIAT::actiune_imediata_semnal_balansare_verticala_brat
	(declare (salience ?*SALIENCE_SEMNAL_DEFAULT*))
?r1 <-	(MAIN::semnal balansare_verticala_brat)
	=>
	(assert (MAIN::need-action reducere_viteza))	
	(retract ?r1)
	(focus CONDUCERE)
)
; ****************************** URGENTE **************************************
; ---------
(defrule IMEDIAT::actiune_imediata_semnal_ALL
	(declare (salience ?*SALIENCE_URGENTA_DEFAULT*))
?r1 <-	(MAIN::urgenta ?value)
	=>
	(assert (MAIN::need-action urgenta evitare))
	(assert (MAIN::need-action urgenta oprire))
	(retract ?r1)
	(printout t "[info] Situatie de urgenta: " ?value " ." crlf)
	(focus CONDUCERE)
)
