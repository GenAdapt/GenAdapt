DIR="~/PATH"
LOG="LOG"

# Internet receiver 1
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.102 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv" &'
