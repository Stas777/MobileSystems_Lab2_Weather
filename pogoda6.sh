#!/bin/bash -x

while true
do
curl -s 'http://pogoda.by/26850'  > tempHttp
grep -m 1 '�����.*����������� �������' tempHttp > temp
grep -o '����������� ������� .*�C' temp > result
#echo $(sed 's/ . //g' result)
echo $(sed 's/[^\-\+\/.\0-9]//g' result)�C
#rm -r tempHttp temp
sleep $(cat config)
done
