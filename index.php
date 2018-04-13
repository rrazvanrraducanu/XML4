<?php
   $xslDoc = new DOMDocument();
   $xslDoc->load("doc.xsl");

   $xmlDoc = new DOMDocument();
   $xmlDoc->load("doc.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($xslDoc);
   echo $proc->transformToXML($xmlDoc);
?>
