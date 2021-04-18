<?php
$conn = mysqli_connect('db', 'www.***REMOVED***', '***REMOVED***', 'www.***REMOVED***', 3306);
mysqli_set_charset($conn, "utf8");
$query = 'SHOW TABLES';
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Demo</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>

<body>
  <p><b>PHP Version : </b><?php echo phpversion() ?></p>
  <p><b>Mysql Version : </b><?php echo $conn->get_server_info() ?></p>
  <p><b>Show Tables of current Database : </b><ul></ul></p>
    <?php
	$i = 0;
    while ($value = $result->fetch_array(MYSQLI_ASSOC)) {
      foreach ($value as $element) {
		if($i > 4){
			break;
		}
		$i++;
        echo "<li>${element}</li>";
      }
    }
	echo "<li>...</li>";
    $result->close();
    mysqli_close($conn);
    ?>
    -
  </p>
</body>

</html>