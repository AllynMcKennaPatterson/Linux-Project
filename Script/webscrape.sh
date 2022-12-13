#!/bin/bash
#web scraping project D1


curl=$(which curl)
outfile="html.txt"
name=$(echo $1 | tr ' ' '+')
url="https://www.coingecko.com"
coin="btc"

#dump webpage
function dump_webpage() {
        $curl -s -o  $outfile $url
}

#read coin from coin.txt
function read_coin(){
	coin=$(cat ./Script/coin.txt)
}

#clean the webpage
function strip_html() {
        cat $outfile | grep 'data-coin-symbol="'$coin'" data-target' | sed 's/<[^>]*>//g' | cat > ./Script/price.txt
        cat ./Script/price.txt
        
}

#########################
#         MAIN          #
#########################
dump_webpage
read_coin
strip_html