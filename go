
echo '(clear)
      (batch "constante.clp")
      (batch "modul_principal.clp")
      (batch "modul_imediat.clp")
      (batch "modul_conducere.clp")
      (batch "modul_planificare.clp") 
      (reset)
      (run)  
      (facts IMEDIAT)
      (facts CONDUCERE)
      (facts MAIN)
      (exit)
     ' | java jess.Main -nologo > rez.txt
