#!/usr/bin/php
<?php
require_once("studentDB.inc");

echo "Executing script: ".$argv[0].PHP_EOL;
$studentName = $argv[1];
$studentId = $argv[2];
$studentAddress = $argv[3];
$studentYear = $argv[4];
$studentDB = new StudentAccess("Classes");
$studentDB->addStudentRecord(
	$studentName,
	$studentId,
	$studentAddress,
	$studentYear
);

$students = $studentDB->getStudentRecords();

echo "Student records in DB are:".PHP_EOL;
print_r($students);

echo $argv[0]." complete".PHP_EOL;
?>
