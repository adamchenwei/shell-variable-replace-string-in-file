myip=`ifconfig | grep "broadcast"| head -n1 | cut -d " " -f2`
echo 'ip below'
echo $myip
echo 'ip above'

#mac
sed -i -e "s/proxy_pass http:\/\/myip:9010\/api\/login;/proxy_pass http:\/\/"$myip":9010\/api\/login;/g" targetfile.txt
