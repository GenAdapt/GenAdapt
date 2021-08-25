DIR="~/PATH"
LOG="LOG"

# Internet sender 1
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.1 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 30000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_1" &'
# Internet sender 2
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.2 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 30000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_2" &'
# Internet sender 3
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.3 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 30000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_3" &'
# Internet sender 4
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.4 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 30000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_4" &'


sleep 10

# Internet sender 5
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.5 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 20000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_5" &'
# Internet sender 6
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.6 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 20000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_6" &'
# Internet sender 7
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.7 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 20000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_7" &'
# Internet sender 8
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.8 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 20000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_8" &'

sleep 10

# Internet sender 9
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.9 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 10000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_9" &'
# Internet sender 10
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.10 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 10000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_10" &'
# Internet sender 11
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.11 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 10000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_11" &'
# Internet sender 12
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.12 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 10000 -a 10.0.0.22 -rp 10005 -E 2500 -e 1250 -T UDP -l '$LOG'_12" &'

