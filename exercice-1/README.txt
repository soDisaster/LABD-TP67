Thibault Rosa
Anne-Sophie Saint-Omer

Exercice 1


query_bib1.xq

Donne le titre de tous les livres publiés par Addison-Wesley après l'année 1991.


<?xml version="1.0" encoding="UTF-8"?>
<bib>
   <book year="1994">
      <title>TCP/IP Illustrated</title>
   </book>
   <book year="1992">
      <title>Advanced Programming in the Unix environment</title>
   </book>
</bib>


querybib2.xq

Donne le titre et l'auteur de chaque livre.


<?xml version="1.0" encoding="UTF-8"?>
<results>
   <result>
      <title>TCP/IP Illustrated</title>
      <author>
         <last>Stevens</last>
         <first>W.</first>
      </author>
   </result>
   <result>
      <title>Advanced Programming in the Unix environment</title>
      <author>
         <last>Stevens</last>
         <first>W.</first>
      </author>
   </result>
   <result>
      <title>Data on the Web</title>
      <author>
         <last>Abiteboul</last>
         <first>Serge</first>
      </author>
   </result>
   <result>
      <title>Data on the Web</title>
      <author>
         <last>Buneman</last>
         <first>Peter</first>
      </author>
   </result>
   <result>
      <title>Data on the Web</title>
      <author>
         <last>Suciu</last>
         <first>Dan</first>
      </author>
   </result>
</results>


querybib3.xq


Donne le nom et le prénom d'un auteur ainsi que le titre de ses livres.


<?xml version="1.0" encoding="UTF-8"?>
<results>
   <result>
      <author>
         <last>Abiteboul</last>
         <first>Serge</first>
      </author>
      <title>Data on the Web</title>
   </result>
   <result>
      <author>
         <last>Buneman</last>
         <first>Peter</first>
      </author>
      <title>Data on the Web</title>
   </result>
   <result>
      <author>
         <last>Stevens</last>
         <first>W.</first>
      </author>
      <title>TCP/IP Illustrated</title>
      <title>Advanced Programming in the Unix environment</title>
   </result>
   <result>
      <author>
         <last>Suciu</last>
         <first>Dan</first>
      </author>
      <title>Data on the Web</title>
   </result>
</results>


querybib4.xq

La même chose que la requête précédente.


<?xml version="1.0" encoding="UTF-8"?>
<results>
   <result>
      <author>
         <last>Abiteboul</last>
         <first>Serge</first>
      </author>
      <title>Data on the Web</title>
   </result>
   <result>
      <author>
         <last>Buneman</last>
         <first>Peter</first>
      </author>
      <title>Data on the Web</title>
   </result>
   <result>
      <author>
         <last>Stevens</last>
         <first>W.</first>
      </author>
      <title>TCP/IP Illustrated</title>
      <title>Advanced Programming in the Unix environment</title>
   </result>
   <result>
      <author>
         <last>Suciu</last>
         <first>Dan</first>
      </author>
      <title>Data on the Web</title>
   </result>
</results>


querybib5.xq

Donne les deux premiers auteurs des livres qui ont au moins un auteur. Si il y a plus de deux auteurs affiche <et-al/>

<?xml version="1.0" encoding="UTF-8"?>
<bib>
   <book>
      <title>TCP/IP Illustrated</title>
      <author>
         <last>Stevens</last>
         <first>W.</first>
      </author>
   </book>
   <book>
      <title>Advanced Programming in the Unix environment</title>
      <author>
         <last>Stevens</last>
         <first>W.</first>
      </author>
   </book>
   <book>
      <title>Data on the Web</title>
      <author>
         <last>Abiteboul</last>
         <first>Serge</first>
      </author>
      <author>
         <last>Buneman</last>
         <first>Peter</first>
      </author>
      <et-al/>
   </book>
</bib>





querybib6.xq

Nombre de livres écrit.

<?xml version="1.0" encoding="UTF-8"?>
<results>
   <result>
      <author>
         <last>Abiteboul</last>
         <first>Serge</first>
      </author>
      <number>1</number>
   </result>
   <result>
      <author>
         <last>Buneman</last>
         <first>Peter</first>
      </author>
      <number>1</number>
   </result>
   <result>
      <author>
         <last>Stevens</last>
         <first>W.</first>
      </author>
      <number>2</number>
   </result>
   <result>
      <author>
         <last>Suciu</last>
         <first>Dan</first>
      </author>
      <number>1</number>
   </result>
</results>




querybib7.xq


Affiche la moyenne de prix par année

<?xml version="1.0" encoding="UTF-8"?>
<data>
   <year avgprice="65.95" value="1994"/>
   <year avgprice="65.95" value="1992"/>
   <year avgprice="39.95" value="2000"/>
   <year avgprice="129.95" value="1999"/>
</data>




