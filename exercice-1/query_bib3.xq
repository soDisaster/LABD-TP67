let $bib := "/home/m1/saintomer/Documents/S2/LABD/tp7/exercice-1/biblio.xml" 
return
<results> { 
let $a := doc($bib)//author 
for $last in distinct-values($a/last), 
$first in distinct-values($a[last=$last]/first) 
order by $last, $first 
return 
<result><author> <last>{$last}</last> 
<first>{$first}</first> </author> 
   { for $b in doc($bib)/bib/book 
     where some $ba in $b/author 
     satisfies ($ba/last = $last and  
                $ba/first=$first) 
     return $b/title } 
      </result>   } 
</results>
