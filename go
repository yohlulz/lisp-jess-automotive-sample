rm -rf output
mkdir output
echo '(clear)
      (batch "etc/constante.clp")
      (batch "modules/modul_principal.clp")
      (batch "modules/modul_clear.clp")
      (batch "modules/modul_imediat.clp")
      (batch "modules/modul_conducere.clp")
      (batch "modules/modul_planificare.clp")
      (reset)
      (run)  
      (facts IMEDIAT)
      (facts CONDUCERE)
      (facts PLANIFICARE)
      (facts MAIN)
      (exit)
     ' | java -classpath ../Jess71p2/lib/jess.jar:../Jess71p2/lib/jsr94.jar jess.Main -nologo > output/rez.txt
