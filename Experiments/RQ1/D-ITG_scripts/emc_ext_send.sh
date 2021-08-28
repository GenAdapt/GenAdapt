DIR="~/PATH"
LOG="LOG"

# Internet sender 1
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.5 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.11 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_1" &'

# Internet sender 2
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.6 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.11 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_2" &'

# Internet sender 3.1
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.11 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.5 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_3.1" &'

# Internet sender 3.2
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.11 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.6 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_3.2" &'

# Internet sender 3.3
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.11 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.16 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_3.3" &'

# Internet sender 3.4
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.11 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.21 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_3.4" &'

# Internet sender 3.5
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.11 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.26 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_3.5" &'

# Internet sender 4
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.16 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.11 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_4" &'

# Internet sender 5
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.21 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.11 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_5" &'

# Internet sender 6
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.26 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGSend -s 0.5 -t 60000 -a 10.0.0.11 -rp 10005 -E 2600 -e 1250 -T UDP -l '$LOG'_6" &'
