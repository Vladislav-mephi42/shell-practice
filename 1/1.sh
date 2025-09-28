#!/bin/bash


#LOG STRUCTURE 
#$1 - IP adress
#$2 - user indentifier ("-" - empty field)
#$3 - user name ("-" - empty field)
#$4-5 - time label ([day/month/year:hour:minute:second time_zone])
#$6 - HTTP query: Method
#$7 - HTTP query: URI
#$8 - HTTP query: protocol version
#$9 - status code
#$10 - response size
#COMBINE FORMAT (+ two fields)
#$11 - referrer
#$12 - User-Agent
#NGINX EXTENDED FORMAT
#$13 - Forwarded IP
#$14 - request time
#$15 - application name 


echo "10 ip addresses :"
echo "most frequently access your web server"
echo  "number of requests from each of them"
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head -10


echo "status codes and number of these"
awk '{print $9}' access.log | sort | uniq -c | sort -nr