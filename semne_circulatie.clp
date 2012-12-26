(deffacts semne_circulatie
	; ******************************************* Prioritate
	(semn prioritate stop)
 	(semn prioritate cedeaza_trecerea)
 	(semn prioritate drum_cu_prioritate)
 	(semn prioritate obligatoriu_la_stanga)
 	(semn prioritate obligatoriu_la_dreapta)
 	(semn prioritate obligatoriu_in_fata)
 	(semn prioritate sens_giratoriu)
 	(semn prioritate trecere_la_nivel_cu_cale_ferata)
 	; ******************************************* De interzicere
 	
 	(semn interzicere acces_interzis)
 	(semn interzicere limitare viteza)
 	(semn interzicere interzis_virare_stanga)
 	(semn interzicere interzis_virare_dreapta)
; 	(semn interzicere intoarcerea_interzisa)
 	(semn interzicere interzis_ambele_sensuri)
 	(semn interzicere depasire_interzisa)
 	(semn interzicere sfarsit_zona_limitare_de_viteza)
 	(semn interzicere oprirea_interzisa)
 	(semn interzicere stationarea_interzisa)
 	(semn interzicere sfarsit_interzicerii_de_depasire)
 	; ******************************************** Avertizare
 	
 	(semn avertizare presemnalizare_trecere_pietoni)
 	(semn avertizare presemnalizare_trecere_cu_nivel_de_cale_ferata)
 	(semn avertizare presemnalizare_intersectie_cu_drum_fara_prioritate)
 	(semn avertizare presemnalizare_sens_giratoriu)
 	(semn avertizare presemnalizare_circulatie_in_ambele_sensuri)
 	; ******************************************** Informare
 	(semn avertizare sens_unic) 	
 	(semn avertizare trecere_pietoni)
 	(semn avertizare parcare)
 	(semn avertizare statie_benzina)
 	(semn avertizare politie)
 	; ******************************************** 
 )
 ;===================================================
 (deffacts marcaje_circulatie
 	(marcaj cedeaza_trecerea)
 	(marcaj stop)
 	(marcaj incadrare_inainte)
 	(marcaj trecere_pietoni)
 	(marcaj incadrare_stanga)
 	(marcaj incadrare_dreapta)
 	(marcaj linie_continua)
 	(marcaj linie_intrerupta)
 	(marcaj parcare)
 )
 ;=================================================
 (deffacts semnale_politist
	(semnal brat_ridicat_vertical)
	(semnal brat_ridicat_orizontal)
	(semnal brate_ridicate_orizontal)
	(semnal balansare_brat_cu_dispozitiv_luminos)
	(semnal rotire_brat)
	(semnal balansare_verticala_brat)
 )
 ;=================================================
 (deffacts culori_semafor
 	(semafor rosu)
 	(semafor galben)
 	(semafor verde)
 )
  ;=================================================
  (deffacts fapte_urgenta
  	(urgenta aparitie_persoana)
  	(urgenta aparitie_animal)
  	;etc
  )
