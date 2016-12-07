#!/bin/bash
#descrption  analysis the web accesslog
#date  2016-12-7

#firstly,you should merge the accesslog.secondly,use awk deal with the text
#first scrpit
#!/bin/bash
awk 'if($9==200 & $7 ~/^\/2022/.*.html$){sort[$]+=1;for(i in sort) print i,sort[i]}' /tmp/test.log
