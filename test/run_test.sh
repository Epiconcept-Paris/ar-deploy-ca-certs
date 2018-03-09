#!/bin/bash

cntname=$(cat hosts | awk '{print $1}')
cntimg=img_$cntname

function runtests
{
	local cntname=$1

	checkPath $cntname /usr/local/share/ca-certificates/thawte_SHA256_SSL_CA.crt
	checkPath $cntname /etc/ssl/certs/thawte_SHA256_SSL_CA.pem
}

source ../../tests/setup_tests.sh