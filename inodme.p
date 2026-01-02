<?php
$Name  = $_POST['Name'];
$Email = $_POST['Email'];
$Major = $_POST['Major'];

$xml = new DOMDocument();
$xml->load('trainee.xml');

$root = $xml->getElementsByTagName('trainees')->item(0);

// Create trainee
$trainee = $xml->createElement('trainee');
$trainee->appendChild($xml->createElement('Name', $Name));
$trainee->appendChild($xml->createElement('Email', $Email));
$trainee->appendChild($xml->createElement('Major', $Major));

// Append and save
$root->appendChild($trainee);
$xml->save('trainee.xml');
?>
