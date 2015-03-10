xquery version "1.0";

(: Generated with EditiX at Thu Feb 26 12:03:09 CET 2015 :)

<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
 <head><title></title></head>
<body>
<table border="1">
	<tr> 
		<td> Maisons </td>
		<td> Surface(m2) </td>
	</tr>
	
	{for $m in //@id
		
			return 
			<tr>
				<td>maison {fn:data($m)} </td>
				
				<td> {sum(//@surface-m2[../../../@id=$m]) }</td>
				
			</tr>
			}
	
</table>
</body>
</html>
