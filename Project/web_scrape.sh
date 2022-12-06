#!/bin/bash
#web scraping project D1

if [ $# -ne 1 ]; then
	echo "Usage $(basename $0) 'Product Name'"
	exit -1
fi


curl=$(which curl)
outfile="output.txt"
name=$(echo $1 | tr ' ' '+')
url="https://www.webscraper.io/test-sites/e-commerce/allinone"

#dump webpage
function dump_webpage() {
	$curl -o $outfile $url
	check_errors
}

#clean the webpage
function strip_html() {
	#grep "<p>" $outfile 
}

#checking for errors
function check_errors() {
	[$? -ne 0 ] && echo "Error Downloading page..." && exit -1
}

#grep 'Lenovo' outputtext.txt | cat > lenovo.txt

