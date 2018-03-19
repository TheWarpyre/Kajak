<?php
// including the database connection file
include_once("../config.php");

if(isset($_POST['update']))
{

	$id = mysqli_real_escape_string($mysqli, $_POST['id']);

	$name = mysqli_real_escape_string($mysqli, $_POST['titel']);
	$age = mysqli_real_escape_string($mysqli, $_POST['dato']);
	$email = mysqli_real_escape_string($mysqli, $_POST['beskrivelse']);

	// checking empty fields
	if(empty($name) || empty($age) || empty($email)) {

		if(empty($name)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}

		if(empty($age)) {
			echo "<font color='red'>Age field is empty.</font><br/>";
		}

		if(empty($email)) {
			echo "<font color='red'>Email field is empty.</font><br/>";
		}
	} else {
		//updating the table
		$result = mysqli_query($mysqli, "UPDATE nyheder SET titel='$name',dato='$age',beskrivelse='$email' WHERE id=$id");

		//redirectig to the display page. In our case, it is index.php
		header("Location: nyheder.php");
	}
}
?>
<?php
//getting id from url
$id = $_GET['id'];

//selecting data associated with this particular id
$result = mysqli_query($mysqli, "SELECT * FROM nyheder WHERE id=$id");

while($res = mysqli_fetch_array($result))

	$name = $res['titel'];
	$age = $res['dato'];
	$email = $res['beskrivelse'];
}
?>
<html>
<head>
	<title>Edit Data</title>
</head>

<body>
	<a href="index.php">Home</a>
	<br/><br/>

	<form name="form1" method="post" action="edit.php">
		<table border="0">
			<tr>
				<td>Name</td>
				<td><input type="text" name="titel" value="<?php echo $name;?>"></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="dato" value="<?php echo $age;?>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="beskrivelse" value="<?php echo $email;?>"></td>
			</tr>
			<tr>
				<td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
				<td><input type="submit" name="update" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>
