#!/usr/bin/awk -f
#Yen Pham

NR<=2 {next}
NR==2
{
total= $3 + $4 + $5;
avg=total/3;
if (avg >= 89.5)
grade="A";
else if (avg >= 79.5)
grade="B";
else if (avg >= 69.5)
grade="C";
else if (avg >= 59.5)
grade="D";
else
grade="F";

if ($1 != "")
{
printf "%s\t%s\t", $1, $2;
if ($3 == "")
{
	printf "--\t";
	extra = "(missing score)";
}
else
{
	printf "%d\t", $3;
	extra = "\n";
}

if ($4 == "")
{
	printf "--\t";
	extra = "(missing score)\n";
}
else
{
	printf "%d\t", $4;
	extra = "\n";
}

if ($5 == "")
{
	printf "--\t";
	extra = "(missing score)\n";
}
else
{
	printf "%d\t", $5;
	extra = "\n";
}
printf "=> %s %s", grade, extra;
}
}