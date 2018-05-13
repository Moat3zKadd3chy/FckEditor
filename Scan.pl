#!usr/bin/perl

# Coded BY Kadd3chy

use HTTP::Request;
use LWP::UserAgent;


system('cls');
system(' Title FckEditor Dir Tester');
system "color b";
print"\n";
print  "\t>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n";
print "\t+                    Coded BY Kadd3chy                             +\n";
print "\t+                                                                  +\n";
print "\t+                   FCkEditor Dir Tester                           +\n";
print  "\t>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n";
print "\n";

print "[+] Scan Your Target Here [+] \n";

print "Enter Target : \n";

$site=<STDIN>;
chomp $site;

if($site !~ /http:\/\//) { $site = "http://$site/"; };

print "\n";

@path = ('/editor/editor/filemanager/connectors/uploadKadd3chy.html',
'/editor/editor/filemanager/upload/Kadd3chy.html',
'/editor/editor/filemanager/browser/default/connectors/Kadd3chy.html',
'/editor/editor/filemanager/connectors/Kadd3chy.html',
'/admin/fckeditor/editor/filemanager/connectors/Kadd3chy.html',
'/FCKeditor/editor/filemanager/upload/Kadd3chy.html',
'/Fckeditor/editor/filemanager/browser/default/connectors/Kadd3chy.html',
'/admin/FCKeditor/editor/filemanager/connectors/uploadKadd3chy.html',
'/admin/FCKeditor/editor/filemanager/upload/Kadd3chy.html',
'/Fckeditor/editor/filemanager/connectors/Kadd3chy.html',
'/admin/fckeditor/editor/filemanager/browser/default/connectors/Kadd3chy.html',
'/FCKeditor/editor/filemanager/connectors/uploadKadd3chy.html',
'/js/fckeditor/editor/filemanager/connectors/Kadd3chy.html',
'/admin/FCKeditor/editor/filemanager/connectors/Kadd3chy.html',
'/admin/FCKeditor/editor/fckeditor.html',
'/include/fckeditor/_samples/default.html',
'/include/fckeditor/editor/filemanager/connectors/Kadd3chy.html',);


foreach $fckeditor(@path){

$url = $site.$fckeditor;
$req = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($req);

if ($response->is_success){
print "$fckeditor\n";
 $url = substr($url, $fckeditor + 13);
 $fckeditor = substr($url, 0, index($url, '"'));
 open (txt,">>Don3.txt");
 print txt  $fckeditor,"\n";
 close(txt);
print "=> Dir Founded : $url\n";
}
else {
print "=>  Sorry Not Found : $fckeditor\n";
}}