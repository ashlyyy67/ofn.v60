<?php

$index = $_POST['index'];
$xml = new DOMDocument();

$xml->load("trainee.xml");
$trainees = $xml->getElementsByTagName("trainee");
  $trainee = $trainees->item($index);
    $trainee->parentNode->removeChild($trainee);

$xml-> Save('trainee.xml');

?> 
