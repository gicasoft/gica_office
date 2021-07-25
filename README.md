# gica_office

sul sito web https://www.gicasoft.it è già presente una versione del software per la fattura elettronica che crea il file xml e lo invia. Il software riceve pure le email, eventuali fatture di acquisto e le notifiche ricevute dalla agenzia delle entrate.

Peccato che il software è scritto in delphi 6 per l'80% soltanto ultimamente con la comunity edition ho creato dei moduli con l'ultima versione di delphi.
La versione attualmente esistente ha archivi un po mdb e un po gli obsoleti paradox gestiti con il bde. :(

Obbiettivo della nuova versione sarà il create tutto il software con delphi 10.3 e archivi access.

Primo step del progetto :

1)Realizzazione di un software funzionante e testabile. 
  funzionalità necessarie:
  la fatturazione, invio Pec con xml e ricezione Pec con notifiche e/o fatture di acquisto.
  gestione dell'inserimento multiplo da più postazioni
  (possibilmente access non è il migliore archivio utlizzabile però ha una semplicità d'uso tale da rendere obbligatoria la scelta)
  
  2) inserimento delle funzionalità di magazzino 
  3) collegamento a dispositivi (terminali intelligenti, etichettatrici,casse telematiche)
     ( per alcune funzioni dovrei copiare tutto dal vecchio software)
     
     
     Alcuni moduli verranno resi disponibili per tutti i programmatori delphi.
     
     
     data consegna del progetto : Dicembre 2021 ... da consegnare e vendere.
     
     Per visualizzare le fatture uso un software preso qui su github ... devo ricercarlo e metterò il link.
     
     26/07/2021 (domani) posterò il codice sorgente del software per inviare le pec con la fattura elettronica e ricevere le notifiche e fatture di acquisto. Il software chiamato project1 ( :( ) è strettamente legato al programma gica_office che lo richiama con il comando winexec in delphi 6 e createprocess con delphi 10.3.
     
     
     
     
