#!/usr/bin/awk -f
#Yen Pham

NR==1{next}
{
if ($1<=0||$2<=0||$3<=0)
print "NO";
else if (($1>=$2+$3)||($2>=$1+$3)||($3>=$2+$1))
print "NO";
else
print "YES";
}