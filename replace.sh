MyIP=`ifconfig | grep "broadcast"| head -n1 | cut -d " " -f2`
echo $MyIP

cat targetfile.txt | sed -e "s/$MyIP/" >> result.txt