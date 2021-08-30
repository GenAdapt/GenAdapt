DIR="~/PATH"
LOG="LOG"

# Internet receiver 1
bash -i -l -c 'sshpass -p password  \
ssh -oStrictHostKeyChecking=no genadapt@10.0.0.5 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_1" &'


# Internet receiver 2
bash -i -l -c 'sshpass -p password  \
ssh -oStrictHostKeyChecking=no genadapt@10.0.0.6 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_2" &'


# Internet receiver 3
bash -i -l -c 'sshpass -p password  \
ssh -oStrictHostKeyChecking=no genadapt@10.0.0.11 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_3" &'


# Internet receiver 4
bash -i -l -c 'sshpass -p password  \
ssh -oStrictHostKeyChecking=no genadapt@10.0.0.16 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_4" &'

# Internet receiver 5
bash -i -l -c 'sshpass -p password  \
ssh -oStrictHostKeyChecking=no genadapt@10.0.0.21 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_5" &'

# Internet receiver 6
bash -i -l -c 'sshpass -p password  \
ssh -oStrictHostKeyChecking=no genadapt@10.0.0.26 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_6" &'
