let $bib :="/home/m1/saintomer/Documents/S2/LABD/tp7/exercice-1/biblio.xml" 
return
<data> {
for $year in distinct-values(doc($bib)//book/@year) 
let $avg := avg(doc($bib)//book[@year=$year]/price/text())
return <year value="{$year}" avgprice="{$avg}"/>
   } 
</data>
