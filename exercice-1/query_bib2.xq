let $bib :="/home/m1/saintomer/Documents/S2/LABD/tp7/exercice-1/biblio.xml" 
return
<results> 
   { 
   for $b in doc($bib)//book, 
       $t in $b/title, 
       $a in $b/author 
   return 
      <result> 
         {$t,$a} 
      </result> 
} 
</results>
