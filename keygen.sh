#!/bin/bash
count=5
umask 077
echo '' > secret.txt
while [ $count -gt 0 ]
do
    (( count-- ))
    echo "[pair $(( count+1 ))]" >> secret.txt
    privatekey=`wg genkey`
    echo "Privatekey =" $privatekey >> secret.txt
    publickey=`echo $privatekey | wg pubkey`
    echo "Pulickey =" $publickey >> secret.txt
    echo -e '\n' >> secret.txt
done
unset privatekey
unset publickey
echo -e "done\n"