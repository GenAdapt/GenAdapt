DIR="~/PATH"
LOG="LOG"

# IOC Video
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.1 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_video" &'

# IOC Audio
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.2 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_audio" &'

# IOC Sensor
bash -i -l -c 'sshpass \
ssh -oStrictHostKeyChecking=no sdn@10.0.0.4 \
"cd '$DIR' && \
D-ITG-2.8.1-r1023/bin/ITGRecv -l '$LOG'_sensor" &'
