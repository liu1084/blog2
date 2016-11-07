<?php

$opts = array('http'=>array('header' => "User-Agent:MyAgent/1.0\r\n"));
$context = stream_context_create($opts);
$html = file_get_contents('http://www.studentenwerk-karlsruhe.de/de/essen/?view=ok&STYLE=popup_plain&c=erzberger&p=1&kw=3',false,$context);

libxml_use_internal_errors(true);
$dom = new DomDocument;
$dom->loadHTML($html);
$xpath = new DomXPath($dom);
$nodes = $xpath->query("//table[@class='easy-tab-dot']");
//header("Content-type: text/plain");

foreach ($nodes as $i => $node) {
    $arr = array();

    $children = $node->childNodes;
    foreach ($children as $child) {
        $tmp_doc = new DOMDocument();
        $tmp_doc->appendChild($tmp_doc->importNode($child,true));       
        #echo $tmp_doc->saveHTML();
        print_r( $child );
    }
    echo "#######################################################################################";
}