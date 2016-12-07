#!/bin/bash
#descrption  analysis the web accesslog
#find top 10 ip and access count
#date  2016-12-7

#firstly,you should merge the accesslog.secondly,use awk deal with the text
#first scrpit
awk 'if($9==200 & $7 ~/^\/2022/.*.html$){sort[$7]+=1;for(i in sort) print i,sort[i]}' /tmp/test.log

