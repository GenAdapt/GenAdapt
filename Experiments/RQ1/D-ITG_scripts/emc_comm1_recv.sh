DIR="~/PATH"
LOG="LOG"

# IOC Video
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.7 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_video" &'

# IOC Audio
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.8 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_audio" &'

# IOC Data
bash -i -l -c 'sshpass  \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.9 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_data" &'
