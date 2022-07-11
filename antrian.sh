#!/bin/bash
HOSTNAME="`hostname`"
TOKEN="" #disesuaikan dengan token bot 
CHAT_ID="" #disesuaikan dengan chat id telegram 
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
count=$(/opt/zimbra/libexec/zmqstat |grep -i deferred |cut -d "=" -f2)

if [ "$count" -ge "10" ];then
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="[WARNING QUEUE '"$HOSTNAME"'], Antrian Queue yang tertahan sudah mencapai '$count' !"
fi
