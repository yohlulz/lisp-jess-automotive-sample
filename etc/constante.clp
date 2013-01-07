; ---------------------------------
; grupuri de prioritate pentru fiecare categorie
; -----------
; in fiecare categorie de prioritate pot fii mai multe prioritati
; pentru diverse semne/semnale/marcaje/etc.
; ----------
; pentru fiecare grup pot fi definite aici alte constante cu prioritati
; specifice sau in reguli pot fi folosite 
;(salience (+ ?*SALIENCE_GRUP_DEFAULT* increment_disponibil_dorit))
; ----------------------------------
;
; =============== Grup prioritati marcaje
(defglobal ?*SALIENCE_MARCAJ_DEFAULT* = -100)

(defglobal ?*SALIENCE_MARCAJ_STOP* = -20)
(defglobal ?*SALIENCE_MARCAJ_ATENTIE* = -60)
(defglobal ?*SALIENCE_MARCAJ_CEDEAZA* = -40)
(defglobal ?*SALIENCE_MARCAJ_KB* = -90)
; =============== END prioritati marcaje

; =============== Grup prioritati semne
(defglobal ?*SALIENCE_SEMN_DEFAULT* = 0)

(defglobal ?*SALIENCE_SEMN_STOP* = 80)
(defglobal ?*SALIENCE_SEMN_CEDEAZA* = 60)
(defglobal ?*SALIENCE_SEMN_KB* = 20)
(defglobal ?*SALIENCE_SEMN_OBLIGARE* = 40)
; =============== END prioritati semne

; =============== Grup prioritati semafor
(defglobal ?*SALIENCE_SEMAFOR_DEFAULT* = 100)
; =============== END prioritati semafor

; =============== Grup prioritati semanle politist
(defglobal ?*SALIENCE_SEMNAL_DEFAULT* = 200)
(defglobal ?*SALIENCE_SEMNAL_MARIRE* = 400)
; =============== END prioritati semnale politist

; =============== Grup prioritati life/death
(defglobal ?*SALIENCE_URGENTA_DEFAULT* = 9000)
; =============== END prioritati life/death >:)

; ================ Constante DEBUG LEVEL ==============
(defglobal ?*INFO* = "[info]")
(defglobal ?*WARN* = "[warn]")
(defglobal ?*ERROR* = "[error]")
(defglobal ?*DEBUG* = "[debug]")
; ================ END constante DEBUG LEVEL ==========
(defglobal ?*PRAG_VITEZA* = 60)
