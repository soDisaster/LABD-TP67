declare variable $bib := "/home/m1/saintomer/Documents/S2/LABD/tp7/exercice-1/biblio.xml" ;

<bib> 
   { 
   for $b in doc($bib)//book 
   where $b/publisher = "Addison-Wesley" and 
       $b/@year > 1991 
   return 
      <book year="{$b/@year}"> 
         {$b/title} 
      </book> 
   } 
</bib>
