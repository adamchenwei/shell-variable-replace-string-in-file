MyIP=`ifconfig | grep "broadcast"| head -n1 | cut -d " " -f2`
echo $MyIP

cat targetfile.txt | sed -e "s/MyIp/$MyIP" >> result.txt