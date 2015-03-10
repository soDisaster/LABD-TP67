xquery version "1.0";

(: Generated with EditiX at Thu Feb 26 12:03:09 CET 2015 :)
declare variable $fam := "C:/Users/Thibault/Music/Documents/cours/M/1/LABD/tp7/exercice-3/plant_families.xml" ;
<CATALOG>
	{ for $m in //PLANT
			return 
			<PLANT>
			{$m/COMMON}
			{$m/BOTANICAL}
			{$m/ZONE}
			{$m/LIGHT}
			{$m/PRICE}
			{$m/AVAILABILITY}
			<FAMILY>{fn:data(doc($fam)//SPECIES[.=$m/BOTANICAL]/../NAME)}</FAMILY>
			</PLANT>
		}
</CATALOG>		


