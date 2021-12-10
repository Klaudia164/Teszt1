<?php
	require "includes/db.inc.php";
?>
<table>
				<?php
					$sql = "SELECT `irsz`, `nev` FROM `telep` ORDER BY `telep`.`nev` ASC;";
					$result = $conn->query($sql);
					if ($result->num_rows > 0) {
						while($row = $result->fetch_assoc()) {
							echo "<tr><td>".$row["nev"]." ".$row["irsz"]."</td></tr>";
						}
					}
				?>
		</table>
	</body>
</html>