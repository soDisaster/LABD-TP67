xquery version "1.0";

(: Generated with EditiX at Thu Feb 26 14:44:49 CET 2015 :)


declare variable $fam := "C:/Users/Thibault/Music/Documents/cours/M/1/LABD/tp7/exercice-3/plant_families.xml" ;
<CATALOG>
	{ for $m in distinct-values( //LIGHT)
	order by $m ascending
			return 
	<LIGHT>
		<EXPOSURE>{fn:data($m)}</EXPOSURE>
		{for $p in //PLANT
		where $p/LIGHT = $m
		order by $p/COMMON ascending
		return
		<PLANT>
			{$p/COMMON}
			{$p/BOTANICAL}
			{$p/ZONE}
			{$p/PRICE}
			{$p/AVAILABILITY}
			<FAMILY>{fn:data(doc($fam)//SPECIES[.=$p/BOTANICAL]/../NAME)}</FAMILY>
		</PLANT>
		}

	</LIGHT>
			
	}
</CATALOG>
