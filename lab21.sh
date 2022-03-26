#!/bin/bash
helpp()
{
echo "Удаление всех файлов с указанным суффиксом, к которым не было
обращения указанное количество дней.
Use: ./lab21 <suffix> <days>"
exit 0
}
n="$1"
day="$2"
if [[ "$n" == ? ]] ; then
	helpp
fi

if [[ "$n" == "" ]] ; then
	n="txt"
fi
if [[ "$day" == "" ]] ; then
	day=180
fi
find . -name "*$n" -and -atime "+$day" -exec rm {} \;
