MyIP=`ifconfig | grep "broadcast"| head -n1 | cut -d " " -f2`
echo $MyIP

sed -i "s/proxy_pass http:\/\/10.40.4.134:9010\/api\/login;/proxy_pass http:\/\/"$MyIP":9010\/api\/login;/g" targetfile.txt

#cat targetfile.txt | sed -e "s/MyIp/$MyIP" >> result.txt