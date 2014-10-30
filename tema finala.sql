---Note: 1. pentru fiecare cerinta exista un minim si un extra.
---			Bineinteles se puncteaza cerintele minime, cele extra sunt bonus, cine le face primeste.....o inghetata la vara :)
---		 2. bineinteles ca sunt acceptate doar scripturi .sql si nu print screen-uri din ssms :)



---Tema: discutam de un magazin cu produse, categorii de produse, stocuri, pret unitar asociat produsului si valoarea stocului


-----Prima cerinta
----Minim: creati o baza de date destinata unui "Magazin"  in care retinem detalii despre magazin, produsele comercializate in magazin si stocuri
----Extra: fisierele bazei de date se regasesc in locatia "c:\databases\" sau "D:\Databases\"
----HINTS: CREATE

---Cerinta doi 
----Baza de date contine tabelele 
	---Magazin
	---Produs
	---CategorieProdus - in care sunt stocate categoriile de produse
	---Stoc - in aceasta tabela se tin informatii cantitative despre produse 
	---Intrari - ce produse intra in stocurile (produs, cantitate, pret unitar, data de intrare a produsului in stocul magazinului)
	---Iesiri - ce produse ies din stoc (produs, cantitate, pret unitar, data de iesire a produsului din stocul magazinului)

----Minim:  construiti structura astfel incat sa nu se poata adauga un produs fara sa se specifice magazinul si categoria produsului; 
----		sa nu se poata adauga informatii cantitative in stoc fara sa se precizeze produsul si magazinul
----		sa nu se poata adauga informatii in intrari iesiri fara sa se precizeze produsul, data, magazinul
----Extra: Construiti un trigger care sa populeze tabela stoc  
----Hints: foreign keys, primary keys


----Cerinta trei 
----Minim: sa se scrie un script de populare a tabelelor astfel incat sa existe 2 magazine, iar pentru fiecare magazin sa existe in stoc 4 produse din cele 6 categorii disponibile
----Extra: sa se scrie un script de populare precum cel de mai sus folosind iteratie /bucla
----Hints: INSERT, WHILE , CAST/CONVERT, N'Produs' + counter



----Cerinta patru:
----Minim: sa se scrie un query din care sa reiasa pt fiecare magazin care sunt categoriile de produse inexistente in stoc
----Extra: sa se re-scrie query-ul in cat mai multe moduri
----Hints: LEFT, NOT, IN, NULL, EXCEPT, INTERSECT


----Cerinta cinci :
----Minim : sa se creeze un view care sa contina urmatoarele informatii:
	--magazin
	--denumire produs
	--categorie produs
	--cantitatea aflata in stoc aferenta produsului
----Extra:	realizati un script sql care sa se modifice tabela stoc existenta astfel incat sa existe si pretul unitar asociat unui singur produs; 
----		view-ul de mai sus sa se modifice astfel incat sa contina si valoarea stocului
----Hints: ALTER, INNER, SUM


----Cerinta sase:
----Minim: sa se scrie o procedura care introduce produse in stoc (insereaza informatii in tabela Intrari)
----extra: realizati un script care apeleaza procedura 
----Hints: CREATE, INSERT, DECLARE

----Cerinta sapte:
----Minim: sa se afiseze pentru fiecare magazin ultimele 1 produse adaugate in stoc 
----Maxim: sa se afiseze pentru fiecare magazin primele 2 produse din fiecare categorie de produse adaugate in stoc
----Hints: GROUP BY, ROW_NUMBER  


---Cerinta opt:
---Minim: sa se realizeze un trigger pe tabela Intrari, care sa refaca automat cantitatea din Stoc la introducerea de noi produse in stocul magazinului 
---extra: sa se realizeze un trigger pe tabela Iesiri care sa refaca automat cantitatea din Stoc la iesirea produselor din stocul magazinului
----Hints: TRIGGER, INSERTED

---Cerinta noua: 
---Minim : sa se afiseze ce produse au intrat in ultimele 10 zile in stocul fiecarui magazin, specificand pentru fiecare produs categoria din care face parte
---Extra : sa se afiseze ce produse au iesit in ultimele 10 zile in stocul fiecarui magazin
---Hints: SELECT ,  GROUP , WHERE
  
---Cerinta zece:
---Minim : sa se realizeze o procedura stocata care imi permite sa afisez evolutia cantitativa (cantitate) si valorica (pret*cantitate) a intrarilor pe ultimele n zile astfel
---magazin, data, produs, cantitate, valoare
---Extra: in procedura se apeleaza o functie care returneaza un tabela
---Hints: WHILE, SUM, variabila TABLE, 


---BONUS inlocuiti tabele Intrari Iesiri cu o singura tabela