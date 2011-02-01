#!/bin/sh

SENDDAO=${SENDDAO-./senddao}
PCAP04=../OUTPUTS/senddao-test-04out.pcap

${SENDDAO} --fake -O ${PCAP04} -i wlan0 -v --dagid thisismydicedag2 --sequence 11 --instance 43 2>&1 | 
  tee ../OUTPUTS/senddao-test-04.raw | diff - senddao-test-04.out

tcpdump -t -n -r ${PCAP04} -v -v | tee ../OUTPUTS/senddao-test-04-pcap.txt | diff - senddao-test-04-pcap.txt
