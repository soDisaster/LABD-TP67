xquery version "1.0";

(: Generated with EditiX at Thu Feb 26 14:58:44 CET 2015 :)


declare variable $cat := "C:/Users/Thibault/Music/Documents/cours/M/1/LABD/tp7/exercice-3/plant_catalog.xml" ;

	<PRICE>
		{round-half-to-even(
			sum(
				for $p in //PLANT
					return
				(xs:double(fn:data(substring(doc($cat)//PRICE[../COMMON = $p/COMMON],2)))) * fn:data($p/QUANTITY)
			)
		,1)
		}
	</PRICE>
