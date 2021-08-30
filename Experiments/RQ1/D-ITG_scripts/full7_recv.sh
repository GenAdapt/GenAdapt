DIR="~/PATH"
LOG="LOG"

# Internet receiver 1
bash -i -l -c 'sshpass -p password \
ssh -oStrictHostKeyChecking=no genadapt@10.0.0.22 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_1" &'
